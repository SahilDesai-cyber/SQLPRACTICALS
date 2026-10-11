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

SELECT * FROM Student WHERE marks > 75 AND city = 'Surat';
SELECT * FROM Student WHERE city = 'Surat' OR age = 21;
SELECT * FROM Student WHERE marks BETWEEN 70 AND 90;
SELECT * FROM Student WHERE city IN ('Surat', 'Vadodara');
SELECT * FROM Student WHERE name LIKE 'R%';
