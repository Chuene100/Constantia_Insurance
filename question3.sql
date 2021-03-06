-- Create a database
CREATE DATABASE 'Constantia Insurance Assessment' ;

-- Create a claim table
CREATE TABLE 'CLAIM' (
'claim_number', varchar(10),
'policy_number', int(20),
'date_of_loss', varchar(10),
'claim_date_reported', date

)
-- Insert data into the  claim table
INSERT INTO 'CLAIM' VALUES ('1234/2', '1234', '01/06/2022', '28/05/2022')
INSERT INTO 'CLAIM' VALUES ('1234/1', '1234', '02/06/2022', '29/05/2022')
INSERT INTO 'CLAIM' VALUES ('5634/1', '5634', '03/06/2022', '30/05/2022')


-- Create a policy item table
CREATE TABLE 'POLICY_ITEM' (
'policy_number', varchar(10),
'policy_item_number', int(20),
'section', varchar(10),
'sum_insured', varchar(10)

)
-- Insert data into the policy item table
INSERT INTO 'POLICY_ITEM' VALUES ('1234', '1234T1', 'Motor', '1800000'
INSERT INTO 'POLICY_ITEM' VALUES ('1235', '1235T1', 'Motor', '2000000')
INSERT INTO 'POLICY_ITEM' VALUES ('1236', '1236T1', 'Motor', '1000000')
INSERT INTO 'POLICY_ITEM' VALUES ('1237', '1237T1', 'Motor')
INSERT INTO 'POLICY_ITEM' VALUES ('5634', '5634T1', 'Motor', '1154050')
INSERT INTO 'POLICY_ITEM' VALUES ('5637', '5637T1', 'Motor', '20000000')
INSERT INTO 'POLICY_ITEM' VALUES ('5737', '5737T1', 'Motor', '4607733')
INSERT INTO 'POLICY_ITEM' VALUES ('1234', '1234T2', 'Property', '350037')
INSERT INTO 'POLICY_ITEM' VALUES ('5737', '5737T2', 'Glass', '4500')
INSERT INTO 'POLICY_ITEM' VALUES ('1234', '1234T2', 'Property', '123455')

-- Create policy table
CREATE TABLE 'POLICY' (
'policy_number', varchar(10),
'policy_holder_first_name', int(20),
'policy_holder_last_name', varchar(10),
'policy_inception_date', date

)

-- Insert data into the policy table
INSERT INTO 'POLICY' VALUES ('1234', 'Charles', 'Xavier', '30/07/2021')
INSERT INTO 'POLICY' VALUES ('1235', 'Robert', 'Drake', '30/07/2021')
INSERT INTO 'POLICY' VALUES ('1236', 'Henry', 'McCoy', '31/07/2021')
INSERT INTO 'POLICY' VALUES ('1237', 'Alexnder','Summers', '01/09/2020')
INSERT INTO 'POLICY' VALUES ('5634', 'Jean', 'Greay', '02/10/2020')
INSERT INTO 'POLICY' VALUES ('1236', 'Lorna', 'Dane', '25/12/2020')
INSERT INTO 'POLICY' VALUES ('1236', 'Gabriel', 'Summers', '04/09/2020')



-- Create a SELECT statement to show all policies that were incepted after the 21st of July 2021
SELECT *
FROM policy
WHERE 	policy_inception_date > 21/07/2021


-- Create a VIEW with all claims and corresponding policy numbers and policy holder name
SELECT claim_number, policy_number, policy_holder_first_name
FROM claim, policy_item, policy

-- Create a VIEW with all policyholder names and the sum insured. As per the example below

SELECT policy_holder_first_name, policy_holder_last_name, sum_insured
FROM policy, policy_item