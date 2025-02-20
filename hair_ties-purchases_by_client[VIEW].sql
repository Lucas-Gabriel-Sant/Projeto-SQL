USE hair_ties;

SELECT 
	sales.client_id, 
    ( SELECT name
	FROM clients 
	WHERE clients.id = sales.client_id) name,
    ( SELECT surname
	FROM clients 
	WHERE clients.id = sales.client_id) surname,
    COUNT(sales.client_id) AS purchases
FROM sales
INNER JOIN clients ON clients.id = sales.client_id
GROUP BY client_id