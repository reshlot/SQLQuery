
----Create the database:
CREATE DATABASE School3;

----Switch to the School database:
USE School3;

----Create the Student table with columns for name, age, and grade:
CREATE TABLE Student (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade INT
);
-------Insert data into the Student table:

INSERT INTO Student (name, age, grade)
VALUES ('John Doe', 18, 12),
       ('Jane Smith', 17, 11),
       ('Michael Johnson', 16, 10);

--Select data from the Student table:
SELECT * FROM Student;

--------Update data in the Student table:
UPDATE Student
SET age = 19
WHERE name = 'John Doe';

SELECT * FROM Student;

----Delete data from the Student table:
DELETE FROM Student
WHERE name = 'Michael Johnson';
SELECT * FROM Student;

---Use filters, sorting, and variables to query data:
SELECT name, age
FROM Student
WHERE grade > 10
ORDER BY age DESC;



--Use filters, sorting, and variables to query data
DECLARE @grade_filter INT;
SET @grade_filter = 10;

SELECT name, age, grade
FROM Student
WHERE grade > @grade_filter
ORDER BY age DESC;



--Using variables in queries
DECLARE @student_name VARCHAR(50)
SET @student_name = 'John Doe'

SELECT *
FROM Student
WHERE name = @student_name