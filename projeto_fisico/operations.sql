-- SÍMBOLOS:
-- - Seleção: σ
-- - Projeção: π
-- - Junção: ⋈
-- - Produto cartesiano: x
-- - União: ∪
-- - renomear: ρ

USE ifood

-- Selecionar todos os dados de uma tabela:
-- σ(pessoa)
SELECT * FROM pessoa;

-- Selecionar um subconjunto de atributos de uma tabela:
-- π codigo_funcionario, fk_cpf_pessoa(funcionario),
SELECT codigo_funcionario, fk_cpf_pessoa FROM funcionario;

-- Selecionar dados de uma tabela mediante alguma condição:
-- σ bar=1(estabelecimento)
SELECT  * FROM estabelecimento WHERE bar=1;

-- Realizar seleção de dados sem apresentar duplicadas:
-- π idade (pessoa)
SELECT DISTINCT idade FROM pessoa;

-- Realizar consulta de seleção-projeção-junção:
-- π nome (σ fk_codigo_supervisor=0(funcionario) ⋈ fk_cpf_pessoa=cpf pessoa)
SELECT nome FROM pessoa, funcionario WHERE fk_codigo_supervisor=0 AND cpf=fk_cpf_pessoa;

-- Atribuir “apelidos”:
/*

ρ p (nome_pessoa,idade_pessoa,cpf) (pessoa)
ρ c (telefone_cliente,codigo_cliente,rua,bairro,complemento,numero,fk_cpf_pessoa) (cliente)
σ bairro='Casa Amarela' (c) ⋈ fk_cpf_pessoa=cpf (p)

*/
SELECT p.nome AS nome_pessoa, p.idade AS idade_pessoa, c.telefone AS telefone_cliente
FROM ifood.pessoa AS p, ifood.cliente AS c 
WHERE c.bairro='Casa Amarela' AND p.cpf=C.fk_cpf_pessoa;

-- Aplicar união:
/*
PESSOA_FUNC = π nome ( (σ idade=65 (pessoa)) ⋈ cpf=fk_cpf_pessoa (funcionario) )
PESSOA_CLIENTE = π nome ( (σ idade=65 (pessoa)) ⋈ cpf=fk_cpf_pessoa (cliente) )
FUNC_CLENTE = PESSOA_FUNC ∪ PESSOA_CLIENTE
*/
SELECT nome FROM ifoode.pessoa, ifood.funcionario WHERE idade=65 AND cpf=fk_cpf_pessoa
UNION
SELECT nome FROM pessoa, cliente WHERE idade=65 AND cpf=fk_cpf_pessoa;

-- Aplicar Interseção:
/*
π cpf,nome ( (pessoa) ⋈ cpf=fk_cpf_pessoa (funcionario) ) 

π cpf,nome (pessoa ∩ funcionario) -- ?????

*/
SELECT cpf, nome FROM pessoa INNER JOIN funcionario ON cpf=fk_cpf_pessoa;

-- Aplicar diferença:
/*
ρ (codigo_funcionario,socio,cpf_pessoa,fk_codigo_supervisor) (funcionario)
FUNC_CPF = π cpf_pessoa (funcionario)
PESSOA_CPF = π cpf (pessoa)
PESSOA_CPF_NOME = π cpf,nome (pessoa)

((PESSOA_CPF) - (FUNC_CPF)) ⋈ cpf=cpf (PESSOA_CPF_NOME)
*/
SELECT cpf, nome FROM pessoa WHERE cpf NOT IN (SELECT fk_cpf_pessoa AS cpf_pessoa FROM funcionario);

-- Aplicar produto cartesiano:
/*
ρ c (cliente)
ρ e (cnpj,nome_estabelecimento,rua_estabelecimento,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) (estabelecimento)

ESTAB_CLIENTE = e x c
EST_CLI_RUA = σ rua=rua_estabelecimento (ESTAB_CLIENTE)
RESULTADO = π codigo_cliente,nome_estabelecimento (EST_CLI_RUA)
*/
SELECT c.codigo_cliente, e.nome AS nome_estabelecimento FROM estabelecimento AS e CROSS JOIN cliente AS c ON c.rua=e.rua;

-- Realizar seleção sob condição que envolva outra seleção
/*
ρ i (item)
ρ ic (item_compra)
COMPRADO_ITEM = (i) ⋈ id_item=fk_id_item (ic)
RESULTADO = π nome_item,preco (COMPRADO_ITEM)
*/
SELECT nome_item, preco FROM item AS i
WHERE EXISTS(SELECT * FROM item_compra AS ic WHERE i.id_item=ic.fk_id_item);

-- Consultar valores de atributos que iniciem por algum termo
/*

*/
SELECT nome FROM pessoa WHERE cpf LIKE '1%';

-- Ordenar resultados de consultas de forma ascendente
/*
ITEM_ORD = t preco asc (item)
RESULTADO = π nome_item,preco (ITEM_ORD)

Obs: t = [tau] => operador estendido da Algebra Relacional
*/
SELECT nome_item, preco FROM item ORDER BY preco ASC;

-- Utilizar função de agregação
/*
RESULTADO = γ MAX(preco) (item)

Obs: γ = [gama] => operador estendido da Algebra Relacional
*/
SELECT MAX(preco) FROM item;

-- realizar agrupamento de resultado de consulta
/*
RESULTADO = (bairro) γ (codigo_cliente) (cliente)

Obs: γ = [gama] => operador estendido da Algebra Relacional
*/
SELECT bairro, COUNT(codigo_cliente) AS 'num_clientes'  FROM cliente GROUP BY bairro;


-- criar regra apenas para consultas do banco criado
SET @base_grant_1 = "GRANT SELECT ON *.* TO ";

-- criar regra para execução de comandos DML e DQL
SET @base_grant_2 = "GRANT INSERT, UPDATE, DELETE, SELECT ON *.* TO ";

-- criar regra para execução de comandos DDL
SET @base_grant_3 = "GRANT CREATE, DROP, ALTER ON *.* TO ";

-- criar usuário que possua a regra padrão para consulta (criada anteriormente)
DROP USER IF EXISTS 'mvca'@'localhost';
CREATE USER 'mvca'@'localhost' IDENTIFIED BY '#1';
SET @grant_1 = CONCAT(@base_grant_1, " 'mvca'@'localhost'");
PREPARE grant_stmt_1 FROM @grant_1;
EXECUTE grant_stmt_1;
DEALLOCATE PREPARE grant_stmt_1;

-- criar usuário que possua a regra padrão para comandos DML e DQL (criada anteriormente)
DROP USER IF EXISTS 'tsa3'@'localhost';
CREATE USER 'tsa3'@'localhost' IDENTIFIED BY '#2';
SET @grant_2 = CONCAT(@base_grant_2, " 'tsa3'@'localhost'");
PREPARE grant_stmt_2 FROM @grant_2;
EXECUTE grant_stmt_2;
DEALLOCATE PREPARE grant_stmt_2;

-- criar usuário que possua a regra padrão para comandos DDL (criada anteriormente)
DROP USER IF EXISTS 'nss2'@'localhost';
CREATE USER 'nss2'@'localhost' IDENTIFIED BY '#3';
SET @grant_3 = CONCAT(@base_grant_3, " 'nss2'@'localhost'");
PREPARE grant_stmt_3 FROM @grant_3;
EXECUTE grant_stmt_3;
DEALLOCATE PREPARE grant_stmt_3;

-- criar uma transação única
-- criar uma view a partir de mais de uma tabela
-- criar uma regra para consulta apenas na visualização criada
-- criar usuário que possua a regra padrão para consulta da view (criadas anteriormente) 