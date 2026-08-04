-- Create a new database named EcommerceDB
CREATE DATABASE EcommerceDB;

-- Select the EcommerceDB database for use
USE EcommerceDB;

-- Create the Customers table to store customer information
CREATE TABLE Customers (
    -- Unique ID for each customer (automatically increments)
    customerId INT PRIMARY KEY AUTO_INCREMENT,

    -- Customer's full name
    name VARCHAR(100),

    -- Customer's email address
    email VARCHAR(100)
);

-- Create the Products table to store product details
CREATE TABLE Products (
    -- Unique ID for each product (automatically increments)
    productId INT PRIMARY KEY AUTO_INCREMENT,

    -- Name of the product
    productName VARCHAR(100),

    -- Price of the product
    price DECIMAL(10,2),

    -- Quantity of the product available in stock
    stock INT
);

-- Create the Orders table to store customer order information
CREATE TABLE Orders (
    -- Unique ID for each order (automatically increments)
    orderId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the customer who placed the order
    customerId INT,

    -- Date on which the order was placed
    orderDate DATE,

    -- Foreign key linking to the Customers table
    FOREIGN KEY (customerId) REFERENCES Customers(customerId)
);

-- Create the OrderItems table to store products included in each order
CREATE TABLE OrderItems (
    -- Unique ID for each order item (automatically increments)
    orderItemId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the related order
    orderId INT,

    -- ID of the product included in the order
    productId INT,

    -- Quantity of the product ordered
    quantity INT,

    -- Foreign key linking to the Orders table
    FOREIGN KEY (orderId) REFERENCES Orders(orderId),

    -- Foreign key linking to the Products table
    FOREIGN KEY (productId) REFERENCES Products(productId)
);

-- Display all records from the Customers table
SELECT * FROM Customers;

-- Display all records from the Products table
SELECT * FROM Products;

-- Display all records from the Orders table
SELECT * FROM Orders;

-- Display all records from the OrderItems table
SELECT * FROM OrderItems;