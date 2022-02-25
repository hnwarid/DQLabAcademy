import pandas as pd
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/data_retail.csv', sep=';')
df['First_Transaction'] = pd.to_datetime(df['First_Transaction']/1000, unit='s', origin='1970-01-01')
df['Last_Transaction'] = pd.to_datetime(df['Last_Transaction']/1000, unit='s', origin='1970-01-01')

# Hapus kolom-kolom yang tidak diperlukan
# df = df.drop(['No'], axis=0, inplace=True)
# df = df.drop(['Row_Num'], axis=0, inplace=True)
del df['No']
del df['Row_Num']

# Cetak lima data teratas
print(df)
