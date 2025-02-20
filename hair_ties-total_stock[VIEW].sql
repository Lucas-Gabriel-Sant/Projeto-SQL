USE hair_ties;

DROP VIEW IF EXISTS total_stock;
CREATE VIEW total_stock AS
SELECT SUM(stock) AS stock_total
FROM products
ORDER BY category_id;
