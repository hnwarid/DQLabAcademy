SELECT trpen.kode_pelanggan, mspel.nama_pelanggan, SUM(trdet.qty * trdet.harga_satuan) total_harga
FROM ms_pelanggan mspel
	INNER JOIN tr_penjualan trpen
	ON mspel.kode_pelanggan = trpen.kode_pelanggan
	INNER JOIN tr_penjualan_detail trdet 
	ON trpen.kode_transaksi = trdet.kode_transaksi
GROUP BY trpen.kode_pelanggan, mspel.nama_pelanggan
ORDER BY total_harga DESC
LIMIT 1;