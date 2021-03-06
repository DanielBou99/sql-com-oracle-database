-- CRIAR TABELA TB_CLIENTES
CREATE TABLE TB_CLIENTES 
(
    CPF VARCHAR(11),
    NOME VARCHAR(100),
    ENDERECO1 VARCHAR(150),
    ENDERECO2 VARCHAR(150),
    BAIRRO VARCHAR(50),
    CIDADE VARCHAR(50),
    ESTADO VARCHAR(2),
    CEP VARCHAR(8),
    IDADE INT,
    SEXO VARCHAR(1),
    LIMITE_CREDITO FLOAT,
    VOLUME_COMPRA FLOAT,
    PRIMEIRA_COMPRA NUMBER(1)
);
-- SETAR UM CAMPO COMO PRIM?RIO
ALTER TABLE TB_CLIENTES 
ADD CONSTRAINT PK_TB_CLIENTES
PRIMARY KEY (CPF);
-- ADICIONAR UMA NOVA COLUNA
ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;

-- INSERIR DADOS NA TABELA
INSERT INTO TB_CLIENTES 
(CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,IDADE,SEXO,
LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA,DATA_NASCIMENTO)
VALUES
('00388934505','JO?O DA SILVA','RUA PROJETADA A N?MERO 10',NULL,'VILA ROMAN','TR?S RIOS',
'RJ','2222222',53,'M',20000.00,2000.00,0,TO_DATE('12/10/1965','DD/MM/YYYY'));

-- CRIAR TABELA TB_PRODUTOS
CREATE TABLE TB_PRODUTOS
(
	PRODUTO VARCHAR(20),
	NOME VARCHAR(150),
	EMBALAGEM VARCHAR(50),
	TAMANHO VARCHAR(50),
	SABOR VARCHAR(50),
	PRECO_LISTA FLOAT
);
-- SETAR UM CAMPO COMO PRIM?RIO
ALTER TABLE TB_PRODUTOS 
ADD CONSTRAINT PK_TB_PRODUTOS
PRIMARY KEY (PRODUTO);

-- APAGAR TABELA
DROP TABLE TB_CLIENTES2;

-- INSERIR DADOS NA TABELA
INSERT INTO TB_PRODUTOS 
	(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
	('1040107', 'Light - 350 ml - Mel?ncia', 'Lata', '350ml', 'Mel?ncia', 4.56);
INSERT INTO TB_PRODUTOS 
	(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
	('1037797', 'Clean - 2 Litros - Laranja', 'Pet', '2 litros', 'Laranja', 16.01);
INSERT INTO TB_PRODUTOS 
	(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
	('1000889', 'Sabor da Montanha - 700ml - Uva', 'Garrafa', '700ml', 'Uva', 6.31);
INSERT INTO TB_PRODUTOS 
	(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
	('1004327', 'Videira do Campo - 1,5 Litros - Mel?ncia', 'Pet', '1,5 litros', 'Mel?ncia', 19.51);

-- BUSCAR TODOS OS REGISTROS DA TABELA
SELECT * FROM TB_PRODUTOS;

-- ALTERAR DADOS DE UM PRODUTO
UPDATE TB_PRODUTOS SET 
	EMBALAGEM = 'LATA_ALTERADO',
	PRECO_LISTA = 2.46
WHERE PRODUTO = '1004327';

DELETE FROM TB_PRODUTOS
WHERE PRODUTO = '1004327';

