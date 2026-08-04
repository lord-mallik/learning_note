 -- Create Database
CREATE DATABASE PracticeDB;

-- Select the database
USE PracticeDB;
 
-- 1. Create Employee Table
CREATE TABLE Employee (
    empId INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(100),
    lastName VARCHAR(100)
);

-- Example Data
INSERT INTO Employee(firstName, lastName)
VALUES
('John', 'Doe'),
('Alice', 'Smith');

-- View all tables
SHOW TABLES;
 
-- 2. Drop Employee Table
DROP TABLE Employee;

-- 3. Recreate Employee Table
CREATE TABLE Employee (
    empId INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(100),
    lastName VARCHAR(100)
);

-- Example Data
INSERT INTO Employee(firstName, lastName)
VALUES
('Rahul', 'Sharma'),
('Priya', 'Patel');

-- 4. INT Data Type Example
CREATE TABLE Student(
    studentId INT PRIMARY KEY AUTO_INCREMENT,
    age INT
);
 
-- 5. BIGINT Data Type Example
CREATE TABLE BankAccount (
    accountNumber BIGINT PRIMARY KEY,
    balance BIGINT
);
 
-- 6. FLOAT Data Type Example
CREATE TABLE Product(
    productId INT PRIMARY KEY AUTO_INCREMENT,
    weight FLOAT
);
 
-- 7. DECIMAL Data Type Example
CREATE TABLE Salary(
    employeeId INT PRIMARY KEY AUTO_INCREMENT,
    salary DECIMAL(10,2)
);

-- 8. CHAR Data Type Example
CREATE TABLE Country(
    countryId INT PRIMARY KEY AUTO_INCREMENT,
    countryCode CHAR(2),
    countryName VARCHAR(100)
);

-- 9. VARCHAR Data Type Example
CREATE TABLE Customer(
    customerId INT PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(100)
);

-- 10. TEXT Data Type Example
CREATE TABLE Article(
    articleId INT PRIMARY KEY AUTO_INCREMENT,
    content TEXT
);

-- 11. DATE Data Type Example
CREATE TABLE Holiday(
    holidayId INT PRIMARY KEY AUTO_INCREMENT,
    holidayDate DATE
);

-- 12. DATETIME Data Type Example
CREATE TABLE Meeting(
    meetingId INT PRIMARY KEY AUTO_INCREMENT,
    meetingDateTime DATETIME
);
 
-- 13. TIMESTAMP Data Type Example
CREATE TABLE LoginHistory(
    loginId INT PRIMARY KEY AUTO_INCREMENT,
    loginTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO LoginHistory (loginTime)
VALUES
(DEFAULT),
(DEFAULT),
(DEFAULT);

 
-- 14. Employee Salary Table
CREATE TABLE EmployeeSalary(
    employeeId INT PRIMARY KEY AUTO_INCREMENT,
    employeeName VARCHAR(50),
    salary DECIMAL(10,2)
);
 
-- 15. Orders Table
CREATE TABLE Orders(
    orderId INT PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(50),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- View all tables
SHOW TABLES;
 
-- View data from each table
SELECT * FROM Employee;
SELECT * FROM Student;
SELECT * FROM BankAccount;
SELECT * FROM Product;
SELECT * FROM Salary;
SELECT * FROM Country;
SELECT * FROM Customer;
SELECT * FROM Article;
SELECT * FROM Holiday;
SELECT * FROM Meeting;
SELECT * FROM LoginHistory;
SELECT * FROM EmployeeSalary;
SELECT * FROM Orders;


