USE homeworks;
CREATE TABLE products(
product_ID INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
product_price DECIMAL(10,0) NOT NULL,
product_quantity INT NOT NULL
);