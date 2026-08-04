-- Create a new database named BankDB
CREATE DATABASE BankDB;

-- Select the BankDB database for use
USE BankDB;

-- Create the Customers table to store customer information
CREATE TABLE Customers (
    -- Unique ID for each customer (automatically increments)
    customerId INT PRIMARY KEY AUTO_INCREMENT,

    -- Customer's full name
    name VARCHAR(100),

    -- Customer's address
    address VARCHAR(100)
);

-- Create the Accounts table to store bank account details
CREATE TABLE Accounts (
    -- Unique ID for each account (automatically increments)
    accountId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the customer who owns the account
    customerId INT,

    -- Current account balance
    balance DECIMAL(10,2),

    -- Foreign key linking to the Customers table
    FOREIGN KEY (customerId) REFERENCES Customers(customerId)
);

-- Create the Transactions table to store account transaction records
CREATE TABLE Transactions (
    -- Unique ID for each transaction (automatically increments)
    transactionId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the account associated with the transaction
    accountId INT,

    -- Transaction amount
    account DECIMAL(10,2),

    -- Date of the transaction
    transactionDate DATE,

    -- Foreign key linking to the Accounts table
    FOREIGN KEY (accountId) REFERENCES Accounts(accountId)
);

-- Display all records from the Customers table
SELECT * FROM Customers;

-- Display all records from the Accounts table
SELECT * FROM Accounts;

-- Display all records from the Transactions table
SELECT * FROM Transactions;
