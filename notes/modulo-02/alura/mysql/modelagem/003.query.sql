-- ATUALIZANDO UMA TABELA
SELECT * FROM PRODUTOS;

-- ATUALIZANDO UM ELEMENTO ESPECIFICO EM UM CAMPO ESPECIFICO
UPDATE PRODUTOS SET PRECO_LISTA = 5 WHERE CODIGO = '1000889';

-- ATUALIZANDO TODO UM REGISTRO
UPDATE PRODUTOS SET 
	EMBALAGEM = 'PET',
    TAMANHO = '1 Litro',
    DESCRITOR = 'Sabor da Montanha - 1 Litro - Uva'
WHERE CODIGO = '1000889';

-- ATUALIZANDO TODOS OS PRODUTOS COM UM CAMPO EM COMUM
SELECT * FROM PRODUTOS WHERE SABOR = 'Maracujá';

UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA + PRECO_LISTA * 0.1 WHERE SABOR = 'Maracujá';

SELECT * FROM VENDEDORES;

SELECT * FROM sucos_vendas.tabela_de_vendedores;

-- UNINDO TABELA DE VENDEDORES
SELECT * FROM VENDEDORES A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3);

UPDATE VENDEDORES A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3) 
SET A.FERIAS = B.DE_FERIAS;

SELECT * FROM VENDEDORES;