from pandas.plotting import scatter_matrix
import pandas as pd
import matplotlib.pyplot as plt
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')
plt.clf()

_, ax = plt.subplots(1, 1, figsize=(10,10))
scatter_matrix(raw_data, diagonal='kde', ax=ax)
plt.show()

# 8: UserWarning: To output multiple subplots, the figure containing the passed axes is being cleared
#   scatter_matrix(raw_data, diagonal='kde', ax=ax)