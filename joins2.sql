create database joins;

use joins;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO customers (customer_id, first_name, last_name, email, city) VALUES
(1, 'John', 'Smith', 'john@example.com', 'New York'),
(2, 'Emily', 'Johnson', 'emily@example.com', 'Los Angeles'),
(3, 'Michael', 'Brown', 'michael@example.com', 'Chicago'),
(4, 'Sarah', 'Davis', 'sarah@example.com', 'Houston');


INSERT INTO orders (order_id, customer_id, product, amount, order_date) VALUES
(106, 3, 'Keyboard', 45.00, '2024-03-01'),
(107, 2, 'USB Cable', 10.00, '2024-03-05'),
(108, 3, 'Webcam', 70.00, '2024-03-10'),
(109, 1, 'Tablet', 320.00, '2024-03-15'),
(110, 4, 'Office Lamp', 35.00, '2024-03-20'),
(111, 2, 'Phone Charger', 18.00, '2024-03-25'),
(112, 3, 'Microphone', 95.00, '2024-04-01'),
(113, 1, 'External Hard Drive', 85.00, '2024-04-05'),
(114, 4, 'Printer', 160.00, '2024-04-10'),
(115, 2, 'Smartwatch', 200.00, '2024-04-12');
