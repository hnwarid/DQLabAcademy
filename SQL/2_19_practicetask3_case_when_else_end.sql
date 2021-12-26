SELECT MONTH(order_date) AS order_month, SUM(item_price) AS total_price,
CASE
    WHEN SUM(item_price) >= 30000000000 THEN 'Target Achieved'
    WHEN SUM(item_price) <= 25000000000 THEN 'Less Performed'
    ELSE 'Follow Up'
END as remark
FROM sales_retail_2019
GROUP BY order_month;