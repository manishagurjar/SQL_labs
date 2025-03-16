-- Activity 6th march Lab1 
CREATE DATABASE StudentManagementSystem;
USE StudentManagementSystem;
-- Create the Student Table
CREATE TABLE Student (
    StudentID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PRIMARY KEY (StudentID)
);
-- Insert 5 Records
INSERT INTO Student (FirstName, LastName) VALUES
('John', 'Doe'),
('Jane', 'Smith'),
('Michael', 'Johnson'),
('Emily', 'Davis'),
('James', 'Brown');
SELECT * FROM Student;
-- Alter the Table to Add New Fields
ALTER TABLE Student
ADD COLUMN DateOfBirth DATE,
ADD COLUMN Gender VARCHAR(10),
ADD COLUMN Email VARCHAR(100),
ADD COLUMN Phone VARCHAR(15);

-- Update the Records with Values
UPDATE Student
SET DateOfBirth = '2000-01-15', Gender = 'Male', Email = 'john.doe@example.com', Phone = '123-456-7890'
WHERE StudentID = 1;

UPDATE Student
SET DateOfBirth = '1999-02-20', Gender = 'Female', Email = 'jane.smith@example.com', Phone = '234-567-8901'
WHERE StudentID = 2;

UPDATE Student
SET DateOfBirth = '1998-03-30', Gender = 'Male', Email = 'michael.johnson@example.com', Phone = '345-678-9012'
WHERE StudentID = 3;

UPDATE Student
SET DateOfBirth = '2001-04-10', Gender = 'Female', Email = 'emily.davis@example.com', Phone = '456-789-0123'
WHERE StudentID = 4;

UPDATE Student
SET DateOfBirth = '1997-05-25', Gender = 'Male', Email = 'james.brown@example.com', Phone = '567-890-1234'
WHERE StudentID = 5;

SELECT * FROM Student;

USE StudentManagementSystem;
CREATE TABLE Course (
    CourseID INT NOT NULL AUTO_INCREMENT,
    CourseTitle VARCHAR(100),
    Credits INT,
    PRIMARY KEY (CourseID)
);

-- Verify the Table Creation
DESCRIBE Course;

-- Create the Instructor Table
CREATE TABLE Instructor (
    InstructorID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PRIMARY KEY (InstructorID)
);
DESCRIBE Instructor;

-- Create the Enrollment Table with Foreign Keys
CREATE TABLE Enrollment (
    EnrollmentID INT NOT NULL AUTO_INCREMENT,
    EnrollmentDate DATE,
    StudentID INT,
    CourseID INT,
    InstructorID INT,
    PRIMARY KEY (EnrollmentID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);
-- Verify the Table Creation
DESCRIBE Enrollment;

CREATE TABLE Score (
    ScoreID INT NOT NULL AUTO_INCREMENT,
    CourseID INT,
    StudentID INT,
    DateOfExam DATE,
    CreditObtained INT,
    PRIMARY KEY (ScoreID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

DESCRIBE Score;

-- Create the Feedback Table with Foreign Key
CREATE TABLE Feedback (
    FeedbackID INT NOT NULL AUTO_INCREMENT,
    StudentID INT,
    Date DATE,
    InstructorName VARCHAR(100),
    PRIMARY KEY (FeedbackID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
DESCRIBE Feedback;

 -- Create the Feedback table with foreign key
-- Create the Feedback table with foreign key
CREATE TABLE Feedback (
    FeedbackID INT NOT NULL AUTO_INCREMENT,
    StudentID INT,
    Date DATE,
    Instructor VARCHAR(100),
    PRIMARY KEY (FeedbackID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- Verify the table structure
DESCRIBE Feedback;



