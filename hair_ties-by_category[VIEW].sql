USE hair_ties;

DROP VIEW IF EXISTS by_category;
CREATE VIEW by_category AS
SELECT * FROM products
ORDER BY category_id;
