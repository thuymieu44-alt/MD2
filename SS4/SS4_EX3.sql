-- HIEN THI SV CO NAM SINH TU 2003-2005 ---
SELECT * FROM students
WHERE YEAR(birthday) BETWEEN 2003 AND 2005;

-- hien thi SV co gioi tinh là NAM ---
SELECT * FROM students
WHERE gender IN ('Nam');

-- hien thi SV có maSV 004---
SELECT * FROM students
WHERE student_ID IN ('004');

-- hien thi maSV, ho ten, ngay sinh--
SELECT student_ID, full_name, birthday
FROM students