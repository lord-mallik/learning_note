-- Create a new database named InventoryDB
CREATE DATABASE InventoryDB;

-- Select the InventoryDB database for use
USE InventoryDB;

-- Create the Suppliers table to store supplier information
CREATE TABLE Suppliers (
    -- Unique ID for each supplier (automatically increments)
    supplierId INT PRIMARY KEY AUTO_INCREMENT,

    -- Name of the supplier
    supplierName VARCHAR(100)
);

-- Create the Products table to store product details
CREATE TABLE Products (
    -- Unique ID for each product (automatically increments)
    productId INT PRIMARY KEY AUTO_INCREMENT,

    -- Name of the product
    productName VARCHAR(100),

    -- ID of the supplier providing the product
    supplierId INT,

    -- Quantity of the product available in stock
    stock INT,

    -- Foreign key linking to the Suppliers table
    FOREIGN KEY (supplierId) REFERENCES Suppliers(supplierId)
);

-- Create the Purchases table to store product purchase records
CREATE TABLE Purchases (
    -- Unique ID for each purchase (automatically increments)
    purchaseId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the purchased product
    productId INT,

    -- Quantity of the product purchased
    quantity INT,

    -- Date of the purchase
    purchaseDate DATE,

    -- Foreign key linking to the Products table
    FOREIGN KEY (productId) REFERENCES Products(productId)
);

-- Display all records from the Suppliers table
SELECT * FROM Suppliers;

-- Display all records from the Products table
SELECT * FROM Products;

-- Display all records from the Purchases table
SELECT * FROM Purchases;
