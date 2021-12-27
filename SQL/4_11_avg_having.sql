SELECT product_id, AVG(total_price) AS total FROM invoice GROUP BY product_id;
SELECT product_id, AVG(total_price) AS total FROM invoice GROUP BY product_id HAVING AVG(total_price) > 100000;
SELECT product_id, AVG(pinalty) AS total FROM invoice GROUP BY product_id HAVING AVG(pinalty) > 30000;