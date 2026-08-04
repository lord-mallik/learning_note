-- Create a new database named RestaurantDB
CREATE DATABASE RestaurantDB;

-- Select the RestaurantDB database for use
USE RestaurantDB;

-- Create the Customers table to store customer information
CREATE TABLE Customers (
    -- Unique ID for each customer (automatically increments)
    customerId INT PRIMARY KEY AUTO_INCREMENT,

    -- Customer's full name
    name VARCHAR(100),

    -- Customer's phone number
    phone VARCHAR(15)
);

-- Create the MenuItems table to store restaurant menu items
CREATE TABLE MenuItems (
    -- Unique ID for each menu item (automatically increments)
    itemId INT PRIMARY KEY AUTO_INCREMENT,

    -- Name of the menu item
    itemName VARCHAR(100),

    -- Price of the menu item
    price DECIMAL(10,2)
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

-- Create the OrderDetails table to store items included in each order
CREATE TABLE OrderDetails (
    -- Unique ID for each order detail (automatically increments)
    orderDetailId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the related order
    orderId INT,

    -- ID of the ordered menu item
    itemId INT,

    -- Quantity of the menu item ordered
    quantity INT,

    -- Foreign key linking to the Orders table
    FOREIGN KEY (orderId) REFERENCES Orders(orderId),

    -- Foreign key linking to the MenuItems table
    FOREIGN KEY (itemId) REFERENCES MenuItems(itemId)
);

-- Display all records from the Customers table
SELECT * FROM Customers;

-- Display all records from the MenuItems table
SELECT * FROM MenuItems;

-- Display all records from the Orders table
SELECT * FROM Orders;

-- Display all records from the OrderDetails table
SELECT * FROM OrderDetails;
