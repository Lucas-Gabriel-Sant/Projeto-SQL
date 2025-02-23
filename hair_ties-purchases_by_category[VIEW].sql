USE hair_ties;

DROP VIEW IF EXISTS purchases_by_categories;
CREATE VIEW purchases_by_categories AS
SELECT 
	sales.category_id,
    COUNT(sales.category_id) AS purchases,
    categories.category
FROM sales
INNER JOIN categories ON categories.id = sales.category_id
GROUP BY category_id