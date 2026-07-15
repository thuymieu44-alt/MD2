CREATE TABLE Class (
    class_ID INT PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL UNIQUE,
    teacher_name VARCHAR(100) NOT NULL
);

CREATE TABLE Student (
    student_ID INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    student_email VARCHAR(100) UNIQUE,
    student_age INT CHECK (student_age >= 18),
    student_phone VARCHAR(15) NOT NULL,
    status ENUM('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
    class_ID INT,
    FOREIGN KEY (class_ID) REFERENCES Class(class_ID)
);
