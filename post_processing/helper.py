#!/usr/bin/env python3
# -*- coding: UTF-8 -*-
"""
@ Project : ConvTransformerTS
@ FileName: helper.py
@ IDE     : PyCharm
@ Author  : Jimeng Shi
@ Time    : 1/20/22 15:31
"""

from pandas import DataFrame
from pandas import concat
from scipy.stats import mannwhitneyu, wilcoxon
import numpy as np


def stage_series_to_supervised(data, n_in, K, n_out, dropnan=True):
    """
    Frame a time series as a supervised learning dataset.
    Arguments:
        data: Sequence of observations as a list or NumPy array.
        n_in: Number of lag observations as input (X).
        n_out: Number of observations as output (y).
        dropnan: Boolean whether or not to drop rows with NaN values.
    Returns:
        Pandas DataFrame of series framed for supervised learning.
    """
    n_vars = 1 if type(data) is list else data.shape[1]
    df = DataFrame(data)
    cols, names = list(), list()

    # input sequence (t-n, ... t-1)
    for i in range(n_in+K, K, -1):
        cols.append(df.shift(i))
        names += [('var%d(t-%d)' % (j + 1, i)) for j in range(n_vars)]

    # forecast sequence (t, t+1, ... t+n)
    for i in range(0, n_out):
        cols.append(df.shift(-i))
        if i == 0:
            names += [('var%d(t)' % (j + 1)) for j in range(n_vars)]
        else:
            names += [('var%d(t+%d)' % (j + 1, i)) for j in range(n_vars)]

    # put it all together
    agg = concat(cols, axis=1)
    agg.columns = names

    # drop rows with NaN values
    if dropnan:
        agg.dropna(inplace=True)
    return agg


def series_to_supervised(data, n_in=1, n_out=1, dropnan=True):
    """
    Frame a time series as a supervised learning dataset.
    Arguments:
        data: Sequence of observations as a list or NumPy array.
        n_in: Number of lag observations as input (X).
        n_out: Number of observations as output (y).
        dropnan: Boolean whether or not to drop rows with NaN values.
    Returns:
        Pandas DataFrame of series framed for supervised learning.
    """
    n_vars = 1 if type(data) is list else data.shape[1]
    df = DataFrame(data)
    cols, names = list(), list()

    # input sequence (t-n, ... t-1)
    for i in range(n_in, 0, -1):
        cols.append(df.shift(i))
        names += [('var%d(t-%d)' % (j + 1, i)) for j in range(n_vars)]

    # forecast sequence (t, t+1, ... t+n)
    for i in range(0, n_out):
        cols.append(df.shift(-i))
        if i == 0:
            names += [('var%d(t)' % (j + 1)) for j in range(n_vars)]
        else:
            names += [('var%d(t+%d)' % (j + 1, i)) for j in range(n_vars)]

    # put it all together
    agg = concat(cols, axis=1)
    agg.columns = names

    # drop rows with NaN values
    if dropnan:
        agg.dropna(inplace=True)
    return agg


def p_values(df):
    # Example data: two independent samples
    mlp_values = df.iloc[:, 0].values
    rnn_values = df.iloc[:, 1].values
    lstm_values = df.iloc[:, 2].values
    cnn_values = df.iloc[:, 3].values
    rcnn_values = df.iloc[:, 4].values

    # Perform the Mann-Whitney U test
    stat_rcnn_mlp, p_value_rcnn_mlp = mannwhitneyu(rcnn_values, mlp_values, alternative='two-sided')
    stat_rcnn_rnn, p_value_rcnn_rnn = mannwhitneyu(rcnn_values, rnn_values, alternative='two-sided')
    stat_rcnn_lstm, p_value_rcnn_lstm = mannwhitneyu(rcnn_values, lstm_values, alternative='two-sided')
    stat_rcnn_cnn, p_value_rcnn_cnn = mannwhitneyu(rcnn_values, cnn_values, alternative='two-sided')


    print('rcnn_mlp:', p_value_rcnn_mlp)
    print('rcnn_rnn:', p_value_rcnn_rnn)
    print('rcnn_lstm:', p_value_rcnn_lstm)
    print('rcnn_cnn:', p_value_rcnn_cnn)

    print('Averaging all:', np.mean(df.values))
    
    

