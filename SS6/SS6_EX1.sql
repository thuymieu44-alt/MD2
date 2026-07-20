CREATE TABLE categories(
cate_id INT AUTO_INCREMENT PRIMARY KEY,
cate_name VARCHAR(255));

CREATE TABLE products(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
product_price DECIMAL(10,0) NOT NULL,
cate_id  INT,
FOREIGN KEY ( cate_id) REFERENCES categories(cate_id)
);

INSERT INTO categories (cate_name)
VALUES ('Điện tử'), ('Phụ kiện');

-- them 3 sp vao bang products---
INSERT INTO products (product_name,product_price,cate_id)
VALUES
('Laptop Dell', 1500.00, 1),
('Chuột máy tính', 55.50, 2),
('RedmiNote11S ', 75.00, 1);

-- Cap nhat gia ---
UPDATE products
SET product_price = 30.50
WHERE product_id = '5';

-- xóa một sản phẩm---
DELETE FROM products
WHERE product_id='3';

-- hien thi tat ca theo gia giam dan---
SELECT * FROM products
ORDER BY product_price DESC;

-- thong ke so luong san pham theo danh muc--
SELECT c.cate_name AS category, COUNT(p.product_id) AS total_products
FROM categories c
LEFT JOIN products p ON c.cate_id= p.cate_id
GROUP BY c.cate_name;
