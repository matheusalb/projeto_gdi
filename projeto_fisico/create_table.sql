create table PESSOA (
    cpf varchar2(11) primary key,
    nome varchar2(20),
    idade integer
);

create table FUNCIONARIO (
    codigo_funcionario integer primary key,
    socio integer,
    
    fk_cpf_pessoa varchar2(11),
    fk_codigo_supervisor integer,
    
    foreign key (fk_cpf_pessoa) references PESSOA(cpf),
    foreign key (fk_codigo_supervisor) references FUNCIONARIO(codigo_funcionario)
);

create table MARKETING (
    fk_codigo_funcionario integer primary key,
    
    foreign key (fk_codigo_funcionario) references FUNCIONARIO(codigo_funcionario)
);

create table OP (
    fk_codigo_funcionario integer primary key,
    
    foreign key (fk_codigo_funcionario) references FUNCIONARIO(codigo_funcionario)
);

create table BUSINESS (
    fk_codigo_funcionario integer primary key,
    
    foreign key (fk_codigo_funcionario) references FUNCIONARIO(codigo_funcionario)
);

create table DEV (
    fk_codigo_funcionario integer primary key,
    
    foreign key (fk_codigo_funcionario) references FUNCIONARIO(codigo_funcionario)
);

create table DESIGNER (
    fk_codigo_funcionario integer primary key,
    
    foreign key (fk_codigo_funcionario) references FUNCIONARIO(codigo_funcionario)
);

create table CLIENTE (
    codigo_cliente integer primary key,

    rua varchar2(20),
    bairro varchar2(20),
    complemento varchar2(20),
    numero integer,

    telefone integer,

    fk_cpf_pessoa varchar2(11),

    foreign key (fk_cpf_pessoa) references PESSOA(cpf)
);

create table ESTABELECIMENTO (
    cnpj varchar2(14) primary key,
    nome varchar2(20),

    rua varchar2(20),
    bairro varchar2(20),
    complemento varchar2(20),
    numero integer,

    bar integer,
    cafeteria integer,
    lanchonete integer,
    restaurante integer
);

create table ENTREGADOR (
    codigo_entregador integer primary key,

    fk_cpf_pessoa varchar2(11),

    foreign key (fk_cpf_pessoa) references PESSOA(cpf)
);

create table TELEFONE_ESTABELECIMENTO (
    telefone_1 integer,
    telefone_2 integer,

    fk_cnpj_estabelecimento varchar2(14),
    
    foreign key (fk_cnpj_estabelecimento) references ESTABELECIMENTO(cnpj)
);

create table COMPRA (
    id_compra integer primary key,

    forma_pagamento integer, -- boolean

    cliente integer,
    estabelecimento varchar2(14),
    entregador integer,

    foreign key (estabelecimento) references ESTABELECIMENTO(cnpj),
    foreign key (cliente) references CLIENTE(codigo_cliente),
    foreign key (entregador) references ENTREGADOR(codigo_entregador)
);

create table CARDAPIO (
    id_cardapio integer primary key,

    fk_cnpj_estabelecimento varchar2(14),
    
    foreign key (fk_cnpj_estabelecimento) references ESTABELECIMENTO(cnpj)
);

create table ITEM (
    id_item integer primary key,

    nome_item varchar2(20),
    preco decimal (10,2), -- 2 digitos decimais

    bebida integer,
    comida integer,
    utensilio integer,

    fk_id_cardapio integer,

    foreign key (fk_id_cardapio) references CARDAPIO(id_cardapio)
);

create table ITEM_COMPRA (
    fk_id_item integer,
    fk_id_compra integer,

    foreign key (fk_id_item) references ITEM(id_item),
    foreign key (fk_id_compra) references COMPRA(id_compra)
);