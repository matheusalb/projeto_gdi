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
-- σ(PESSOA)
SELECT * FROM PESSOA;

-- Selecionar um subconjunto de atributos de uma tabela:
-- π codigo_funcionario, fk_cpf_pessoa(FUNCIONARIO),
SELECT codigo_funcionario, fk_cpf_pessoa FROM FUNCIONARIO;

-- Selecionar dados de uma tabela mediante alguma condição:
-- σ bar=1(ESTABELECIMENTO)
SELECT  * FROM ESTABELECIMENTO WHERE bar=1;

-- Realizar seleção de dados sem apresentar duplicadas:
-- π idade (PESSOA)
SELECT DISTINCT idade FROM PESSOA;

-- Realizar consulta de seleção-projeção-junção:
-- π nome (σ fk_codigo_supervisor=0(FUNCIONARIO) ⋈ fk_cpf_pessoa=cpf PESSOA)
SELECT nome FROM PESSOA, FUNCIONARIO WHERE fk_codigo_supervisor=0 AND cpf=fk_cpf_pessoa;

-- Atribuir “apelidos”:
/*

ρ P (nome_pessoa,idade_pessoa,cpf) (PESSOA)
ρ C (telefone_cliente,codigo_cliente,rua,bairro,complemento,numero,fk_cpf_pessoa) (CLIENTE)
σ bairro='Casa Amarela' (C) ⋈ fk_cpf_pessoa=cpf (P)

*/
SELECT P.nome AS nome_pessoa, P.idade AS idade_pessoa, C.telefone AS telefone_cliente
FROM PESSOA AS P, CLIENTE AS C 
WHERE C.bairro='Casa Amarela' AND P.cpf=C.fk_cpf_pessoa;

-- Aplicar união:
/*
PESSOA_FUNC = π nome ( (σ idade=65 (PESSOA)) ⋈ cpf=fk_cpf_pessoa (FUNCIONARIO) )
PESSOA_CLIENTE = π nome ( (σ idade=65 (PESSOA)) ⋈ cpf=fk_cpf_pessoa (CLIENTE) )
FUNC_CLENTE = PESSOA_FUNC ∪ PESSOA_CLIENTE
*/
SELECT nome FROM PESSOA, FUNCIONARIO WHERE idade=65 AND cpf=fk_cpf_pessoa
UNION
SELECT nome FROM PESSOA, CLIENTE WHERE idade=65 AND cpf=fk_cpf_pessoa;

-- Aplicar Interseção:
/*
π cpf,nome ( (PESSOA) ⋈ cpf=fk_cpf_pessoa (FUNCIONARIO) ) 

π cpf,nome (PESSOA ∩ FUNCIONARIO) -- ?????

*/
SELECT cpf, nome FROM PESSOA INNER JOIN FUNCIONARIO ON cpf=fk_cpf_pessoa;

-- Aplicar diferença:
/*
ρ (codigo_funcionario,socio,cpf_pessoa,fk_codigo_supervisor) (FUNCIONARIO)
FUNC_CPF = π cpf_pessoa (FUNCIONARIO)
PESSOA_CPF = π cpf (PESSOA)
PESSOA_CPF_NOME = π cpf,nome (PESSOA)

((PESSOA_CPF) - (FUNC_CPF)) ⋈ cpf=cpf (PESSOA_CPF_NOME)
*/
SELECT cpf, nome FROM PESSOA WHERE cpf NOT IN (SELECT fk_cpf_pessoa AS cpf_pessoa FROM FUNCIONARIO);

-- Aplicar produto cartesiano:
/*
ρ C (CLIENTE)
ρ E (cnpj,nome_estabelecimento,rua_estabelecimento,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) (ESTABELECIMENTO)

ESTAB_CLIENTE = E x C
EST_CLI_RUA = σ rua=rua_estabelecimento (ESTAB_CLIENTE)
RESULTADO = π codigo_cliente,nome_estabelecimento (EST_CLI_RUA)
*/
SELECT C.codigo_cliente, E.nome AS nome_estabelecimento FROM ESTABELECIMENTO AS E CROSS JOIN CLIENTE AS C ON C.rua=E.rua;

-- Realizar seleção sob condição que envolva outra seleção
/*
ρ I (ITEM)
ρ IC (ITEM_COMPRA)
COMPRADO_ITEM = (I) ⋈ id_item=fk_id_item (IC)
RESULTADO = π nome_item,preco (COMPRADO_ITEM)
*/
SELECT nome_item, preco FROM ITEM AS I
WHERE EXISTS(SELECT * FROM ITEM_COMPRA AS IC WHERE I.id_item=IC.fk_id_item);

-- Consultar valores de atributos que iniciem por algum termo
/*

*/
SELECT nome FROM PESSOA WHERE cpf LIKE '1%';

-- Ordenar resultados de consultas de forma ascendente
/*
ITEM_ORD = t preco asc (ITEM)
RESULTADO = π nome_item,preco (ITEM_ORD)

Obs: t = [tau] => operador estendido da Algebra Relacional
*/
SELECT nome_item, preco FROM ITEM ORDER BY preco ASC;

-- Utilizar função de agregação
/*
RESULTADO = γ MAX(preco) (ITEM)

Obs: γ = [gama] => operador estendido da Algebra Relacional
*/
SELECT MAX(preco) FROM ITEM;

-- realizar agrupamento de resultado de consulta
/*
RESULTADO = (bairro) γ (codigo_cliente) (CLIENTE)

Obs: γ = [gama] => operador estendido da Algebra Relacional
*/
SELECT codigo_cliente FROM CLIENTE GROUP BY bairro;

-- criar regra apenas para consultas do banco criado
GRANT SELECT ON SCHEMA IFOOD TO MVCA;
