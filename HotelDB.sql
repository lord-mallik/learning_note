-- Create a new database named HotelDB
CREATE DATABASE HotelDB;

-- Select the HotelDB database for use
USE HotelDB;

-- Create the Guests table to store guest information
CREATE TABLE Guests (
    -- Unique ID for each guest (automatically increments)
    guestId INT PRIMARY KEY AUTO_INCREMENT,

    -- Guest's full name
    name VARCHAR(100),

    -- Guest's phone number
    phone VARCHAR(15)
);

-- Create the Rooms table to store hotel room details
CREATE TABLE Rooms (
    -- Unique ID for each room (automatically increments)
    roomId INT PRIMARY KEY AUTO_INCREMENT,

    -- Room number assigned by the hotel
    roomNumber VARCHAR(100),

    -- Type of room (e.g., Single, Double, Deluxe)
    roomType VARCHAR(50),

    -- Price of the room per stay or per night
    price DECIMAL(10,2)
);

-- Create the Bookings table to store room booking information
CREATE TABLE Bookings (
    -- Unique ID for each booking (automatically increments)
    bookingId INT PRIMARY KEY AUTO_INCREMENT,

    -- ID of the guest who made the booking
    guestId INT,

    -- ID of the room that was booked
    roomId INT,

    -- Check-in date for the booking
    checkIn DATE,

    -- Check-out date for the booking
    checkOut DATE,

    -- Foreign key linking to the Guests table
    FOREIGN KEY (guestId) REFERENCES Guests(guestId),

    -- Foreign key linking to the Rooms table
    FOREIGN KEY (roomId) REFERENCES Rooms(roomId)
);

-- Display all records from the Guests table
SELECT * FROM Guests;

-- Display all records from the Rooms table
SELECT * FROM Rooms;

-- Display all records from the Bookings table
SELECT * FROM Bookings;
