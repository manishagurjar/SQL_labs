create database COLLEGE;

-- I have already student table so i am create students table becouse student table have not student first name and last name
CREATE TABLE students (
    student_id INT PRIMARY KEY,          
    first_name VARCHAR(100),             
    last_name VARCHAR(100),              
    age INT,                             
    email VARCHAR(255)                   
);

-- insert 10 records

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1001, 'Manisha', 'Gurjar', 20, 'manishagurjar@gmail.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1002, 'Radhika', 'Udiya', 23, 'radhikaudiya@gmail.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1003, 'Muskan', 'Khan', 24, 'muskankhan@gmail.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1004, 'Emily', 'Davis', 21, 'emily.davis@example.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1005, 'Shruti', 'kumawat', 30, 'shrutikumawat@gmail.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1006, 'priya', 'patidar', 32, 'priyapatidar@gmail.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1007, 'David', 'Wilson', 24, 'david.wilson@example.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1008, 'Sophia', 'Moore', 19, 'sophia.moore@example.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1009, 'James', 'Taylor', 22, 'james.taylor@example.com');

INSERT INTO students (student_id, first_name, last_name, age, email) 
VALUES (1010, 'priyanshi', 'parmar', 35, 'priyanshiparmar@gmail.com');

select * from students;

SELECT * FROM students ORDER BY last_name ASC;

ALTER TABLE students
ADD COLUMN gender VARCHAR(10);
 
UPDATE students
SET gender = 'Male'
WHERE student_id IN (1007, 1008, 1009);  -- Update IDs for Male students

UPDATE students
SET gender = 'Female'
WHERE student_id IN (1001, 1002, 1003, 1004, 1005,1006,1010);  -- Update IDs for Female students
 
SELECT gender, COUNT(*) AS number_of_students
FROM students GROUP BY gender;
 

