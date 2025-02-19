DROP DATABASE IF EXISTS lacos;
CREATE DATABASE lacos;
USE lacos;

CREATE TABLE categorias (
    id INT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(155) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE produtos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(155) NOT NULL,
    descricao VARCHAR(155),
    preco_R$ DECIMAL NOT NULL,
    estoque INT NOT NULL,
    tamanho VARCHAR (50) NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES categorias (id)
);

CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    nascimento DATE,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(14),
    ultima_compra_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE vendas (
	id INT NOT NULL AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    produto_id INT NOT NULL,
    categoria_id INT NOT NULL,
	data_compra DATE NOT NULL DEFAULT (CURRENT_DATE),
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES clientes (id),
	FOREIGN KEY (produto_id) REFERENCES produtos (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias (id)
);

ALTER TABLE clientes ADD FOREIGN KEY (ultima_compra_id) REFERENCES vendas (id)