CREATE TABLE students_constraint(
student_ID INT PRIMARY KEY,
student_name VARCHAR(100) NOT NULL,
student_email VARCHAR(100) UNIQUE,
student_age INT CHECK ( student_age >=18)
);