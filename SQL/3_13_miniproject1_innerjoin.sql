--SELECT kode_pelanggan, nama_customer, alamat
--FROM ms_pelanggan
--INNER JOIN tr_penjualan
--ON kode_pelanggan = kode_pelanggan
--WHERE nama_produk = "Kotak Pensil DQLab" OR nama_produk = "Flashdisk DQLab 32 GB" OR nama_produk= "Sticky Notes DQLab 500 sheets";
--ERROR 1052 (23000) at line 2: Column 'kode_pelanggan' in field list is ambiguous

--ON ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan
--ERROR 1052 (23000) at line 2: Column 'kode_pelanggan' in field list is ambiguous

SELECT DISTINCT ms_pelanggan.kode_pelanggan, ms_pelanggan.nama_customer, ms_pelanggan.alamat
FROM ms_pelanggan
INNER JOIN tr_penjualan
ON ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan
WHERE tr_penjualan.nama_produk = "Kotak Pensil DQLab" OR tr_penjualan.nama_produk = "Flashdisk DQLab 32 GB" OR tr_penjualan.nama_produk= "Sticky Notes DQLab 500 sheets";