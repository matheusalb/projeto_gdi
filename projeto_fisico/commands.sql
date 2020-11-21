/*
SÍMBOLOS:
- Seleção: σ
- Projeção: π
- Junção: ⋈
- Produto cartesiano: x
- União: ∪
- renomear: ρ
*/

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

ρ P (nome_pessoa,idade_pessoa,cpf) (pessoa)
ρ C (telefone_cliente,codigo_cliente,rua,bairro,complemento,numero,fk_cpf_pessoa) (cliente)
σ bairro='Casa Amarela' (C) ⋈ fk_cpf_pessoa=cpf (P)

*/
SELECT P.nome AS nome_pessoa, P.idade AS idade_pessoa, C.telefone AS telefone_cliente
FROM pessoa AS P, cliente AS C 
WHERE C.bairro='Casa Amarela' AND P.cpf=C.fk_cpf_pessoa;

-- Aplicar união:
/*
PESSOA_FUNC = π nome ( (σ idade=65 (pessoa)) ⋈ cpf=fk_cpf_pessoa (funcionario) )
PESSOA_CLIENTE = π nome ( (σ idade=65 (pessoa)) ⋈ cpf=fk_cpf_pessoa (cliente) )
FUNC_CLENTE = PESSOA_FUNC ∪ PESSOA_CLIENTE
*/
SELECT nome FROM pessoa, funcionario WHERE idade=65 AND cpf=fk_cpf_pessoa
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
ρ C (cliente)
ρ E (cnpj,nome_estabelecimento,rua_estabelecimento,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) (estabelecimento)

ESTAB_CLIENTE = E x C
EST_CLI_RUA = σ rua=rua_estabelecimento (ESTAB_CLIENTE)
RESULTADO = π codigo_cliente,nome_estabelecimento (EST_CLI_RUA)
*/
SELECT C.codigo_cliente, E.nome AS nome_estabelecimento FROM estabelecimento AS E CROSS JOIN cliente AS C ON C.rua=E.rua;

-- Realizar seleção sob condição que envolva outra seleção
/*
ρ I (item)
ρ IC (item_compra)
COMPRADO_ITEM = (I) ⋈ id_item=fk_id_item (IC)
RESULTADO = π nome_item,preco (COMPRADO_ITEM)
*/
SELECT nome_item, preco FROM item AS I
WHERE EXISTS(SELECT * FROM item_compra AS IC WHERE I.id_item=IC.fk_id_item);

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
SELECT codigo_cliente FROM cliente GROUP BY bairro;

-- criar regra apenas para consultas do banco criado
SET @privileges = "SELECT";
SET @database_table = "ifood.*";
SET @base_grant_1 = CONCAT("GRANT ", @privileges, " ON ", @database_table, " TO ");

-- criar regra para execução de comandos DML e DQL
SET @privileges = "INSERT, UPDATE, DELETE, SELECT";
SET @database_table = "*.*";
SET @base_grant_2 = CONCAT("GRANT ", @privileges, " ON ", @database_table, " TO ");
PREPARE grant_stmt_2 FROM @grant_2;

-- criar regra para execução de comandos DDL
SET @privileges = "CREATE, ALTER, DROP, TRUNCATE, DESC";
SET @database_table = "*.*";
SET @base_grant_3 = CONCAT("GRANT ", @privileges, " ON ", @database_table, " TO ");
PREPARE grant_stmt_3 FROM @grant_3;

-- criar usuário que possua a regra padrão para consulta (criada anteriormente)
CREATE USER 'mvca'@'localhost' IDENTIFIED BY '#1';
SET @grant_1 = CONCAT(@base_grant_1, " 'mvca'@'localhost'");
PREPARE grant_stmt_1 FROM @grant_1;
EXECUTE grant_stmt_1;
DEALLOCATE PREPARE grant_stmt_1;

-- criar usuário que possua a regra padrão para comandos DML e DQL (criada anteriormente)
CREATE USER 'tsa3'@'localhost' IDENTIFIED BY '#2';
SET @grant_2 = CONCAT(@base_grant_2, " 'tsa3'@'localhost'");
PREPARE grant_stmt_2 FROM @grant_2;
EXECUTE grant_stmt_2;
DEALLOCATE PREPARE grant_stmt_2;

-- criar usuário que possua a regra padrão para comandos DDL (criada anteriormente)
CREATE USER 'nss2'@'localhost' IDENTIFIED BY '#3';
SET @grant_3 = CONCAT(@base_grant_3, " 'nss2'@'localhost'");
PREPARE grant_stmt_3 FROM @grant_3;
EXECUTE grant_stmt_3;
DEALLOCATE PREPARE grant_stmt_3;

-- criar uma transação única
-- criar uma view a partir de mais de uma tabela
-- criar uma regra para consulta apenas na visualização criada
-- criar usuário que possua a regra padrão para consulta da view (criadas anteriormente)