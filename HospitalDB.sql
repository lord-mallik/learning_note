-- Create a new database named HospitalDB
CREATE DATABASE HospitalDB;

-- Select the HospitalDB database for use
USE HospitalDB;

-- Create the Patients table to store patient information
CREATE TABLE Patients (
    -- Unique ID for each patient (automatically increments)
    patientId INT PRIMARY KEY AUTO_INCREMENT,

    -- Patient's full name
    name VARCHAR(100),

    -- Patient's gender
    gender ENUM('Male', 'Female', 'Other'),

    -- Patient's date of birth
    dob DATE,

    -- Patient's contact number
    phone VARCHAR(15)
);

-- Create the Doctors table to store doctor information
CREATE TABLE Doctors (
    -- Unique ID for each doctor (automatically increments)
    doctorId INT PRIMARY KEY AUTO_INCREMENT,

    -- Doctor's full name
    name VARCHAR(100),

    -- Doctor's medical specialization
    specialization VARCHAR(100)
);

-- Create the Appointments table to store appointment details
CREATE TABLE Appointments (
    -- Unique ID for each appointment (automatically increments)
    appointmentId INT PRIMARY KEY AUTO_INCREMENT,

    -- References the patient who booked the appointment
    patientId INT,

    -- References the doctor assigned to the appointment
    doctorId INT,

    -- Date and time of the appointment
    appointmentDate DATETIME,

    -- Foreign key linking to the Patients table
    FOREIGN KEY (patientId) REFERENCES Patients(patientId),

    -- Foreign key linking to the Doctors table
    FOREIGN KEY (doctorId) REFERENCES Doctors(doctorId)
);

-- Display all records from the Patients table
SELECT * FROM Patients;

-- Display all records from the Doctors table
SELECT * FROM Doctors;

-- Display all records from the Appointments table
SELECT * FROM Appointments;
