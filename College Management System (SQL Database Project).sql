/*=========================================================
    Project Name : College Management System
    Database     : CollegeDB
    Author       : Yash Chavan
    Date         : 30-10-2026
=========================================================*/


/*=========================================================
    STEP 01 : Create Database
=========================================================*/

CREATE DATABASE CollegeDB;


/*=========================================================
    STEP 02 : Select Database
=========================================================*/

USE CollegeDB;


/*=========================================================
    STEP 03 : Create Departments Table
    Description : Store Department Information
=========================================================*/

CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL,
    HODName VARCHAR(100),
    Location VARCHAR(50)
);


/*=========================================================
    STEP 04 : Create Students Table
    Description : Store Student Information
=========================================================*/

CREATE TABLE Students
(
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(100) NOT NULL,
    Age INT,
    City VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT,

    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);


/*=========================================================
    STEP 05 : Create Courses Table
    Description : Store Course Information
=========================================================*/

CREATE TABLE Courses
(
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    Fees DECIMAL(10,2),
    Duration VARCHAR(50),
    DepartmentID INT,

    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);


/*=========================================================
    STEP 06 : Create Enrollments Table
    Description : Store Student Course Enrollment Details
=========================================================*/

CREATE TABLE Enrollments
(
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,

    FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID),

    FOREIGN KEY (CourseID)
    REFERENCES Courses(CourseID)
);


/*=========================================================
    STEP 07 : Insert Data Into Departments
=========================================================*/

INSERT INTO Departments
(DepartmentName, HODName, Location)
VALUES
('Computer Science', 'Mr. Patil', 'Pune'),
('Information Technology', 'Mr. Sharma', 'Mumbai'),
('Commerce', 'Mrs. Joshi', 'Satara'),
('Management', 'Mr. More', 'Nashik');


/*=========================================================
    STEP 08 : Insert Data Into Students
=========================================================*/

INSERT INTO Students
(StudentName, Age, City, Email, DepartmentID)
VALUES
('Rahul Patil', 22, 'Pune', 'rahul@gmail.com', 1),
('Amit Sharma', 23, 'Mumbai', 'amit@gmail.com', 2),
('Sneha Jadhav', 21, 'Satara', 'sneha@gmail.com', 3),
('Priya More', 22, 'Nashik', 'priya@gmail.com', 4),
('Rohit Deshmukh', 24, 'Pune', 'rohit@gmail.com', 1);


/*=========================================================
    STEP 09 : Insert Data Into Courses
=========================================================*/

INSERT INTO Courses
(CourseName, Fees, Duration, DepartmentID)
VALUES
('Python Programming', 15000, '6 Months', 1),
('Java Programming', 18000, '6 Months', 2),
('Financial Accounting', 12000, '4 Months', 3),
('Business Management', 20000, '1 Year', 4);


/*=========================================================
    STEP 10 : Insert Data Into Enrollments
=========================================================*/

INSERT INTO Enrollments
(StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, '2026-10-01'),
(2, 2, '2026-10-02'),
(3, 3, '2026-10-03'),
(4, 4, '2026-10-04'),
(5, 1, '2026-10-05');


/*=========================================================
    STEP 11 : Display All Tables
=========================================================*/

SHOW TABLES;


/*=========================================================
    STEP 12 : Display All Student Records
=========================================================*/

SELECT * FROM Students;


/*=========================================================
    STEP 13 : Display All Department Records
=========================================================*/

SELECT * FROM Departments;


/*=========================================================
    STEP 14 : Display All Course Records
=========================================================*/

SELECT * FROM Courses;


/*=========================================================
    STEP 15 : Display All Enrollment Records
=========================================================*/

SELECT * FROM Enrollments;


/*=========================================================
    END OF PROJECT
=========================================================*/