def p_values_ras(df):
    # Example data: two independent samples
    mlp_values = df.iloc[:, 0].values
    rnn_values = df.iloc[:, 1].values
    lstm_values = df.iloc[:, 2].values
    cnn_values = df.iloc[:, 3].values
    rcnn_values = df.iloc[:, 4].values
    ras_values = df.iloc[:, 5].values

    # Perform the Mann-Whitney U test
    stat_ras_mlp, p_value_ras_mlp = mannwhitneyu(ras_values, mlp_values, alternative='two-sided')
    stat_ras_rnn, p_value_ras_rnn = mannwhitneyu(ras_values, rnn_values, alternative='two-sided')
    stat_ras_lstm, p_value_ras_lstm = mannwhitneyu(ras_values, lstm_values, alternative='two-sided')
    stat_ras_cnn, p_value_ras_cnn = mannwhitneyu(ras_values, cnn_values, alternative='two-sided')
    stat_ras_rcnn, p_value_ras_rcnn = mannwhitneyu(ras_values, rcnn_values, alternative='two-sided')

    print('ras_mlp:', p_value_ras_mlp)
    print('ras_rnn:', p_value_ras_rnn)
    print('ras_lstm:', p_value_ras_lstm)
    print('ras_cnn:', p_value_ras_cnn)
    print('ras_rcnn:', p_value_ras_rcnn)

    print('Averaging all:', np.mean(df.values))
    
    
    

def p_values_wilcoxon(df):
    # Example data: two independent samples
    mlp_values = df.iloc[:, 0].values
    rnn_values = df.iloc[:, 1].values
    lstm_values = df.iloc[:, 2].values
    cnn_values = df.iloc[:, 3].values
    rcnn_values = df.iloc[:, 4].values

    # Perform the wilcoxon U test
    stat_rcnn_mlp, p_value_rcnn_mlp = wilcoxon(rcnn_values, mlp_values)
    stat_rcnn_rnn, p_value_rcnn_rnn = wilcoxon(rcnn_values, rnn_values)
    stat_rcnn_lstm, p_value_rcnn_lstm = wilcoxon(rcnn_values, lstm_values)
    stat_rcnn_cnn, p_value_rcnn_cnn = wilcoxon(rcnn_values, cnn_values)


    print('rcnn_mlp:', p_value_rcnn_mlp)
    print('rcnn_rnn:', p_value_rcnn_rnn)
    print('rcnn_lstm:', p_value_rcnn_lstm)
    print('rcnn_cnn:', p_value_rcnn_cnn)

    print('Averaging all:', np.mean(df.values))
    
    

def p_values_ras_wilcoxon(df):
    # Example data: two independent samples
    mlp_values = df.iloc[:, 0].values
    rnn_values = df.iloc[:, 1].values
    lstm_values = df.iloc[:, 2].values
    cnn_values = df.iloc[:, 3].values
    rcnn_values = df.iloc[:, 4].values
    ras_values = df.iloc[:, 5].values

    # Perform the wilcoxon test
    stat_ras_mlp, p_value_ras_mlp = wilcoxon(ras_values, mlp_values)
    stat_ras_rnn, p_value_ras_rnn = wilcoxon(ras_values, rnn_values)
    stat_ras_lstm, p_value_ras_lstm = wilcoxon(ras_values, lstm_values)
    stat_ras_cnn, p_value_ras_cnn = wilcoxon(ras_values, cnn_values)
    stat_ras_rcnn, p_value_ras_rcnn = wilcoxon(ras_values, rcnn_values)

    print('ras_mlp:', p_value_ras_mlp)
    print('ras_rnn:', p_value_ras_rnn)
    print('ras_lstm:', p_value_ras_lstm)
    print('ras_cnn:', p_value_ras_cnn)
    print('ras_rcnn:', p_value_ras_rcnn)

    print('Averaging all:', np.mean(df.values))