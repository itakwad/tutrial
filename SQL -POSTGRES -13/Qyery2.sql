INSERT INTO customers (name, city)
VALUES
('Ahmed', 'Cairo'),
('Mona', 'Alexandria'),
('Omar', 'Aswan'),
('Sara', 'Giza');

INSERT INTO products (name, price)
VALUES
('Laptop', 15000),
('Mouse', 250),
('Keyboard', 500),
('Monitor', 3000);

INSERT INTO orders (customer_id, order_date)
VALUES
(1, '2024-10-01'),
(1, '2024-10-05'),
(2, '2024-10-07'),
(4, '2024-10-10');

INSERT INTO order_items (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 1, 1),
(3, 4, 1),
(4, 2, 3);
