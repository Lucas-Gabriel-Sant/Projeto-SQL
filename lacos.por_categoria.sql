USE lacos;

DROP VIEW IF EXISTS por_categoria;
CREATE VIEW por_categoria AS
SELECT * FROM produtos
ORDER BY categoria_id;