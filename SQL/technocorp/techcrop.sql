CREATE DATABASE techcrop;
USE techcrop;

CREATE TABLE Products (
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR (255) NOT NULL,
category VARCHAR (255) NOT NULL,
price DECIMAL (10,2) NOT NULL,
stock_quantity INT NOT NULL,
discount INT NOT NULL
);

SELECT * FROM Products;

CREATE TABLE Costumers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (255) NOT NULL,
last_name VARCHAR (255) NOT NULL,
email VARCHAR (255) NOT NULL,
phone VARCHAR (255) NOT NULL,
address VARCHAR (255) NOT NULL
);

SELECT * FROM Costumers;

CREATE TABLE Orders (
order_id INT  AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE NOT NULL,
total_amount DECIMAL (10, 2) NOT NULL,
CONSTRAINT FK_CustomerID FOREIGN KEY (customer_id) REFERENCES Costumers(customer_id) ON UPDATE CASCADE ON DELETE SET NULL 
);

SELECT * FROM Orders;

CREATE TABLE OrderDetails (
order_id INT,
product_id INT,
quantity INT NOT NULL,
unit_price DECIMAL (10, 2) NOT NULL,
CONSTRAINT FK_OrderID FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON UPDATE CASCADE ON DELETE SET NULL,
CONSTRAINT FK_ProductID FOREIGN KEY (product_id) REFERENCES Products(product_id) ON UPDATE CASCADE ON DELETE SET NULL 
);

SELECT * FROM OrderDetails;

CREATE TABLE Employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (255) NOT NULL,
last_name VARCHAR (255) NOT NULL,
email VARCHAR (255) NOT NULL,
phone VARCHAR (255) NOT NULL,
hire_date DATE NOT NULL,
department VARCHAR (255) NOT NULL
);

SELECT*FROM Employees;

CREATE TABLE SupportTickets (
customer_id INT,
employee_id INT,
issue VARCHAR (255) NOT NULL,
status ENUM ('resolved', 'open'),
created_at DATETIME,
resolved_at DATETIME,
CONSTRAINT FK_CustomersID FOREIGN KEY (customer_id) REFERENCES Costumers(customer_id) ON UPDATE CASCADE ON DELETE SET NULL,
CONSTRAINT FK_EmployeesID FOREIGN KEY (employee_id) REFERENCES Employees(employee_id) ON UPDATE CASCADE ON DELETE SET NULL 
);

SELECT*FROM SupportTickets;


INSERT INTO Products (product_name, category, price, stock_quantity, discount)
VALUES
('Laptop Pro 15', 'Laptop', 1500.00, 100, 0),
('Smartphone X', 'Smartphone', 800.00, 200, 0),
('Wireless Mouse', 'Accessories', 25.00, 500, 0),
('USB-C Charger', 'Accessories', 20.00, 300, 0),
('Gaming Laptop', 'Laptop', 2000.00, 50, 10),
('Budget Smartphone', 'Smartphone', 300.00, 150, 5),
('Noise Cancelling Headphones', 'Accessories', 150.00, 120, 15),
('Wireless Earphones', 'Accessories', 100.00, 100, 10);

INSERT INTO Costumers (first_name, last_name, email, phone, address)
VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm Street'),
('Jane', 'Smith', 'jane.smith@example.com', '123-456-7891', '456 Oak Street'),
('Emily', 'Johnson', 'emily.johnson@example.com', '123-456-7892', '789 Pine Street'),
('Michael', 'Brown', 'michael.brown@example.com', '123-456-7893', '101 Maple Street'),
('Sarah', 'Davis', 'sarah.davis@example.com', '123-456-7894', '202 Birch Street');

INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES
(1, '2023-07-01', 1525.00),
(2, '2023-07-02', 820.00),
(3, '2023-07-03', 25.00),
(1, '2023-07-04', 2010.00),
(4, '2023-07-05', 300.00),
(2, '2023-07-06', 315.00),
(5, '2023-07-07', 165.00);

