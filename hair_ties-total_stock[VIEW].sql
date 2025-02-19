USE lacos;

DROP VIEW IF EXISTS total_estoque;
CREATE VIEW total_estoque AS
SELECT SUM(estoque) AS estoque_total
FROM produtos
ORDER BY categoria_id;
