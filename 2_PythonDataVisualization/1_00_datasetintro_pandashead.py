import pandas as pd
dataset = pd.read_csv('https://storage.googleapis.com/dqlab-datset/retail_raw_reduced.csv')
print('Ukuran dataset: %d baris dan %d kolom\n' % dataset.shape)
print('Lima data teratas:')
print(dataset.head())

# not a pythonic way to print out strings but this is what they teach people
# hard-coded solution, can't change it into string format method...