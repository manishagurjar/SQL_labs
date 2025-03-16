-- Lab2
create database school;
USE school;
CREATE TABLE student (
    rollno VARCHAR(10),
    name VARCHAR(5),
    class VARCHAR(5)
);
INSERT INTO student (rollno, name, class) VALUES
('R001', 'John', 'A'),
('R002', 'Jane', 'B'),
('R003', 'Sam', 'C'),
('R004', 'Emily', 'A'),
('R005', 'Michael', 'B');
-- Modify the name Column Size
ALTER TABLE student MODIFY name VARCHAR(25);
-- Make rollno the Primary Key
ALTER TABLE student ADD PRIMARY KEY (rollno);

-- Verify the Changes
select * from student;
-- Add the 'age' column (integer) to the 'student' table
ALTER TABLE student ADD COLUMN age INT;

-- Modify the 'class' column to have a size of 10 characters
ALTER TABLE student MODIFY COLUMN class VARCHAR(10);

-- Remove the primary key constraint from the 'student' table
ALTER TABLE student DROP PRIMARY KEY;

-- Change the data type of 'rollno' to INT and set it as AUTO_INCREMENT primary key
ALTER TABLE student MODIFY COLUMN rollno INT AUTO_INCREMENT PRIMARY KEY;

-- Drop the age column from the student table:
ALTER TABLE student DROP COLUMN age;

--  Retrieve all students whose names start with the letter 'J':
SELECT * 
FROM student
WHERE name LIKE 'J%';

-- Display all students who belong to class 'A':
SELECT * 
FROM student
WHERE class = 'A';

-- Fetch the total number of students in each class:
SELECT class, COUNT(*) AS total_students
FROM student
GROUP BY class;

-- Select students whose roll number contains like 'R003' anywhere in it:
SELECT * 
FROM student
WHERE rollno LIKE '___3%';

-- Retrieve distinct class names from the student table:
SELECT DISTINCT class
FROM student;


ALTER TABLE student ADD COLUMN marks INT;

UPDATE student SET marks = 85 WHERE rollno = 'R001';
UPDATE student SET marks = 90 WHERE rollno = 'R002';
UPDATE student SET marks = 78 WHERE rollno = 'R003';
UPDATE student SET marks = 88 WHERE rollno = 'R004';
UPDATE student SET marks = 92 WHERE rollno = 'R005';


-- Retrieve the highest marks obtained by any student:

SELECT MAX(marks) AS highest_marks
FROM student;

-- List the students who scored more than 80 marks:

SELECT 
    Student.StudentID,
    Student.FirstName,
    Student.LastName,
    Marks.Marks
FROM 
    Student
JOIN 
    Marks ON Student.StudentID = Marks.StudentID
WHERE 
    Marks.Marks > 80;
    
-- Find the average marks of students in each class:
SELECT 
    Student.Class,
    AVG(Marks.Marks) AS AverageMarks
FROM 
    Student
JOIN 
    Marks ON Student.StudentID = Marks.StudentID
GROUP BY 
    Student.Class;

-- Retrieve the details of students who do not have marks recorded in the marks table:
SELECT 
    Student.StudentID,
    Student.FirstName,
    Student.LastName
FROM 
    Student
LEFT JOIN 
    Marks ON Student.StudentID = Marks.StudentID
WHERE 
    Marks.Marks IS NULL;
    
-- Subqueries & ORDER BY    
SELECT 
    Student.StudentID,
    Student.FirstName,
    Student.LastName,
    Marks.Marks
FROM 
    Student
JOIN 
    Marks ON Student.StudentID = Marks.StudentID
WHERE 
    Marks.Marks = (
        SELECT MAX(Marks) 
        FROM Marks 
        WHERE Marks < (
            SELECT MAX(Marks) 
            FROM Marks
        )
    );
-- Retrieve the top 5 students based on their marks:
SELECT 
    Student.StudentID,
    Student.FirstName,
    Student.LastName,
    Marks.Marks
FROM 
    Student
JOIN 
    Marks ON Student.StudentID = Marks.StudentID
ORDER BY 
    Marks.Marks DESC
LIMIT 5;

-- Display students sorted by their name in ascending order and class in descending order:
SELECT 
    Student.StudentID,
    Student.FirstName,
    Student.LastName,
    Student.Class,
    Marks.Marks
FROM 
    Student
JOIN 
    Marks ON Student.StudentID = Marks.StudentID
ORDER BY 
    Student.FirstName ASC, 
    Student.Class DESC;


