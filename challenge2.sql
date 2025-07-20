USE lab_mysql;

-- Manufacturers with more than 1 car model in stock
SELECT manufacturer, COUNT(*) AS model_count
FROM cars
GROUP BY manufacturer
HAVING model_count > 1;

-- Customers who made more than one purchase
SELECT customer, COUNT(*) AS total_purchases
FROM invoices
GROUP BY customer
HAVING total_purchases > 1;
