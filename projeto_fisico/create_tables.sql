DROP SCHEMA IF EXISTS ifood;
CREATE SCHEMA ifood;
USE ifood

CREATE TABLE pessoa (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(20),
    idade INTEGER
);

CREATE TABLE funcionario (
    codigo_funcionario INTEGER PRIMARY KEY,
    socio INTEGER,
    
    fk_cpf_pessoa VARCHAR(11),
    fk_codigo_supervisor INTEGER,
    
    FOREIGN KEY(fk_cpf_pessoa) REFERENCES pessoa(cpf),
    FOREIGN KEY(fk_codigo_supervisor) REFERENCES funcionario(codigo_funcionario)
);

CREATE TABLE marketing (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
);

CREATE TABLE po (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
);

CREATE TABLE business (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
);

CREATE TABLE dev (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
);

CREATE TABLE designer (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
);

CREATE TABLE cliente (
    codigo_cliente INTEGER PRIMARY KEY,

    rua VARCHAR(20),
    bairro VARCHAR(20),
    complemento VARCHAR(20),
    numero INTEGER,

    telefone INTEGER,

    fk_cpf_pessoa VARCHAR(11),

    FOREIGN KEY(fk_cpf_pessoa) REFERENCES pessoa(cpf)
);

CREATE TABLE estabelecimento (
    cnpj VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(20),

    rua VARCHAR(20),
    bairro VARCHAR(20),
    complemento VARCHAR(20),
    numero INTEGER,

    bar INTEGER,
    cafeteria INTEGER,
    lanchonete INTEGER,
    restaurante INTEGER
);

CREATE TABLE entregador (
    codigo_entregador INTEGER PRIMARY KEY,

    fk_cpf_pessoa VARCHAR(11),

    FOREIGN KEY(fk_cpf_pessoa) REFERENCES pessoa(cpf)
);

CREATE TABLE telefone_estabelecimento (
    telefone_1 INTEGER,
    telefone_2 INTEGER,

    fk_cnpj_estabelecimento VARCHAR(14),
    
    FOREIGN KEY(fk_cnpj_estabelecimento) REFERENCES estabelecimento(cnpj)
);

CREATE TABLE compra (
    id_compra INTEGER PRIMARY KEY,

    forma_pagamento INTEGER, -- boolean

    fk_codigo_cliente INTEGER,
    fk_cnpj_estabelecimento VARCHAR(14),
    fk_codigo_entregador INTEGER,

    FOREIGN KEY(fk_cnpj_estabelecimento) REFERENCES estabelecimento(cnpj),
    FOREIGN KEY(fk_codigo_cliente) REFERENCES cliente(codigo_cliente),
    FOREIGN KEY(fk_codigo_entregador) REFERENCES entregador(codigo_entregador)
);

CREATE TABLE cardapio (
    id_cardapio INTEGER PRIMARY KEY,

    fk_cnpj_estabelecimento VARCHAR(14),
    
    FOREIGN KEY(fk_cnpj_estabelecimento) REFERENCES estabelecimento(cnpj)
);

CREATE TABLE item (
    id_item INTEGER PRIMARY KEY,

    nome_item VARCHAR(20),
    preco decimal (10,2), -- 2 digitos decimais

    bebida INTEGER,
    comida INTEGER,
    utensilio INTEGER,

    fk_id_cardapio INTEGER,

    FOREIGN KEY(fk_id_cardapio) REFERENCES cardapio(id_cardapio)
);

CREATE TABLE bebida (
    fk_id_item INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item)
);

CREATE TABLE comida (
    fk_id_item INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item)
);

CREATE TABLE utensilio (
    fk_id_item INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item)
);

CREATE TABLE item_compra (
    fk_id_item INTEGER,
    fk_id_compra INTEGER,

    FOREIGN KEY(fk_id_item) REFERENCES item(id_item),
    FOREIGN KEY(fk_id_compra) REFERENCES compra(id_compra)
);