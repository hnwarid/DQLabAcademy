import csv

# tentukan lokasi file, nama file, dan inisialisasi csv
f = open('penduduk_gender_head.csv', 'r') #file downloaded from the link in the previous file 0_20_readcsv.py-
reader = csv.reader(f)

# membaca baris per baris
for row in reader:
     print (row)

# menutup file csv
f.close()