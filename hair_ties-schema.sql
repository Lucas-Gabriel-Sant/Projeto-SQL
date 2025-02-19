DROP DATABASE IF EXISTS hair_ties;
CREATE DATABASE hair_ties;
USE hair_ties;

CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT,
    category VARCHAR(155) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(155) NOT NULL,
    description VARCHAR(155),
    price_R$ DECIMAL NOT NULL,
    stock INT NOT NULL,
    size VARCHAR (50) NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(category_id) REFERENCES categories (id)
);

CREATE TABLE clients (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    birth DATE,
    email VARCHAR(100) NOT NULL,
    telephone VARCHAR(14),
    last_purchase DATE NOT NULL DEFAULT (CURRENT_DATE),
    PRIMARY KEY (id)
);

CREATE TABLE sales (
	id INT NOT NULL AUTO_INCREMENT,
    client_id INT NOT NULL,
    product_id INT NOT NULL,
    category_id INT NOT NULL,
	date DATE NOT NULL DEFAULT (CURRENT_DATE),
    PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES clients (id),
	FOREIGN KEY (product_id) REFERENCES products (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

ALTER TABLE clients ADD FOREIGN KEY (last_purchase) REFERENCES vendas (date)