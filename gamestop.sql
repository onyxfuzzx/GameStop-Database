CREATE DATABASE GameStopStore;
USE GameStopStore;

drop table customers;
drop table products;
drop table employees;
drop table orders;
drop table orderitems;
drop table inventory;

select * from customers; 
select * from products; 
select * from employees; 
select * from orders; 
select * from orderitems; 
select * from inventory; 

-- Table for storing customer details
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Customers (first_name, last_name, email, phone, address) VALUES
('Anaya', 'Kapoor', 'anaya.kapoor@example.com', '7384926501', 'Golden Heights Building, Chatribari Road, Kamrup, Guwahati, Assam, 781001'),
('Arjun', 'Reddy', 'arjun.reddy@example.com', '9450273814', 'Sipcot Industrial Complex, Gummudipoondi, Tamil Nadu, 601201'),
('Kiran', 'Joshi', 'kiran.joshi@example.com', '9160572384', 'Sonkar Bhawan, Near Ashok Kirana Store, Infront Of Mohan Aata Chakki, Lakkhe Nagar, Raipur, Chhattisgarh, 492001'),
('Saanvi', 'Singh', 'saanvi.singh@example.com', '8275039462', 'Ramnager Bagha Ramnager, Kheri District, Uttar Pradesh, 262724'),
('Rohan', 'Chatterjee', 'rohan.chatterjee@example.com', '7593816204', 'Behind Ishvar Bhuvan, Ahmedabad, Gujarat, 380009'),
('Zara', 'Mehta', 'zara.mehta@example.com', '9820475361', 'Rathi English School Hotel Morya, Roha, Maharashtra, 402109'),
('Dev', 'Khan', 'dev.khan@example.com', '8640352971', 'Melur Naithaan Patti, Madurai, Tamil Nadu, 625109'),
('Ishani', 'Nair', 'ishani.nair@example.com', '6925473810', 'Maniyakarapalayam Road, Rakkiyapalayam Privu, Kangayam Road, Tirupur, Tamil Nadu, 641604'),
('Vihaan', 'Deshmukh', 'vihaan.deshmukh@example.com', '7041938256', 'Pachanampatti Ganapathy Super Market Back Side Salem(Dt)Omalur(Tk), Salem, Tamil Nadu, 636455'),
('Tara', 'Malhotra', 'tara.malhotra@example.com', '9374856201', 'Near Hanuman Temple, Panchayat Road At Mantagi Mini Tank, Hangal, Karnataka, 581104'),
('Aryan', 'Chawla', 'aryan.chawla@example.com', '8506172934', 'Kanheli Near Post Office Mean Gali Kanheli, Rohtak, Haryana, 124001'),
('Aditi', 'Patel', 'aditi.patel@example.com', '7862394015', 'Lower Dudhia, P. O. - Jamadar Vitta, Near Prabin Store, Darjiling, West Bengal, 734217'),
('Reyansh', 'Sharma', 'reyansh.sharma@example.com', '9632587410', 'Nandanam House Po Ullody Chukkindakka Manya Kasaragod, Manya Kasaragod Road, Kasaragod, Kerala, 671321'),
('Mira', 'Rao', 'mira.rao@example.com', '6480513729', 'Village Ladyur Post Of Jhupulchowra Dipstick Almira Uttrak, Near Ranikhet Toes, Near Rajkey Inter Collage Salonj, Almora, Uttarakhand, 263637');

select * from customers; 

-- Table for storing product details
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    category VARCHAR(50),
    platform VARCHAR(50),
    release_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Products Table Data (14 rows)
INSERT INTO Products (name, description, price, stock_quantity, category, platform, release_date) VALUES
('PlayStation 5 Console', 'Next-gen gaming console', 499.99, 50, 'Console', 'PlayStation', '2020-11-12'),
('Xbox Series X Console', 'Powerful gaming console', 499.99, 45, 'Console', 'Xbox', '2020-11-10'),
('Nintendo Switch OLED', 'Portable gaming system', 349.99, 60, 'Console', 'Nintendo', '2021-10-08'),
('The Legend of Zelda: Tears of the Kingdom', 'Action-adventure game', 69.99, 100, 'Game', 'Nintendo Switch', '2023-05-12'),
('God of War Ragnarök', 'Action-adventure game', 69.99, 80, 'Game', 'PlayStation 5', '2022-11-09'),
('Halo Infinite', 'First-person shooter game', 59.99, 90, 'Game', 'Xbox Series X', '2021-12-08'),
('DualSense Wireless Controller', 'PlayStation 5 controller', 69.99, 120, 'Accessory', 'PlayStation', '2023-07-27'),
('Xbox Wireless Controller', 'Xbox Series X controller', 59.99, 110, 'Accessory', 'Xbox', '2020-11-24'),
('Nintendo Switch Pro Controller', 'Nintendo Switch controller', 69.99, 100, 'Accessory', 'Nintendo', '2021-10-08'),
('Gaming Headset', 'Noise-canceling gaming headset', 79.99, 70, 'Accessory', 'PC/Console', '2021-08-21'),
('Gaming Mouse', 'High-precision gaming mouse', 49.99, 85, 'Accessory', 'PC','2021-09-15'),
('Gaming Keyboard', 'Mechanical gaming keyboard', 99.99, 65, 'Accessory', 'PC', '2021-07-18'),
('Pokemon Scarlet', 'RPG Game', 59.99, 100, 'Game', 'Nintendo Switch', '2022-11-18'),
('Forza Horizon 5', 'Racing Game', 59.99, 75, 'Game', 'Xbox Series X', '2021-11-09');