INSERT INTO OrderDetails (order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 1500.00),
(1, 3, 1, 25.00),
(2, 2, 1, 800.00),
(2, 4, 1, 20.00),
(3, 3, 1, 25.00),
(4, 5, 1, 2000.00),
(4, 6, 1, 10.00),
(5, 6, 1, 300.00),
(6, 6, 1, 300.00),
(7, 7, 1, 150.00),
(7, 4, 1, 15.00);

INSERT INTO Employees (first_name, last_name, email, phone, hire_date, department)
VALUES
('Alice', 'Williams', 'alice.williams@example.com', '123-456-7895', '2022-01-15', 'Support'),
('Bob', 'Miller', 'bob.miller@example.com', '123-456-7896', '2022-02-20', 'Sales'),
('Charlie', 'Wilson', 'charlie.wilson@example.com', '123-456-7897', '2022-03-25', 'Development'),
('David', 'Moore', 'david.moore@example.com', '123-456-7898', '2022-04-30', 'Support'),
('Eve', 'Taylor', 'eve.taylor@example.com', '123-456-7899', '2022-05-10', 'Sales');

INSERT INTO SupportTickets (customer_id, employee_id, issue, status, created_at, resolved_at)
VALUES
(1, 1, 'Cannot connect to Wi-Fi', 'resolved', '2023-07-01 10:00:00', '2023-07-01 11:00:00'),
(2, 1, 'Screen flickering', 'resolved', '2023-07-02 12:00:00', '2023-07-02 13:00:00'),
(3, 1, 'Battery drains quickly', 'open', '2023-07-03 14:00:00', NULL),
(4, 2, 'Late delivery', 'resolved', '2023-07-04 15:00:00', '2023-07-04 16:00:00'),
(5, 2, 'Damaged product', 'open', '2023-07-05 17:00:00', NULL),
(1, 3, 'Software issue', 'resolved', '2023-07-06 18:00:00', '2023-07-06 19:00:00'),
(2, 3, 'Bluetooth connectivity issue', 'resolved', '2023-07-07 20:00:00', '2023-07-07 21:00:00'),
(5, 4, 'Account issue', 'open', '2023-07-08 22:00:00', NULL),
(3, 4, 'Payment issue', 'resolved', '2023-07-09 23:00:00', '2023-07-09 23:30:00'),
(4, 5, 'Physical damage', 'open', '2023-07-10 08:00:00', NULL),
(4, 1, 'Laptop blue screen', 'resolved', '2024-01-05 10:00:00', '2024-02-05 12:00:00'),
(5, 1, 'Laptop lagging', 'resolved', '2024-01-06 10:00:00', '2024-01-25 12:00:00'),
(3, 1, 'Some part of laptop broken', 'resolved', '2024-02-05 10:00:00', '2024-03-05 12:00:00');

-- no 1
SELECT c.first_name, SUM(o.total_amount) AS total_nominal_pesanan FROM Costumers c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_id, c.first_name ORDER BY total_nominal_pesanan DESC LIMIT 3;

-- no 2
SELECT AVG(total_amount) FROM Orders;

-- no 3
SELECT e.first_name, COUNT(s.customer_id) AS total_tiket FROM Employees e JOIN SupportTickets s ON e.employee_id = s.employee_id WHERE s.status = 'resolved' GROUP BY e. employee_id, e.first_name HAVING COUNT(s.customer_id)  > 4 ORDER by total_tiket DESC; 

-- no 4
SELECT pd.product_name, IFNULL(SUM(od.quantity), 0) AS total_terjual FROM Products pd LEFT JOIN OrderDetails od ON pd.product_id = od.product_id GROUP BY pd.product_id, pd.product_name HAVING total_terjual = 0 ORDER BY total_terjual DESC; 

-- no 5
SELECT SUM(unit_price) AS penjualan_produk FROM OrderDetails;

-- no 6 
SELECT category, AVG(price) AS avg_harga FROM Products GROUP BY category;
SELECT category, AVG(price) AS avg_harga FROM Products GROUP BY category HAVING avg_harga >= 500;

-- no 7 
SELECT DISTINCT c.first_name FROM Costumers c JOIN Orders o ON c.customer_id = o.customer_id WHERE total_amount >= 1000;