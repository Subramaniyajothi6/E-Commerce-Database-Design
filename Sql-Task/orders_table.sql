CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);


INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2025-07-15', 120.00),
(2, '2025-07-10', 80.00),
(3, '2025-07-18', 150.00);