--Sekarang untuk lebih mengerti tentang penggunaan Having, mari kita coba selesaikan soal berikut.
--
--Lakukan query untuk dapat mengeluarkan product_id, rata-rata nilai pinalty dan jumlah customer_id yang di group by berdasarkan product_id
--yang memiliki jumlah customer_id diatas nilai 20.
--
--Hasil yang diharapkan akan seperti dibawah ini:
--
--+------------+--------------------+-------+
--| product_id | AVG(pinalty)       | total |
--+------------+--------------------+-------+
--|      10002 | 26136.363636363636 |    86 |
--|      10003 |              31500 |    51 |
--|      10004 |              52000 |    34 |
--+------------+--------------------+-------+
--

--SELECT
--	product_id,
--	AVG(pinalty),
--	COUNT(customer_id) AS total
--FROM customer
--WHERE customer_id IN
--	(SELECT
--		customer_id
--	 FROM customer
--	 GROUP BY product_id
--	 HAVING COUNT(customer_id) > 20
--ORDER BY product_id ASC;

--SELECT
--	product_id,
--	AVG(pinalty),
--	COUNT(customer_id) AS total
--FROM invoice
--WHERE customer_id IN
--	(SELECT
--		customer_id
--	 FROM customer
--	 GROUP BY product_id
--	 HAVING COUNT(customer_id) > 20
--ORDER BY product_id ASC;

SELECT
	product_id,
	AVG(pinalty),
	COUNT(customer_id) AS total
FROM invoice
GROUP BY product_id
HAVING COUNT(customer_id) > 20
ORDER BY product_id ASC;