SELECT customer_id
FROM Subscription
GROUP BY customer_id
HAVING COUNT(customer_id) > 1;