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

insert into MARKETING (fk_codigo_funcionario) values (13);
insert into MARKETING (fk_codigo_funcionario) values (14);
insert into OP (fk_codigo_funcionario) values (14);
insert into BUSINESS (fk_codigo_funcionario) values (3);
insert into DEV (fk_codigo_funcionario) values (6); -- socio dev
insert into DEV (fk_codigo_funcionario) values (7);
insert into DESIGNER (fk_codigo_funcionario) values (2);

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
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('113737611616','Galinheiro','Belo Horizonte','Várzea','galeria',120,0,1,0,1);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('108728018627','Facebuguer','Das Flores','Alto do Mandu','casa',3,0,0,1,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('203657147189','O Senhor dos Pasteis','Sergipe','Bomba do Hemetério','galeria',78,0,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('143549522292','Bar dos Otários','Vitoria','Bongi','casa',144,1,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('662122880583','Demorô','José Bonifácio','Campo Grande','casa',117,0,1,1,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('593425841607','Pobr’s','Pernambuco','Casa Amarela','casa',66,0,0,1,1);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('140482142037','Facefood','Piauí','Casa Forte','galeria',26,0,0,1,1);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('992387009456','Churrassic Park','Vinte e Três','Santo Amaro','casa',88,0,0,0,1);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('143221201534','Suburbioway','Rua 9','Santo Antônio','casa',20,0,0,1,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('904681499161','Bar da Mosca','Mato Grosso','São José','galeria',45,0,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('593435870163','Manguaça','Santa Maria','Várzea','galeria',149,1,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('420901186827','Gato Doido','Dom Pedro II','Vasco da Gama','casa',26,1,0,0,0);
insert into ESTABELECIMENTO (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) values ('657842398722','Pai','Primeiro de Maio','Campo Grande','galeria',15,0,1,1,1);

insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('958796967','911299867','789869305923');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('983818928','965181949','400636500899');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('927385212','978802939','113737611616');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('982495363','981534334','108728018627');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('930607143','992324987','203657147189');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('967648714','934406938','143549522292');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('928612889','923938057','662122880583');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('940569432','910161890','593425841607');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('938404437','924676317','140482142037');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('932791920','936695555','992387009456');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('926746504','911199848','143221201534');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('900130878','952360483','904681499161');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('902019428','988689301','593435870163');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('931478118','939609238','420901186827');
insert into TELEFONE_ESTABELECIMENTO (telefone_1, telefone_2, fk_cnpj_estabelecimento) values ('952041041','941936007','657842398722');

insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (0,'789869305923');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (1,'400636500899');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (2,'113737611616');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (3,'108728018627');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (4,'203657147189');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (5,'143549522292');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (6,'662122880583');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (7,'593425841607');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (8,'140482142037');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (9,'992387009456');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (10,'143221201534');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (11,'904681499161');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (12,'593435870163');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (13,'420901186827');
insert into CARDAPIO (id_cardapio, fk_cnpj_estabelecimento) values (14,'657842398722');

insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (0,'Maçã',27.2,0,1,0,0);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (1,'Abacate',107.9,0,1,0,0);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (2,'Banana',79,0,1,0,0);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (3,'Mirtilo',114.3,0,1,0,1);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (4,'Laranja',99.8,0,1,0,1);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (5,'Morango',42.1,0,1,0,1);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (6,'Guardanapo',59.4,0,0,1,2);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (7,'Hashi',84.3,0,0,1,2);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (8,'Carne bovina',44.7,0,1,0,2);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (9,'Suco de laranja',22.7,1,0,0,3);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (10,'Cordeiro',55.8,0,1,0,3);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (11,'Amêndoas',20.3,0,1,0,3);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (12,'Sementes de Chia',118.7,0,1,0,4);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (13,'Cocos',85,0,1,0,4);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (14,'Macadâmia',106.6,0,1,0,4);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (15,'Nozes',68.5,0,1,0,5);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (16,'Alho',44.7,0,1,0,5);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (17,'Couve',89.2,0,1,0,5);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (18,'Pepsi',94.2,1,0,0,6);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (19,'Tomates',99.6,0,1,0,6);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (20,'Cebola caramelizada',81,0,1,0,6);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (21,'Salmão',67.1,0,1,0,7);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (22,'Sardinhas',109.3,0,1,0,7);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (23,'Crustáceos',45.3,0,1,0,7);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (24,'Coca cola',112.1,1,0,0,8);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (25,'Truta',74.3,0,1,0,8);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (26,'Atum',25.6,0,1,0,8);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (27,'Talher extra',86,0,0,1,9);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (28,'Aveia',32.2,0,1,0,9);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (29,'Quinoa',67.2,0,1,0,9);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (30,'Pão Ezequiel',108.7,0,1,0,10);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (31,'Pães Caseiros',103,0,1,0,10);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (32,'Feijão verde',37.7,0,1,0,10);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (33,'Feijão',40.4,0,1,0,11);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (34,'Lentilhas',55.2,0,1,0,11);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (35,'Batata frita',39.2,0,1,0,11);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (36,'Pastel',10.6,0,1,0,12);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (37,'Coxinha',12.1,0,1,0,12);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (38,'Sonho de Valsa',35.1,0,1,0,12);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (39,'Amandita',23.7,0,1,0,13);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (40,'Baconzitos',49.3,0,1,0,13);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (41,'Pururuca',86.1,0,1,0,13);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (42,'Doritos',98,0,1,0,14);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (43,'Pringles',29,0,1,0,14);
insert into ITEM (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) values (44,'Passatempo',106.4,0,1,0,14);

insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (0,1,1,'789869305923',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (1,0,12,'400636500899',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (2,0,16,'113737611616',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (3,0,12,'108728018627',0);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (4,1,14,'203657147189',0);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (5,0,0,'143549522292',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (6,1,4,'662122880583',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (7,1,11,'593425841607',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (8,0,15,'140482142037',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (9,0,3,'992387009456',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (10,0,0,'143221201534',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (11,0,14,'904681499161',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (12,1,3,'593435870163',1);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (13,1,0,'420901186827',1);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (14,1,9,'657842398722',1);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (15,0,4,'789869305923',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (16,0,16,'400636500899',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (17,1,9,'113737611616',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (18,1,0,'108728018627',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (19,0,16,'203657147189',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (20,0,9,'143549522292',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (21,0,12,'662122880583',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (22,1,8,'593425841607',0);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (23,0,2,'140482142037',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (24,1,4,'992387009456',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (25,1,14,'143221201534',2);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (26,0,5,'904681499161',3);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (27,1,8,'593435870163',1);
insert into COMPRA (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) values (28,0,0,'420901186827',0);

insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (0,0);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (1,0);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (2,0);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (3,1);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (4,1);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (5,1);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (6,2);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (7,2);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (8,2);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (9,3);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (10,3);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (11,3);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (12,4);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (13,4);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (14,4);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (15,5);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (16,5);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (17,5);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (18,6);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (19,6);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (20,6);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (21,7);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (22,7);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (23,7);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (24,8);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (25,8);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (26,8);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (27,9);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (28,9);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (29,9);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (30,10);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (31,10);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (32,10);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (33,11);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (34,11);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (35,11);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (36,12);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (37,12);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (38,12);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (39,13);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (40,13);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (41,13);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (42,14);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (43,14);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (44,14);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (0,15);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (1,15);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (2,15);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (3,16);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (4,16);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (5,16);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (6,17);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (7,17);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (8,17);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (9,18);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (10,18);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (11,18);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (12,19);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (13,19);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (14,19);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (15,20);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (16,20);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (17,20);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (18,21);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (19,21);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (20,21);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (21,22);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (22,22);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (23,22);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (24,23);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (25,23);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (26,23);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (27,24);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (28,24);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (29,24);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (30,25);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (31,25);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (32,25);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (33,26);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (34,26);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (35,26);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (36,27);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (37,27);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (38,27);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (39,28);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (40,28);
insert into ITEM_COMPRA (fk_id_item,fk_id_compra) values (41,28);