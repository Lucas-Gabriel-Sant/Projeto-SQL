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
    categoria_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES categorias (id)
);