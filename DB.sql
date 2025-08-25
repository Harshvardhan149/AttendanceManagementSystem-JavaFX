-- Create the database
CREATE DATABASE attendance;

-- Use the database
USE attendance;

-- Users table: stores login credentials and role priority
CREATE TABLE user(
    id INT PRIMARY KEY,
    username VARCHAR(25) NOT NULL,
    name VARCHAR(25) NOT NULL,
    password VARCHAR(25) NOT NULL,
    prio INT NOT NULL
);

-- Classes table: stores class information
CREATE TABLE class(
    id INT PRIMARY KEY,
    name VARCHAR(25) NOT NULL
);

-- Students table: stores student information
CREATE TABLE students(
    id INT PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    class VARCHAR(10) NOT NULL
);

-- Teachers table: stores teacher information
CREATE TABLE teachers(
    id INT PRIMARY KEY,
    name VARCHAR(25) NOT NULL
);

-- Attendance table: records attendance per student per date
CREATE TABLE attend(
    stid INT NOT NULL,
    dt DATE NOT NULL,
    status VARCHAR(15) NOT NULL,
    class VARCHAR(15) NOT NULL
);

-- Sample user data
INSERT INTO user VALUES(1, 'admin', 'Admin', 'admin', 1);
INSERT INTO user VALUES(2, 'teacher', 'Teachers', 'teacher', 2);
INSERT INTO user VALUES(3, 'student', 'Students', 'student', 3);
