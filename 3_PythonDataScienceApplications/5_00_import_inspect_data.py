import pandas as pd

df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/data_retail.csv", sep=";")

print('Lima data teratas:')
print(df.head())

print('\nInfo dataset:')
print(df.info())
# seriously though, the hard-coded solutions sometimes are so annoying
# had to use single quote on the third line
