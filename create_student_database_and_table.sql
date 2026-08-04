-- Create a new database named Student
CREATE DATABASE Student;

-- Display all available databases
SHOW DATABASES;

-- Select the Student database for use
USE Student;

-- Display the currently selected database
SELECT DATABASE();

-- Create the Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique ID for each student
    first_name VARCHAR(50) NOT NULL,             -- Student's first name (required)
    last_name VARCHAR(50),                       -- Student's last name
    gender ENUM('Male', 'Female', 'Other'),      -- Student's gender
    date_of_birth DATE,                          -- Student's date of birth
    email VARCHAR(100) UNIQUE,                   -- Student's email (must be unique)
    phone VARCHAR(15),                           -- Student's phone number
    address VARCHAR(255),                        -- Student's address
    admission_date DATE                          -- Student's admission date
);

-- Display all tables in the current database
SHOW TABLES;

-- Display the structure of the Student table
DESC Student;

-- Display the SQL statement used to create the Student table
SHOW CREATE TABLE Student;

-- Display all records from the Student table
SELECT * FROM Student;









