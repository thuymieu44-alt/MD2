ALTER TABLE students 
ADD COLUMN  score DECIMAL(4,1);

-- Xoa du lieu trong bang---
TRUNCATE TABLE students;

INSERT INTO students(full_name, birthday, gender, email, score)
VALUES
	('Nguyen Van A', '1998-03-01', 'Nam', 'nguyenvana123@gmail.com', '8'),
	('Nguyen B', '1999-05-02', 'Nam', NULL, '7'),
	('Hoang Thi C', '1999-01-12', 'Nữ', NULL, '7.25'),
	('Tran Van D', '1997-12-20', 'Nam', 'tranvand211@gmail.com', '9'),
	('Phan Thi A', '1998-08-15', 'Nữ', 'phanthia321@gmail.com', '6.75');
    
    -- Hien thi ID, ho ten viet hoa---
SELECT student_ID, UPPER (full_name) AS full_name_upper
FROM students;

-- Hien thi ho ten, so tuoi---
SELECT full_name,  
       YEAR(CURDATE()) - YEAR(birthday) 
       - (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(birthday, '%m%d')) AS tuoi
FROM students;

-- Hien thi diem (lam tron 1 chu so thap phan)
SELECT full_name, ROUND(score, 1) AS diem_lam_tron
FROM students;

-- Hien thi tong so sinh vien, diem cao nhat, diem thap nhat
SELECT COUNT(*) AS tong_so_SV,
	MAX(score) AS diem_cao_nhat,
    MIN(score) AS diem_thap_nhat
FROM students;
