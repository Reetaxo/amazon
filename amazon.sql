DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;
USE bamazon_DB;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(35),
  department_name VARCHAR(35),
  price  DECIMAL(10,2), --INT DEFAULT 0?--
  stock_quanity INT default 0,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Romper", "Women's Clothing", 87, 10);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Vitamix", "Appliances", 350.00, 7);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Wine Goblets", "Dining", 15, 30);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("iPad Mini", "Electronics", 175.99, 13);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Printer", "Electronics", 87, 10);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Pet Vacuum", "Houseware", 246.50, 300);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Morphe Makeup Brushes", "Cosmetics", 65.98, 1000);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Adidas NMD's", "Footware", 88.00, 10);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Gel UV Light", "Nail Care", 17.99, 50);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Gel Polish", "Nail Care", 30.00, 10);