# E-Commerce Database Design and Operations

## 📋 Task Description

This project involves designing and implementing a simple e-commerce database system using MySQL. The goal is to understand database normalization, relationships (one-to-many), and basic SQL operations like `CREATE`, `INSERT`, `JOIN`, and `AGGREGATE` functions.

---

## 🛠️ Requirements

1. **Create a database** named `ecommerce`.
2. Create the following **tables**:
   - `customers`
   - `orders`
   - `products`
3. **Insert sample data** into each table.
4. Perform SQL operations based on real-world business requirements.

---

## 🗂️ Table Structure

### 1. `customers`
| Field     | Type         | Description                        |
|-----------|--------------|------------------------------------|
| id        | INT          | Primary key, Auto Increment        |
| name      | VARCHAR(100) | Customer's name                    |
| email     | VARCHAR(100) | Customer's email address           |
| address   | TEXT         | Customer's shipping address        |

### 2. `orders`
| Field        | Type         | Description                         |
|--------------|--------------|-------------------------------------|
| id           | INT          | Primary key, Auto Increment         |
| customer_id  | INT          | Foreign key referencing customers   |
| order_date   | DATE         | Date the order was placed           |
| total_amount | DECIMAL(10,2)| Total amount for the order          |

### 3. `products`
| Field       | Type         | Description                         |
|-------------|--------------|-------------------------------------|
| id          | INT          | Primary key, Auto Increment         |
| name        | VARCHAR(100) | Product's name                      |
| price       | DECIMAL(10,2)| Product price                       |
| description | TEXT         | Product description                 |

---


## 💡 Learning Outcomes

- Understand relational database design.
- Use SQL for CRUD operations.
- Apply `JOIN`, `GROUP BY`, `ORDER BY`, `LIMIT`, and `AGGREGATE` functions.
- Normalize data using proper schema structure.

---

## 📦 Tools Used

- MySQL / MariaDB
- MySQL Workbench / phpMyAdmin (or any SQL GUI)
- Command-line client (optional)

---

## 📁 How to Use

1. Open your MySQL terminal or GUI.
2. Run the SQL scripts in the following order:
   - Create database and tables
   - Insert sample data
   - Execute task queries

---

## 📝 Author

Subramaniyajothi S  

---

