-- Create a new database named LibraryDB
CREATE DATABASE LibraryDB;

-- Select the LibraryDB database for use
USE LibraryDB;

-- Create the Members table to store library member information
CREATE TABLE Members (
    -- Unique ID for each member (automatically increments)
    memberId INT PRIMARY KEY AUTO_INCREMENT,

    -- Member's full name
    name VARCHAR(100),

    -- Member's email address
    email VARCHAR(100)
);

-- Create the Books table to store book details
CREATE TABLE Books (
    -- Unique ID for each book (automatically increments)
    bookId INT PRIMARY KEY AUTO_INCREMENT,

    -- Title of the book
    title VARCHAR(200),

    -- Author of the book
    author VARCHAR(100),

    -- Category or genre of the book
    category VARCHAR(50)
);

-- Create the Loans table to store book borrowing records
CREATE TABLE Loans (
    -- Unique ID for each loan (automatically increments)
    loanId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the member who borrowed the book
    memberId INT,

    -- ID of the borrowed book
    bookId INT,

    -- Date when the book was issued
    issueDate DATE,

    -- Date when the book was returned
    returnDate DATE,

    -- Foreign key linking to the Members table
    FOREIGN KEY (memberId) REFERENCES Members(memberId),

    -- Foreign key linking to the Books table
    FOREIGN KEY (bookId) REFERENCES Books(bookId)
);

-- Display all records from the Members table
SELECT * FROM Members;

-- Display all records from the Books table
SELECT * FROM Books;

-- Display all records from the Loans table
SELECT * FROM Loans;
