/*
SÍMBOLOS:
- Seleção: σ
- Projeção: π
- Junção: ⋈
- Produto cartesiano: x
- União: ∪
- renomear: ρ
*/

USE ifood;

-- Selecionar todos os dados de uma tabela:
-- RESULTADO = σ(pessoa)
SELECT * FROM pessoa;

-- Selecionar um subconjunto de atributos de uma tabela:
-- RESULTADO = π codigo_funcionario, fk_cpf_pessoa(funcionario),
SELECT codigo_funcionario, fk_cpf_pessoa FROM funcionario;

-- Selecionar dados de uma tabela mediante alguma condição:
-- RESULTADO = σ bar=1(estabelecimento)
SELECT  * FROM estabelecimento WHERE bar=1;

-- Realizar seleção de dados sem apresentar duplicadas:
-- RESULTADO = π idade (pessoa)
SELECT DISTINCT idade FROM pessoa;

-- Realizar consulta de seleção-projeção-junção:
-- RESULTADO = π nome (σ fk_codigo_supervisor=0(funcionario) ⋈ fk_cpf_pessoa=cpf pessoa)
SELECT nome FROM pessoa, funcionario WHERE fk_codigo_supervisor=0 AND cpf=fk_cpf_pessoa;

-- Atribuir “apelidos”:
/*

ρ p (nome_pessoa,idade_pessoa,cpf) (pessoa)
ρ c (telefone_cliente,codigo_cliente,rua,bairro,complemento,numero,fk_cpf_pessoa) (cliente)
RESULTADO = σ bairro='Casa Amarela' (c) ⋈ fk_cpf_pessoa=cpf (p)

*/
SELECT p.nome AS nome_pessoa, p.idade AS idade_pessoa, c.telefone AS telefone_cliente
FROM pessoa AS p, cliente AS c 
WHERE c.bairro='Casa Amarela' AND p.cpf=c.fk_cpf_pessoa;

-- Aplicar união:
/*
PESSOA_FUNC = π nome ( (σ idade=65 (pessoa)) ⋈ cpf=fk_cpf_pessoa (funcionario) )
PESSOA_CLIENTE = π nome ( (σ idade=65 (pessoa)) ⋈ cpf=fk_cpf_pessoa (cliente) )
RESULTADO = PESSOA_FUNC ∪ PESSOA_CLIENTE
*/
SELECT nome FROM pessoa, funcionario WHERE idade=65 AND cpf=fk_cpf_pessoa
UNION
SELECT nome FROM pessoa, cliente WHERE idade=65 AND cpf=fk_cpf_pessoa;

-- Aplicar Interseção:
/*
RESULTADO = π cpf,nome ( (pessoa) ⋈ cpf=fk_cpf_pessoa (funcionario) ) 
*/
SELECT cpf, nome FROM pessoa INNER JOIN funcionario ON cpf=fk_cpf_pessoa;

-- Aplicar diferença:
/*
ρ (codigo_funcionario,socio,cpf_pessoa,fk_codigo_supervisor) (funcionario)
FUNC_CPF = π cpf_pessoa (funcionario)
PESSOA_CPF = π cpf (pessoa)
PESSOA_CPF_NOME = π cpf,nome (pessoa)

RESULTADO = ((PESSOA_CPF) - (FUNC_CPF)) ⋈ cpf=cpf (PESSOA_CPF_NOME)
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
-- RESULTADO = π nome (σ cpf LIKE '1%' (pessoa))
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
DROP ROLE IF EXISTS select_ifood;
CREATE ROLE select_ifood;
GRANT SELECT ON ifood.* TO 'select_ifood';

-- criar regra para execução de comandos DML e DQL
DROP ROLE IF EXISTS cmds_dml_dql;
CREATE ROLE cmds_dml_dql;
GRANT INSERT, UPDATE, DELETE, SELECT ON *.* TO 'cmds_dml_dql';

-- criar regra para execução de comandos DDL
DROP ROLE IF EXISTS cmds_ddl;
CREATE ROLE cmds_ddl;
GRANT CREATE, DROP, ALTER ON *.* TO 'cmds_ddl';

-- criar usuário que possua a regra padrão para consulta (criada anteriormente)
DROP USER IF EXISTS 'mvca'@'localhost';
CREATE USER 'mvca'@'localhost' IDENTIFIED BY '#1';
GRANT 'select_ifood' TO 'mvca'@'localhost';
SET DEFAULT ROLE 'select_ifood' TO 'mvca'@'localhost';

-- criar usuário que possua a regra padrão para comandos DML e DQL (criada anteriormente)
DROP USER IF EXISTS 'tsa3'@'localhost';
CREATE USER 'tsa3'@'localhost' IDENTIFIED BY '#2';
GRANT 'cmds_dml_dql' TO 'tsa3'@'localhost';
SET DEFAULT ROLE 'cmds_dml_dql' TO 'tsa3'@'localhost';

-- criar usuário que possua a regra padrão para comandos DDL (criada anteriormente)
DROP USER IF EXISTS 'nss2'@'localhost';
CREATE USER 'nss2'@'localhost' IDENTIFIED BY '#3';
GRANT 'cmds_ddl' TO 'nss2'@'localhost';
SET DEFAULT ROLE 'cmds_ddl' TO 'nss2'@'localhost';

-- criar uma transação única
START TRANSACTION;
UPDATE item
SET preco = preco - 2.0
WHERE id_item = 0;
COMMIT;

-- criar uma view a partir de mais de uma tabela
/*
AUX_ID_COMPRA = π id_compra (σ fk_cnpj_extabelecimento= ???(compra)        (σ idade=65 (pessoa)) ⋈ cpf=fk_cpf_pessoa (funcionario) )
PESSOA_CLIENTE = π nome ( (σ idade=65 (pessoa)) ⋈ cpf=fk_cpf_pessoa (cliente) )
FUNC_CLENTE = PESSOA_FUNC ∪ PESSOA_CLIENTE
*/
DROP VIEW IF EXISTS view_items_comprados_estabelecimentos;
CREATE VIEW view_items_comprados_estabelecimentos AS
SELECT c.id_compra, e.cnpj, i.nome_item, i.preco
FROM compra AS c, estabelecimento AS e, cardapio AS cp, item AS i
WHERE e.cnpj = c.fk_cnpj_estabelecimento AND c.fk_cnpj_estabelecimento = cp.fk_cnpj_estabelecimento AND i.fk_id_cardapio = cp.id_cardapio;

-- criar uma regra para consulta apenas na visualização criada
DROP ROLE IF EXISTS select_view;
CREATE ROLE select_view;
GRANT SELECT ON ifood.view_items_comprados_estabelecimentos TO 'select_view';

-- criar usuário que possua a regra padrão para consulta da view (criadas anteriormente) 
DROP USER IF EXISTS 'lgoq'@'localhost';
CREATE USER 'lgoq'@'localhost' IDENTIFIED BY '#4';
GRANT 'select_view' TO 'lgoq'@'localhost';
SET DEFAULT ROLE 'select_view' TO 'lgoq'@'localhost';