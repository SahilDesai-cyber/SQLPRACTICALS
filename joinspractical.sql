CREATE DATABASE IF NOT EXISTS college;
USE college;

DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Student;
CREATE TABLE Student (
 id INT PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 age INT,
 city VARCHAR(50),
 marks INT
);
INSERT INTO Student VALUES
(1, 'Jay', 20, 'Surat', 85),
(2, 'Amit', 21, 'Vadodara', 70),
(3, 'Ravi', 22, 'Surat', 90),
(4, 'Neha', 20, 'Ahmedabad', 65),
(5, 'Raj', 21, 'Vadodara', 80);

CREATE TABLE Course (
 course_id INT PRIMARY KEY,
 student_id INT,
 course_name VARCHAR(30),
 FOREIGN KEY (student_id) REFERENCES Student(id)
);
INSERT INTO Course VALUES
(101, 1, 'BCA'), (102, 2, 'BBA'), (103, 3, 'BCA');

SELECT s.name, c.course_name FROM Student s
INNER JOIN Course c ON s.id = c.student_id;
SELECT s.name, c.course_name FROM Student s
LEFT JOIN Course c ON s.id = c.student_id;
SELECT s.name, c.course_name FROM Student s
RIGHT JOIN Course c ON s.id = c.student_id;
SELECT s.name, c.course_name FROM Student s CROSS JOIN Course c;
SELECT a.name, b.name, a.city FROM Student a
JOIN Student b ON a.city = b.city AND a.id < b.id;
