-- Lab5
-- Q1
USE StudentManagementSystem;
SELECT Student.rollno, Student.FirstName, Student.LastName, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Student
RIGHT OUTER JOIN Enrollment ON Student.rollno = Enrollment.StudentID;


-- Q2

SELECT 
    Student.StudentID,
    Student.FirstName,
    Student.Email,
    Enrollment.EnrollmentID,
    Enrollment.CourseID
FROM  Student
LEFT JOIN Enrollment 
ON  Student.StudentID = Enrollment.StudentID;





