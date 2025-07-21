CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  price DECIMAL(10, 2),
  description TEXT
);

INSERT INTO products (name, price, description) VALUES
('Product A', 30.00, 'Murukku Combo Pack'),
('Product B', 50.00, 'Sambar Masala Pack'),
('Product C', 40.00, 'Filter Coffee Powder');