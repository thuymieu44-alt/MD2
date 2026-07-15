create database homeworks;
USE homeworks;
CREATE TABLE students(
student_ID INT AUTO_INCREMENT PRIMARY KEY,
full_name varchar(100) NOT NULL,
birthday DATE NOT NULL,
gender ENUM("Nam", "Nữ") NOT NULL
);