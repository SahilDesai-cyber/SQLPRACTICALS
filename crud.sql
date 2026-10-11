CREATE DATABASE IF NOT EXISTS college;
USE college;
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

INSERT INTO Student VALUES (6, 'Priya', 20, 'Surat', 88);
SELECT * FROM Student;
UPDATE Student SET marks = 92 WHERE id = 6;
DELETE FROM Student WHERE id = 6;
