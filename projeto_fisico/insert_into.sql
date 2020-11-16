insert into PESSOA (cpf, nome, idade) values ('66611758912','Lourdes',65);
insert into PESSOA (cpf, nome, idade) values ('77040126703','Marinalva',55);
insert into PESSOA (cpf, nome, idade) values ('31181980767','Marlene',54);
insert into PESSOA (cpf, nome, idade) values ('16488774610','Mirtes',56);
insert into PESSOA (cpf, nome, idade) values ('19064102185','Neide',86);
insert into PESSOA (cpf, nome, idade) values ('13538263165','Neusa',59);
insert into PESSOA (cpf, nome, idade) values ('34661547204','Odete',65);
insert into PESSOA (cpf, nome, idade) values ('22831798477','Pedrina',64);
insert into PESSOA (cpf, nome, idade) values ('25540323029','Quitéria',78);
insert into PESSOA (cpf, nome, idade) values ('44826720733','Romilda',77);
insert into PESSOA (cpf, nome, idade) values ('86908459173','Risoleta',88);
insert into PESSOA (cpf, nome, idade) values ('80473699248','Eustáquio',87);
insert into PESSOA (cpf, nome, idade) values ('17115826052','Felizardo',89);
insert into PESSOA (cpf, nome, idade) values ('60386358687','Gérson',67);
insert into PESSOA (cpf, nome, idade) values ('52362568727','Gilson',96);
insert into PESSOA (cpf, nome, idade) values ('34671626240','Godofredo',87);
insert into PESSOA (cpf, nome, idade) values ('19374182477','Heraldo',67);
insert into PESSOA (cpf, nome, idade) values ('88551487780','Hilário',87);
insert into PESSOA (cpf, nome, idade) values ('94418755363','Hildebrando',73);
insert into PESSOA (cpf, nome, idade) values ('59545223684','Inocêncio',65);
insert into PESSOA (cpf, nome, idade) values ('28146826229','Jurandir',74);

insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (0,1,'66611758912',0);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (1,0,'77040126703',0);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (2,0,'31181980767',0);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (3,0,'16488774610',0);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (4,0,'19064102185',0);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (5,0,'13538263165',0);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (6,1,'34661547204',6);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (7,0,'22831798477',6);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (11,1,'80473699248',11);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (12,0,'17115826052',11);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (13,0,'60386358687',11);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (14,0,'52362568727',11);
insert into FUNCIONARIO (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) values (15,0,'34671626240',11);

insert into ENTREGADOR (codigo_entregador, fk_cpf_pessoa) values (0,'19064102185');
insert into ENTREGADOR (codigo_entregador, fk_cpf_pessoa) values (1,'22831798477');
insert into ENTREGADOR (codigo_entregador, fk_cpf_pessoa) values (2,'86908459173');
insert into ENTREGADOR (codigo_entregador, fk_cpf_pessoa) values (3,'19374182477');


insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (0,'Rua Ladrilhada','Água Fria','casa',210,921455919,31181980767);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (1,'Quatorze','Alto J Bonifácio','casa',239,993925052,16488774610);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (2,'Sao Francisco','Alto José do Pinho','apt',7,929454644,19064102185);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (3,'Sete de Setembro','Alto do Mandu','casa',220,948517741,13538263165);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (4,'Aurora','Bomba do Hemetério','apt',117,958750172,34661547204);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (5,'Dezesseis','Bongi','casa',66,956829503,22831798477);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (6,'Quinze De Novembro','Campo Grande','casa',61,970178051,25540323029);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (7,'Groove Street','Casa Amarela','casa',139,946805529,44826720733);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (8,'Tiradentes','Casa Forte','apt',162,966180034,86908459173);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (9,'Dezessete','Santo Amaro','casa',134,986877742,80473699248);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (10,'Agamenom','Santo Antônio','casa',178,972773873,17115826052);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (11,'Estrada Velha','São José','apt',18,979036833,60386358687);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (12,'Vinte','Várzea','apt',231,949974126,52362568727);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (13,'Bahia','Vasco da Gama','casa',213,939133444,34671626240);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (14,'Amazonas','Campo Grande','casa',47,947521884,19374182477);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (15,'Dezoito','Várzea','casa',192,992698192,88551487780);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (16,'Sao Sebastiao','Bomba do Hemetério','apt',110,983055359,94418755363);
insert into CLIENTE (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) values (17,'Cachorro','Bomba do Hemetério','casa',202,977827929,59545223684);


insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('789869305923','Sujinho','Ceara','Água Fria','casa',25,1,0,1,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('400636500899','Pé pra Fora','Rua 10','Alto J Bonifácio','casa',145,0,0,1,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('113737611616','Galinheiro','Belo Horizonte','Várzea','apt',120,0,1,0,1);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('108728018627','Facebuguer','Das Flores','Alto do Mandu','casa',3,0,0,1,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('203657147189','O Senhor dos Pasteis','Sergipe','Bomba do Hemetério','apt',78,0,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('143549522292','Bar dos Otários','Vitoria','Bongi','casa',144,1,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('662122880583','Demorô','José Bonifácio','Campo Grande','casa',117,0,1,1,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('593425841607','Pobr’s','Pernambuco','Casa Amarela','casa',66,0,0,1,1);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('140482142037','Facefood','Piauí','Casa Forte','apt',26,0,0,1,1);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('992387009456','Churrassic Park','Vinte e Três','Santo Amaro','casa',88,0,0,0,1);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('143221201534','Suburbioway','Rua 9','Santo Antônio','casa',20,0,0,1,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('904681499161','Bar da Mosca','Mato Grosso','São José','apt',45,0,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('593435870163','Manguaça','Santa Maria','Várzea','apt',149,1,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('420901186827','Gato Doido','Dom Pedro II','Vasco da Gama','casa',26,1,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('657842398722','Pai','Primeiro de Maio','Campo Grande','apt',15,0,1,1,1);