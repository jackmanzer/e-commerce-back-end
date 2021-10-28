-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  category_name VARCHAR(30) NOT NULL
);

CREATE TABLE product (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(30) NOT NULL,
  price DECIMAL(10, 2) NOT NULL, 
  stock INT NOT NULL
  category_id INT 
  FOREIGN KEY (category_id)
  REFERENCES departments(id)
  ON DELETE SET NULL
);

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  manager_id INT, 
  roles_id INT,
  FOREIGN KEY (roles_id)
  REFERENCES roles(id)
  ON DELETE SET NULL
);




