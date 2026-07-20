-- Them cot email--- 
ALTER TABLE students 
ADD COLUMN email VARCHAR(100);
-- thêm 5 SV--
INSERT INTO students(full_name, birthday, gender, email)
VALUES
	('Nguyen Van A', '1998-03-01', 'Nam', 'nguyenvana123@gmail.com'),
	('Nguyen B', '1999-05-02', 'Nam', NULL),
	('Hoang Thi C', '1999-01-12', 'Nữ', NULL),
	('Tran Van D', '1997-12-20', 'Nam', 'tranvand211@gmail.com'),
	('Phan Thi A', '1998-08-15', 'Nữ', 'phanthia321@gmail.com');
    
    -- Hien thi toan bo danh sach---
    SELECT * FROM students;
    
    -- Hien thi cac cot: ID, ten, email---
    SELECT student_ID, full_name, email FROM students;