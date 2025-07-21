--  1. Retrieve all customers who have placed an order in the last 30 days:

SELECT DISTINCT customers.name
FROM customers
JOIN orders ON customers.id = orders.customer_id
WHERE orders.order_date >= CURDATE() - INTERVAL 30 DAY;

--  2. Get the total amount of all orders placed by each customer:

SELECT customers.name, SUM(orders.total_amount) AS total_spent
FROM customers
JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id;

--  3. Update the price of Product C to 45.00:

UPDATE products
SET price = 45.00
WHERE name = 'Product C';

--  4. Add a new column discount to the products table:

ALTER TABLE products
ADD COLUMN discount DECIMAL(5,2);

--  5. Retrieve the top 3 products with the highest price:

SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 3;

--  6. Get the names of customers who have ordered Product A:

SELECT DISTINCT customers.name
FROM customers
JOIN orders ON customers.id = orders.customer_id
JOIN order_items ON orders.id = order_items.order_id
JOIN products ON order_items.product_id = products.id
WHERE products.name = 'Product A';

--  7. Join the orders and customers tables to retrieve the customer's name and order date for each order:

SELECT customers.name, orders.order_date
FROM customers
JOIN orders ON customers.id = orders.customer_id;

--  8. Retrieve the orders with a total amount greater than 150.00:

SELECT *
FROM orders
WHERE total_amount > 150.00;

--  9. Normalize the database by creating a separate table for order items and updating the orders table to reference the order_items table:

CREATE TABLE order_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

--  10. Retrieve the average total of all orders:

SELECT AVG(total_amount) AS average_order_total
FROM orders;