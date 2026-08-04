-- Create a new database named StudentDB
CREATE DATABASE StudentDB;

-- Select the StudentDB database for use
USE StudentDB;

-- Display all available databases
SHOW DATABASES;

-- Create the Students table to store student information
CREATE TABLE Students (
    -- Unique ID for each student (automatically increments)
    studentId INT PRIMARY KEY AUTO_INCREMENT,

    -- Student's first name
    firstName VARCHAR(50),

    -- Student's last name
    lastName VARCHAR(50),

    -- Student's email address
    email VARCHAR(100),

    -- Student's phone number
    phone VARCHAR(15),

    -- Student's date of birth
    dob DATE
);

-- Create the Teachers table to store teacher information
CREATE TABLE Teachers (
    -- Unique ID for each teacher (automatically increments)
    teacherId INT PRIMARY KEY AUTO_INCREMENT,

    -- Teacher's full name
    name VARCHAR(100),

    -- Teacher's email address
    email VARCHAR(100)
);

-- Create the Courses table to store course details
CREATE TABLE Courses (
    -- Unique ID for each course (automatically increments)
    courseId INT PRIMARY KEY AUTO_INCREMENT,

    -- Name of the course
    courseName VARCHAR(100),

    -- ID of the teacher assigned to the course
    teacherId INT,

    -- Foreign key linking the course to the Teachers table
    FOREIGN KEY (teacherId) REFERENCES Teachers(teacherId)
);

-- Create the Enrollments table to store student-course enrollments
CREATE TABLE Enrollments (
    -- Unique ID for each enrollment (automatically increments)
    enrollmentId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the enrolled student
    studentId INT,

    -- ID of the enrolled course
    courseId INT,

    -- Date on which the student enrolled in the course
    enrollmentDate DATE,

    -- Foreign key linking to the Students table
    FOREIGN KEY (studentId) REFERENCES Students(studentId),

    -- Foreign key linking to the Courses table
    FOREIGN KEY (courseId) REFERENCES Courses(courseId)
);

-- Display all records from the Students table
SELECT * FROM Students;

-- Display all records from the Teachers table
SELECT * FROM Teachers;

-- Display all records from the Courses table
SELECT * FROM Courses;

-- Display all records from the Enrollments table
SELECT * FROM Enrollments;