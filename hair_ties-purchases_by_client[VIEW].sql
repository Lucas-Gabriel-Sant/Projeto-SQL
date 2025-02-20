USE hair_tiespurchases_by_clients;

DROP VIEW IF EXISTS purchases_by_clients;
CREATE VIEW purchases_by_clients AS
SELECT 
	sales.client_id,
    COUNT(sales.client_id) AS purchases,
    clients.name,
    clients.surname
FROM sales
INNER JOIN clients ON clients.id = sales.client_id
GROUP BY client_id