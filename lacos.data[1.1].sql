USE lacos;

INSERT INTO categorias VALUES 
	(default, 'Escolar'),
    (default, 'Infantil'),
    (default, 'Casual');
    
INSERT INTO produtos VALUES
	(default, 'Laço JB', 'Laço temático com a logo da Escola José Brasilício', 49.99, 15, 'M', 1),
    (default, 'Laço Stich', null, 59.99, 5, 'P', 2),
    (default, 'Laço Borboleta', 'Laço simples com formato borboleta', 39.99, 20, 'G', 3),
    (default, 'Laço Moana', 'Laço com apetrecho da personagem Moana na cor azul-marinho', 59.99, 15, 'M', 2),
    (default, 'Laço Meninas Superpoderosas', null, 49.99, 15, 'P', 2);
    
INSERT INTO clientes VALUES
	(default, 'Jéssica', 'Ferreira', '1994-04-04', 'jessica@gmail.com', null, 1),
    (default, 'Diogo', 'Silva', '1990-01-06', 'diogo@gmail.com', null, 4),
    (default, 'Joca', 'Cunha', '1995-05-05', 'jessica@gmail.com', null, 5);

INSERT INTO vendas VALUES
	(default, 1, 2, 2, default),
    (default, 3, 3, 3, default),
    (default, 2, 4, 2, default),
    (default, 2, 5, 2, default),
    (default, 3, 3, 3, default);