select * from products;

-- Table for employees
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    position VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Employees Table Data (14 rows) - Indian Data
INSERT INTO Employees (first_name, last_name, email, phone, position, salary, hire_date) VALUES
('Aishwarya', 'Patel', 'aishwarya.patel@gamestop.in', '+919876543210', 'Manager', 60000.00, '2020-01-01'),
('Rahul', 'Sharma', 'rahul.sharma@gamestop.in', '+919988776655', 'Sales Associate', 35000.00, '2021-03-15'),
('Priya', 'Kumar', 'priya.kumar@gamestop.in', '+918899001122', 'Sales Associate', 38000.00, '2022-05-20'),
('Vikram', 'Singh', 'vikram.singh@gamestop.in', '+917766554433', 'Inventory Manager', 45000.00, '2021-08-10'),
('Sneha', 'Gupta', 'sneha.gupta@gamestop.in', '+916655443322', 'Cashier', 28000.00, '2023-01-05'),
('Arjun', 'Verma', 'arjun.verma@gamestop.in', '+915544332211', 'Sales Associate', 37000.00, '2022-09-22'),
('Deepak', 'Mehta', 'deepak.mehta@gamestop.in', '+914433221100', 'Technician', 42000.00, '2020-11-01'),
('Anjali', 'Joshi', 'anjali.joshi@gamestop.in', '+913322110099', 'Sales Associate', 39000.00, '2023-03-18'),
('Karan', 'Chauhan', 'karan.chauhan@gamestop.in', '+912211009988', 'Cashier', 29000.00, '2021-06-30'),
('Divya', 'Reddy', 'divya.reddy@gamestop.in', '+911100998877', 'Inventory Manager', 48000.00, '2022-12-12'),
('Suresh', 'Nair', 'suresh.nair@gamestop.in', '+919876123456', 'Sales Associate', 40000.00, '2020-09-05'),
('Meena', 'Iyer', 'meena.iyer@gamestop.in', '+918765432198', 'Technician', 43000.00, '2023-04-25'),
('Ganesh', 'Rao', 'ganesh.rao@gamestop.in', '+917654321987', 'Cashier', 30000.00, '2021-02-14'),
('Shreya', 'Das', 'shreya.das@gamestop.in', '+916543219876', 'Sales Associate', 41000.00, '2022-07-08');

select * from employees;

-- Table for orders placed by customers
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Orders Table Data (14 rows)
INSERT INTO Orders (customer_id, employee_id, total_price, status) VALUES
(1, 2, 569.98, 'Delivered'),
(2, 3, 619.98, 'Shipped'),
(3, 4, 349.99, 'Pending'),
(4, 5, 139.98, 'Delivered'),
(5, 6, 69.99, 'Shipped'),
(6, 7, 59.99, 'Pending'),
(7, 8, 69.99, 'Delivered'),
(8, 9, 59.99, 'Shipped'),
(9, 10, 69.99, 'Pending'),
(10, 11, 79.99, 'Delivered'),
(11, 12, 49.99, 'Shipped'),
(12, 13, 99.99, 'Pending'),
(1, 14, 119.98, 'Delivered'),
(2, 1, 119.98, 'Shipped');


select * from orders;

CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

-- Table for order items (each product in an order)
INSERT INTO OrderItems (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 499.99), (1, 7, 1, 69.99),
(2, 2, 1, 499.99), (2, 8, 2, 59.99),
(3, 3, 1, 349.99),
(4, 4, 2, 69.99),
(5, 5, 1, 69.99),
(6, 6, 1, 59.99),
(7, 7, 1, 69.99),
(8, 8, 1, 59.99),
(9, 9, 1, 69.99),
(10, 10, 1, 79.99),
(11, 11, 1, 49.99),
(12, 12, 1, 99.99);



select * from orderitems;

-- Table for tracking inventory movements
CREATE TABLE Inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    employee_id INT,
    change_quantity INT NOT NULL,
    change_reason ENUM('New Stock', 'Sold', 'Returned', 'Damaged'),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);


-- Inventory Table Data (14 rows)

INSERT INTO Inventory (product_id, employee_id, change_quantity, change_reason) VALUES
(1, 2, -2, 'Sold'),
(2, 3, 1, 'Returned'),
(3, 4, -1, 'Sold'),
(4, 5, -1, 'Damaged'),
(5, 6, -3, 'Sold'),
(6, 7, 5, 'New Stock'),
(7, 8, -1, 'Sold'),
(8, 9, -1, 'Returned'),
(9, 10, -2, 'Sold'),
(10, 11, -1, 'Damaged'),
(11, 12, -1, 'Sold'),
(12, 13, 3, 'New Stock'),
(13, 14, -2, 'Sold'),
(14, 1, -1, 'Sold');


select * from inventory;