USE hair_ties;

INSERT INTO categories VALUES 
	(default, 'School'),
    (default, 'Infantile'),
    (default, 'Casual');
    
INSERT INTO products VALUES
	(default, 'Laço JB', 'Themed hair tie with the José Brasilício School logo', 49.99, 15, 'M', 1),
    (default, 'Laço Stich', null, 59.99, 5, 'P', 2),
    (default, 'Laço Butterfly', 'Simple hair tie with butterfly shape', 39.99, 20, 'G', 3),
    (default, 'Laço Moana', 'Hair tie with Moana character accessory in navy blue', 59.99, 15, 'M', 2),
    (default, 'Laço The Powerpuff Girls', null, 49.99, 15, 'P', 2);
    
INSERT INTO clients VALUES
	(default, 'Jéssica', 'Ferreira', '1994-04-04', 'jessica@gmail.com', null, default),
    (default, 'Diogo', 'Silva', '1990-01-06', 'diogo@gmail.com', null, default),
    (default, 'Joca', 'Cunha', '1995-05-05', 'jessica@gmail.com', null, default);

INSERT INTO sales VALUES
	(default, 1, 2, 2, default),
    (default, 3, 3, 3, default),
    (default, 2, 4, 2, default),
    (default, 2, 5, 2, default),
    (default, 3, 3, 3, default);
    
