USE lab_mysql;

-- Total number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Average car price per manufacturer
SELECT manufacturer, AVG(price) AS avg_price
FROM cars
GROUP BY manufacturer;

-- Number of invoices per salesperson
SELECT s.name, COUNT(i.id) AS total_invoices
FROM salespersons s
JOIN invoices i ON s.id = i.salesperson
GROUP BY s.name;
