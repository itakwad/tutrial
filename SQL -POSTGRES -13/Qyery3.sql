SELECT
    customers.name AS customer_name,
    orders.id AS order_id,
    orders.order_date
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

SELECT
    customers.name AS customer_name,
    orders.id AS order_id,
    orders.order_date
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;


SELECT
    customers.name AS customer_name,
    orders.id AS order_id,
    orders.order_date
FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id;





