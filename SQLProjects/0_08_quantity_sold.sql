SELECT trdet.kode_produk, prod.nama_produk, SUM(trdet.qty) as total_qty
FROM tr_penjualan_detail AS trdet
	INNER JOIN ms_produk prod
	ON trdet.kode_produk = prod.kode_produk
GROUP BY trdet.kode_produk, prod.nama_produk
	HAVING SUM(trdet.qty) > 2;
/* 
ERROR 1140 (42000) at line 2: In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'dqlab_mart_basic.trdet.kode_produk'; this is incompatible with sql_mode=only_full_group_by
*/
/*
ERROR 1055 (42000) at line 2: Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column 'dqlab_mart_basic.trdet.qty' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
*/