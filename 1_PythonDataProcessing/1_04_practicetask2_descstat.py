import pandas as pd
order_df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/order.csv")
# Quick summary  dari segi kuantitas, harga, freight value, dan weight
# print(order_df.describe(include=["int", "float"]))
# the above line works but the course said wrong
# print(order_df.describe(include=["quantity", "price", "freight_value", "product_weight_gram"]))
# TypeError: data type 'quantity' not understood
print(order_df.describe())
# Median dari total pembelian konsumen per transaksi kolom price
print(order_df.loc[:, 'price'].median())



