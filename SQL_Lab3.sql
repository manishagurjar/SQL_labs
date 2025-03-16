-- task1

UPDATE Student
SET Email = 'jane_Smith@example.com'
WHERE FirstName = 'Jane' AND LastName = 'Smith';

select * from student;

UPDATE Instructor
SET Email = 'rogerwhite@example.com'
WHERE FirstName = 'Roger' AND LastName = 'White';

select * from Instructor;


-- task 2
DELETE FROM Student WHERE LastName = 'Smith';

-- task 3
SELECT * FROM Student WHERE FirstName LIKE 'J%';

-- Lab2

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT,
    email VARCHAR(255)
);

-- Task 1: Insert Data
INSERT INTO Employee (emp_id, first_name, last_name, age, email)
VALUES (201, 'Radhika', 'Udiya', 23, 'radhikaudiya@gmail.com');

INSERT INTO Employee (emp_id, first_name, last_name, age, email)
VALUES (202, 'Manisha', 'Gurjar', 22, 'manishagurjar@gmail.com');

INSERT INTO Employee (emp_id, first_name, last_name, age, email)
VALUES (203, 'Muskan', 'Khan', 24, 'muskankhan@gmail.com');

INSERT INTO Employee (emp_id, first_name, last_name, age, email)
VALUES (204, 'Shruti', 'kumawat', 30, 'shrutikumawat@gmail.com');

INSERT INTO Employee (emp_id, first_name, last_name, age, email)
VALUES (205, 'priya', 'patidar', 32, 'priyapatidar@gmail.com');

INSERT INTO Employee (emp_id, first_name, last_name, age, email)
VALUES (206, 'priyanshi', 'parmar', 35, 'priyanshiparmar@gmail.com');

select * from Employee;


-- Task 2: Retrieving Data

SELECT first_name, last_name FROM Employee;
 
 -- Task 3: Filtering Data
 
SELECT first_name, last_name, age FROM Employee WHERE age > 30;

-- Task 4: Updating Data
UPDATE Employee SET age = age + 1 WHERE age > 25;






