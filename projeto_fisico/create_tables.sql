DROP SCHEMA IF EXISTS ifood;
CREATE SCHEMA ifood;
USE ifood;


CREATE TABLE pessoa (
    cpf VARCHAR(11) DEFAULT '' PRIMARY KEY,
    nome VARCHAR(20) DEFAULT '',
    idade INTEGER DEFAULT -1
);

CREATE TABLE funcionario (
    codigo_funcionario INTEGER DEFAULT -1 PRIMARY KEY,
    socio BOOLEAN DEFAULT FALSE,
    
    fk_cpf_pessoa VARCHAR(11),
    fk_codigo_supervisor INTEGER,
    
    FOREIGN KEY(fk_cpf_pessoa) REFERENCES pessoa(cpf)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(fk_codigo_supervisor) REFERENCES funcionario(codigo_funcionario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE marketing (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE po (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE business (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE dev (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE designer (
    fk_codigo_funcionario INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE cliente (
    codigo_cliente INTEGER DEFAULT -1 PRIMARY KEY,

    rua VARCHAR(20) DEFAULT '',
    bairro VARCHAR(20) DEFAULT '',
    complemento VARCHAR(20) DEFAULT '',
    numero INTEGER DEFAULT -1,

    telefone INTEGER DEFAULT -1,

    fk_cpf_pessoa VARCHAR(11),

    FOREIGN KEY(fk_cpf_pessoa) REFERENCES pessoa(cpf)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE estabelecimento (
    cnpj VARCHAR(14) DEFAULT '' PRIMARY KEY,
    nome VARCHAR(20) DEFAULT '',

    rua VARCHAR(20) DEFAULT '',
    bairro VARCHAR(20) DEFAULT '',
    complemento VARCHAR(20) DEFAULT '',
    numero INTEGER DEFAULT -1,

    bar BOOLEAN DEFAULT FALSE,
    cafeteria BOOLEAN DEFAULT FALSE,
    lanchonete BOOLEAN DEFAULT FALSE,
    restaurante BOOLEAN DEFAULT TRUE
);

CREATE TABLE entregador (
    codigo_entregador INTEGER DEFAULT -1 PRIMARY KEY,

    fk_cpf_pessoa VARCHAR(11),

    FOREIGN KEY(fk_cpf_pessoa) REFERENCES pessoa(cpf)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE telefone_estabelecimento (
    telefone_1 INTEGER DEFAULT -1,
    telefone_2 INTEGER DEFAULT -1,

    fk_cnpj_estabelecimento VARCHAR(14),
    
    FOREIGN KEY(fk_cnpj_estabelecimento) REFERENCES estabelecimento(cnpj)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE compra (
    id_compra INTEGER DEFAULT -1 PRIMARY KEY,

    forma_pagamento BOOLEAN DEFAULT FALSE, 

    fk_codigo_cliente INTEGER,
    fk_cnpj_estabelecimento VARCHAR(14),
    fk_codigo_entregador INTEGER,

    FOREIGN KEY(fk_cnpj_estabelecimento) REFERENCES estabelecimento(cnpj)
        ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY(fk_codigo_cliente) REFERENCES cliente(codigo_cliente)
        ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY(fk_codigo_entregador) REFERENCES entregador(codigo_entregador)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE cardapio (
    id_cardapio INTEGER DEFAULT -1 PRIMARY KEY,

    fk_cnpj_estabelecimento VARCHAR(14),
    
    FOREIGN KEY(fk_cnpj_estabelecimento) REFERENCES estabelecimento(cnpj)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE item (
    id_item INTEGER DEFAULT -1 PRIMARY KEY,

    nome_item VARCHAR(20) DEFAULT '',
    preco decimal (10,2) DEFAULT -1.00, -- 2 digitos decimais
    
    fk_id_cardapio INTEGER,

    FOREIGN KEY(fk_id_cardapio) REFERENCES cardapio(id_cardapio)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE bebida (
    fk_id_item INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE comida (
    fk_id_item INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE utensilio (
    fk_id_item INTEGER PRIMARY KEY,
    
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE item_compra (
    fk_id_item INTEGER,
    fk_id_compra INTEGER,


    FOREIGN KEY(fk_id_item) REFERENCES item(id_item)
        ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY(fk_id_compra) REFERENCES compra(id_compra)
        ON DELETE SET NULL ON UPDATE CASCADE
);