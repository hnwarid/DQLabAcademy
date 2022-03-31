SELECT nama_pelanggan
FROM ms_pelanggan
WHERE LENGTH(nama_pelanggan) IN( 
	(SELECT MAX(LENGTH(nama_pelanggan))
	  from ms_pelanggan), 
	(SELECT MIN(LENGTH(nama_pelanggan))
	FROM ms_pelanggan)
	)
ORDER BY LENGTH(nama_pelanggan) DESC;