USE hair_ties;

INSERT INTO categories VALUES 
	(default, 'School'),
    (default, 'Infantile'),
    (default, 'Casual');
    
INSERT INTO products VALUES
	(default, 'Laço JB', 'Themed hair tie with the José Brasilício School logo', 49.99, 15, 'M', 1),
    (default, 'Laço Stich', null, 59.99, 5, 'S', 2),
    (default, 'Laço Butterfly', 'Simple hair tie with butterfly shape', 39.99, 20, 'L', 3),
    (default, 'Laço Moana', 'Hair tie with Moana character accessory in navy blue', 59.99, 15, 'M', 2),
    (default, 'Laço The Powerpuff Girls', null, 49.99, 15, 'S', 2);
    
INSERT INTO clients VALUES
	(default, 'Jéssica', 'Ferreira', '1994-04-04', 'jessica@gmail.com', null, default),
    (default, 'Diogo', 'Silva', '1990-01-06', 'diogo@gmail.com', null, default),
    (default, 'Joca', 'Cunha', '1995-05-05', 'joca@gmail.com', null, default);

INSERT INTO sales VALUES
	(default, 1, 2, 2, '2025-02-02'),
    (default, 3, 3, 3, '2022-06-12'),
    (default, 2, 4, 2, '2021-05-23'),
    (default, 2, 5, 2, default),
    (default, 3, 3, 3, '2024-01-16');

UPDATE clients
JOIN sales
SET last_purchase = (SELECT MAX(sales.date)
FROM sales
WHERE sales.client_id = clients.id
GROUP BY clients.id)
WHERE EXISTS (SELECT 1
FROM sales
WHERE sales.client_id = clients.id);