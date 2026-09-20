CREATE TABLE students (
    name VARCHAR(50),
    maths INT,
    science INT,
    english INT,
    attendance INT
);

INSERT INTO students VALUES
('Arun',78,82,75,90),
('Ravi',65,70,68,80),
('Priya',92,88,95,96),
('Kavin',55,60,58,72),
('Divya',85,79,88,91);

-- View all students
SELECT * FROM students;

-- Average marks
SELECT name,
       ROUND((maths + science + english) / 3.0, 2) AS average_marks
FROM students;

-- Highest average
SELECT name,
       ROUND((maths + science + english) / 3.0, 2) AS average_marks
FROM students
ORDER BY average_marks DESC
LIMIT 1;

-- Students with attendance above 90
SELECT * FROM students
WHERE attendance > 90;
