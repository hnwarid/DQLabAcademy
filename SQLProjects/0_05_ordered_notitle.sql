SELECT nama_pelanggan
FROM ms_pelanggan
ORDER BY 
	CASE WHEN LEFT(nama_pelanggan, 3) = 'Ir.'
	THEN SUBSTRING(nama_pelanggan, 5, 50)
	ELSE nama_pelanggan END
	ASC;