USE homeworks;

CREATE TABLE students_sp (
id INT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
class VARCHAR(100) NOT NULL
);

DELIMITER //
CREATE PROCEDURE sp_get_all_students()
BEGIN
    SELECT id, full_name, class
    FROM students_sp;
END //
DELIMITER ;

CALL sp_get_all_students ();