CREATE TABLE customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(255),
customer_email VARCHAR(255)
);
CREATE TABLE orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
order_date DATE 
);
CREATE TABLE order_details (
order_id INT,
FOREIGN KEY (order_id) REFERENCES orders (order_id),
product_id INT,
FOREIGN KEY (product_id) REFERENCES products (product_id),
quantity INT ,
price DOUBLE 
);
-- THEM 2 KHACH HANG MOI ---
INSERT INTO customers (customer_name, customer_email)
VALUES 
('Nguyen Van A', 'nguyenvana@gmail.com'),
('Hoang Thi B', 'hoangthib@gmail.com');
-- liet ke nhung khach hang da co don hang---
SELECT DISTINCT c.customer_id, c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;
-- những  khách hàng chưa từng đặt đơn hàng nào--
SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
-- tổng doanh thu mà mỗi khách hàng mang lại---
SELECT c.customer_id, c.customer_name, SUM(od.quantity * od.price) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name;
-- Xác định khách hàng đã mua sản phẩm có giá cao nhất--
SELECT DISTINCT c.customer_id, c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
WHERE od.price = (
    SELECT MAX(price) FROM order_details
);
