SELECT kode_pelanggan, nama_pelanggan, alamat 
FROM ms_pelanggan
WHERE kode_pelanggan NOT IN (
	SELECT kode_pelanggan 
	FROM tr_penjualan);