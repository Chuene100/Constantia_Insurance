# import libraries
import numpy as np
import pandas as pd

# Read in the data
claim_data = pd.read_excel('CLAIM.xlsx')
policy_item_data = pd.read_excel('POLICY_ITEM.xlsx')
policy_data = pd.read_excel('POLICY.xlsx')

def average_sum_insured(sum_insured):
    """ Calculates the average of sum_insured
    Args: array
    Returns: int
    """
    n = len(sum_insured)
    return sum_insured/n

#Print the average sum insured
print(average_sum_insured(policy_item_data.sum_insured))