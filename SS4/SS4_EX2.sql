-- Cap nhat email cho sinh vien chua co email--
SET SQL_SAFE_UPDATES = 0;
UPDATE students
SET email = 'example@gmail.com'
WHERE email IS NULL;
SELECT * FROM students;

-- cap nhat gioi tinh cho sv có ma la 005---
UPDATE students
SET gender = 'Nam'
WHERE student_id = '005';
SELECT * FROM students;

-- xoa SV có ma là 003---
DELETE FROM students
WHERE student_ID = '003';
SELECT * FROM students;