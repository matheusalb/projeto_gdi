-- Selecionar todos os dados de uma tabela:
-- σ(PESSOA)
SELECT * FROM PESSOA;

-- Selecionar um subconjunto de atributos de uma tabela:
-- π codigo_funcionario, fk_cpf_pessoa(FUNCIONARIO),
SELECT codigo_funcionario, fk_cpf_pessoa FROM FUNCIONARIO;

-- Selecionar dados de uma tabela mediante alguma condição:
-- σ bar=1(ESTABELECIMENTO)
SELECT  * FROM ESTABELECIMENTO WHERE bar=1;

-- Realizar seleção de dados sem apresentar duplicadas:

SELECT DISTINCT idade FROM PESSOA;

-- Realizar consulta de seleção-projeção-junção:

SELECT nome FROM PESSOA, FUNCIONARIO WHERE fk_codigo_supervisor=0 AND cpf=fk_cpf_pessoa;

-- Atribuir “apelidos”:

SELECT P.nome AS nome_pessoa, P.idade AS idade_pessoa, C.telefone AS telefone_cliente
FROM PESSOA AS P, CLIENTE AS C 
WHERE C.bairro='Casa Amarela' AND P.cpf=C.fk_cpf_pessoa;

-- Aplicar união:

SELECT nome FROM PESSOA, FUNCIONARIO WHERE idade=65 AND cpf=fk_cpf_pessoa
UNION
SELECT nome FROM PESSOA, CLIENTE WHERE idade=65 AND cpf=fk_cpf_pessoa;

-- Aplicar Interseção:

SELECT cpf, nome FROM PESSOA INNER JOIN FUNCIONARIO ON cpf=fk_cpf_pessoa;

-- Aplicar diferença:

SELECT cpf, nome FROM PESSOA WHERE cpf NOT IN (SELECT fk_cpf_pessoa AS cpf_pessoa FROM FUNCIONARIO);

-- Aplicar produto cartesiano:

SELECT C.codigo_cliente, E.nome AS nome_estabelecimento FROM ESTABELECIMENTO AS E CROSS JOIN CLIENTE AS C ON C.rua=E.rua;

-- Realizar seleção sob condição que envolva outra seleção

SELECT nome_item, preco FROM ITEM AS I
WHERE EXISTS(SELECT * FROM ITEM_COMPRA AS IC WHERE I.id_item=IC.fk_id_item);

-- Consultar valores de atributos que iniciem por algum termo

SELECT nome FROM PESSOA WHERE cpf LIKE '1%';

-- Ordenar resultados de consultas de forma ascendente

SELECT nome_item, preco FROM ITEM ORDER BY preco ASC;

-- Utilizar função de agregação

SELECT MAX(preco) AS Maior_preco FROM ITEM;

-- realizar agrupamento de resultado de consulta

SELECT codigo_cliente FROM CLIENTE GROUP BY bairro;

-- criar regra apenas para consultas do banco criado
GRANT SELECT ON SCHEMA IFOOD TO MVCA;
