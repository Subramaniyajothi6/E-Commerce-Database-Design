CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  address VARCHAR(255)
);

INSERT INTO customers (name, email, address) VALUES
('Arun Kumar', 'arun@example.com', '12 Anna Salai'),
('Meenakshi', 'meena@example.com', '45 Kovi Theru'),
('Rajesh', 'rajesh@example.com', '78 Chola Salai');