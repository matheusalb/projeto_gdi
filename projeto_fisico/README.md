# Projeto GDI - Fase 2

Implementação do projeto físico do banco de dados inspirado no ifood.

## 1. Create tables

O script `create_tables.sql` cria cria o banco de dados ifood e suas tabelas (contrução do projeto físico). Ele atende as seguintes solicitação do projeto:

- Valor padrão para atributo criado.
- Validação de dados a serem inseridos.
- Ação de disparo referencial.

## 2. Populate tables

O script `populte_tables.sql` carrega as tuplas nas tabelas do banco de dados ifood. Ele atende a seguinte solicitação do projeto:

- Cada tabela com ao menos 3 tuplas.

## 3. Operations

O script `operations.sql` executa as operações listadas a seguir:

>**OBS:** O script contém comentários com as descrições das operações utilizando a de álgebra relacional.

- selecionar todos os dados de uma tabela.
- selecionar um subconjunto de atributos de uma tabela.
- selecionar dados de uma tabela mediante alguma condição.
- realizar seleção de dados sem apresentar duplicadas.
- realizar consulta de seleção-projeção-junção.
- atribuir “apelidos”.
- aplicar união.
- aplicar interseção.
- aplicar diferença.
- aplicar produto cartesiano.
- realizar seleção sob condição que envolva outra seleção.
- consultar valores de atributos que iniciem por algum termo.
- ordenar resultados de consultas de forma ascendente.
- utilizar função de agregação.
- realizar agrupamento de resultado de consulta.
- criar regra apenas para consultas do banco criado.
- criar regra para execução de comandos DML e DQL.
- criar regra para execução de comandos DDL.
- criar usuário que possua a regra padrão para consulta (criada anteriormente).
- criar usuário que possua a regra padrão para comandos DML e DQL (criada anteriormente).
- criar usuário que possua a regra padrão para comandos DDL (criada anteriormente).
- criar uma transação única.
- criar uma view a partir de mais de uma tabela.
- criar uma regra para consulta apenas na visualização criada.
- criar usuário que possua a regra padrão para consulta da view (criadas anteriormente).
