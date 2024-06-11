#!/usr/bin/env python3
# -*- coding: UTF-8 -*-
"""
@ Project : ConvTransformerTS
@ FileName: helper.py
@ IDE     : PyCharm
@ Author  : Jimeng Shi
@ Time    : 5/20/24 15:39
"""


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.metrics import mean_absolute_error 
from sklearn.metrics import mean_squared_error
from numpy import array
from permetrics.regression import RegressionMetric


def mae(y_true, predictions):
    """
    Calculate MAE.
    """
    return mean_absolute_error(y_true, predictions)



def rmse(predictions, targets):
    """
    Calculate RMSE.
    """
    return np.sqrt(mean_squared_error(predictions, targets))
    
        

def nse(observed, modeled):
    """
    Calculate the Nash-Sutcliffe model efficiency coefficient (NSE) for each column.

    Parameters:
    observed (ndarray): 2D array of observed discharge values with shape (1000, 96).
    modeled (ndarray): 2D array of modeled discharge values with shape (1000, 96).

    Returns:
    ndarray: Array of NSE values for each column. 
    NSE ranges between -inf and 1, with a value of 1 indicating perfect agreement between the observed and simulated streamflow
    """
    observed = np.array(observed)
    modeled = np.array(modeled)
    
    nse_values = np.zeros(observed.shape[1])
    
    for i in range(observed.shape[1]):
        numerator = np.sum((observed[:, i] - modeled[:, i]) ** 2)
        denominator = np.sum((observed[:, i] - np.mean(observed[:, i])) ** 2)
        nse_values[i] = 1 - (numerator / denominator)
    
    return np.mean(nse_values)   # Mean values over columns



def kge(observed, modeled):
    """
    Calculate the Kling-Gupta Efficiency (KGE) for each column.

    Parameters:
    observed (ndarray): 2D array of observed discharge values with shape (1000, 96).
    modeled (ndarray): 2D array of modeled discharge values with shape (1000, 96).

    Returns:
    ndarray: Array of KGE values for each column. 
    Best possible score is 1, bigger value is better. Range = (-inf, 1]
    """
    observed = np.array(observed)
    modeled = np.array(modeled)
    
    kge_values = np.zeros(observed.shape[1])
    
    for i in range(observed.shape[1]):
        evaluator = RegressionMetric(observed[:, i], modeled[:, i])
        each_col_kge = evaluator.kling_gupta_efficiency()
        
        kge_values[i] = each_col_kge
    
    return np.mean(kge_values)   # Mean values over columns