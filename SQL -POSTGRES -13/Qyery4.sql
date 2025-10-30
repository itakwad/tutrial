SELECT
    orders.id AS order_id,
    customers.name AS customer_name,
    SUM(order_items.quantity * products.price) AS invoice_total
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
INNER JOIN order_items ON orders.id = order_items.order_id
INNER JOIN products ON order_items.product_id = products.id
GROUP BY orders.id, customers.name
ORDER BY orders.id;
