
CREATE TABLE PRODUTOS2 AS (SELECT * FROM PRODUTOS);

SELECT * FROM PRODUTOS2;

UPDATE PRODUTOS2 SET PRECO_LISTA = 8;

DELETE FROM PRODUTOS2;

COMMIT;

