CREATE TABLE students_view(
id INT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
birtday date not null,
class VARCHAR(100) NOT NULL,
address VARCHAR(100) 
);

 CREATE VIEW v_student_basic AS
 SELECT id, full_name, class
 FROM students_view;