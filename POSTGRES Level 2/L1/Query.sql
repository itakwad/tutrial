SELECT customer_id, company_name, city
FROM customers
WHERE city = (
    SELECT city
    FROM suppliers
    WHERE company_name = 'Exotic Liquids'
);

SELECT product_name, unit_price
FROM products
WHERE unit_price > (
    SELECT AVG(unit_price)
    FROM products
);

SELECT order_id, customer_id, order_date
FROM orders
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE city IN ('London', 'Madrid')
);

SELECT product_name, unit_price
FROM products
WHERE unit_price > ALL (
    SELECT unit_price
    FROM products
    WHERE supplier_id = (
        SELECT supplier_id
        FROM suppliers
        WHERE company_name = 'Tokyo Traders'
    )
);

SELECT company_name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
    AND o.order_date > '1997-12-31'
);

SELECT p1.product_id, p1.product_name, p1.category_id, p1.units_in_stock
FROM products p1
WHERE p1.units_in_stock = (
    SELECT MAX(p2.units_in_stock)
    FROM products p2
    WHERE p2.category_id = p1.category_id
);


-- لكل موظف، أظهر إجمالي مبيعاته مقارنة بالمتوسط
SELECT e.first_name, e.last_name,
       (SELECT SUM(od.unit_price * od.quantity * (1 - od.discount))
        FROM orders o JOIN order_details od ON o.order_id = od.order_id
        WHERE o.employee_id = e.employee_id) AS employee_sales,
       (SELECT AVG(total) FROM (
           SELECT SUM(od2.unit_price * od2.quantity * (1 - od2.discount)) AS total
           FROM orders o2 JOIN order_details od2 ON o2.order_id = od2.order_id
           GROUP BY o2.employee_id
        ) avg_sub) AS avg_sales
FROM employees e ORDER by employee_sales DESC limit 3;
