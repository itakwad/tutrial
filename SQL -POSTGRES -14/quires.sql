-- أكثر منتج مبيعًا حسب الكمية
SELECT
  p.id,
  p.name,
  SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.id
GROUP BY p.id, p.name
ORDER BY total_quantity_sold DESC
LIMIT 10;



-- العملاء الأعلى إنفاقًا (من order_items)
SELECT
  c.id,
  c.name,
  SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
JOIN orders o ON o.customer_id = c.id
JOIN order_items oi ON oi.order_id = o.id
GROUP BY c.id, c.name
ORDER BY total_spent DESC
LIMIT 10;


-- تقرير مبيعات لكل عميل: إجمالي، عدد الطلبات، ومتوسط قيمة الطلب
SELECT
  c.id,
  c.name,
  COUNT(DISTINCT o.id) AS orders_count,
  SUM(oi.quantity * oi.unit_price) AS total_spent,
  SUM(oi.quantity * oi.unit_price) / NULLIF(COUNT(DISTINCT o.id), 0) AS avg_order_value
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
LEFT JOIN order_items oi ON oi.order_id = o.id
GROUP BY c.id, c.name
ORDER BY total_spent DESC;


-- عدد الطلبات لكل شهر
SELECT
  date_trunc('month', o.order_date) AS month,
  COUNT(*) AS orders_count
FROM orders o
GROUP BY month
ORDER BY month;




-- أعلى 5 منتجات من حيث الإيراد
SELECT
  p.id,
  p.name,
  SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p ON p.id = oi.product_id
GROUP BY p.id, p.name
ORDER BY revenue DESC
LIMIT 5;
