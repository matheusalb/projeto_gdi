INSERT INTO pessoa (cpf, nome, idade) VALUES ('66611758912','Lourdes',65);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('77040126703','Marinalva',55);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('31181980767','Marlene',54);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('16488774610','Mirtes',56);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('19064102185','Neide',86);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('13538263165','Neusa',59);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('34661547204','Odete',65);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('22831798477','Pedrina',64);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('25540323029','Quitéria',78);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('44826720733','Romilda',77);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('86908459173','Risoleta',88);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('80473699248','Eustáquio',87);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('17115826052','Felizardo',89);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('60386358687','Gérson',67);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('52362568727','Gilson',96);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('34671626240','Godofredo',87);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('19374182477','Heraldo',67);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('88551487780','Hilário',87);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('94418755363','Hildebrando',73);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('59545223684','Inocêncio',65);
INSERT INTO pessoa (cpf, nome, idade) VALUES ('28146826229','Jurandir',74);

INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (0,1,'66611758912',0);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (1,0,'77040126703',0);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (2,0,'31181980767',0);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (3,0,'16488774610',0);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (4,0,'19064102185',0);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (5,0,'13538263165',0);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (6,1,'34661547204',6);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (7,0,'22831798477',6);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (11,1,'80473699248',11);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (12,0,'17115826052',11);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (13,0,'60386358687',11);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (14,0,'52362568727',11);
INSERT INTO funcionario (codigo_funcionario,socio,fk_cpf_pessoa,fk_codigo_supervisor) VALUES (15,0,'34671626240',11);

INSERT INTO marketing (fk_codigo_funcionario) VALUES (13);
INSERT INTO marketing (fk_codigo_funcionario) VALUES (14);

INSERT INTO po (fk_codigo_funcionario) VALUES (14);

INSERT INTO business (fk_codigo_funcionario) VALUES (3);

INSERT INTO dev (fk_codigo_funcionario) VALUES (6); -- socio dev
INSERT INTO dev (fk_codigo_funcionario) VALUES (7);

INSERT INTO designer (fk_codigo_funcionario) VALUES (2);

INSERT INTO entregador (codigo_entregador, fk_cpf_pessoa) VALUES (0,'19064102185');
INSERT INTO entregador (codigo_entregador, fk_cpf_pessoa) VALUES (1,'22831798477');
INSERT INTO entregador (codigo_entregador, fk_cpf_pessoa) VALUES (2,'86908459173');
INSERT INTO entregador (codigo_entregador, fk_cpf_pessoa) VALUES (3,'19374182477');

INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (0,'Rua Ladrilhada','Água Fria','casa',210,921455919,31181980767);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (1,'Quatorze','Alto J Bonifácio','casa',239,993925052,16488774610);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (2,'Sao Francisco','Alto José do Pinho','apt',7,929454644,19064102185);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (3,'Sete de Setembro','Alto do Mandu','casa',220,948517741,13538263165);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (4,'Aurora','Bomba do Hemetério','apt',117,958750172,34661547204);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (5,'Dezesseis','Bongi','casa',66,956829503,22831798477);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (6,'Quinze De Novembro','Campo Grande','casa',61,970178051,25540323029);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (7,'Groove Street','Casa Amarela','casa',139,946805529,44826720733);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (8,'Tiradentes','Casa Forte','apt',162,966180034,86908459173);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (9,'Dezessete','Santo Amaro','casa',134,986877742,80473699248);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (10,'Agamenom','Santo Antônio','casa',178,972773873,17115826052);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (11,'Estrada Velha','São José','apt',18,979036833,60386358687);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (12,'Vinte','Várzea','apt',231,949974126,52362568727);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (13,'Bahia','Vasco da Gama','casa',213,939133444,34671626240);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (14,'Amazonas','Campo Grande','casa',47,947521884,19374182477);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (15,'Dezoito','Várzea','casa',192,992698192,88551487780);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (16,'Sao Sebastiao','Bomba do Hemetério','apt',110,983055359,94418755363);
INSERT INTO cliente (codigo_cliente,rua,bairro,complemento,numero,telefone,fk_cpf_pessoa) VALUES (17,'Cachorro','Bomba do Hemetério','casa',202,977827929,59545223684);

INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('789869305923','Sujinho','Ceara','Água Fria','casa',25,1,0,1,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('400636500899','Pé pra Fora','Rua 10','Alto J Bonifácio','casa',145,0,0,1,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('113737611616','Galinheiro','Belo Horizonte','Várzea','galeria',120,0,1,0,1);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('108728018627','Facebuguer','Das Flores','Alto do Mandu','casa',3,0,0,1,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('203657147189','O Senhor dos Pasteis','Sergipe','Bomba do Hemetério','galeria',78,0,0,0,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('143549522292','Bar dos Otários','Vitoria','Bongi','casa',144,1,0,0,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('662122880583','Demorô','José Bonifácio','Campo Grande','casa',117,0,1,1,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('593425841607','Pobr’s','Pernambuco','Casa Amarela','casa',66,0,0,1,1);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('140482142037','Facefood','Piauí','Casa Forte','galeria',26,0,0,1,1);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('992387009456','Churrassic Park','Vinte e Três','Santo Amaro','casa',88,0,0,0,1);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('143221201534','Suburbioway','Rua 9','Santo Antônio','casa',20,0,0,1,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('904681499161','Bar da Mosca','Mato Grosso','São José','galeria',45,0,0,0,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('593435870163','Manguaça','Santa Maria','Várzea','galeria',149,1,0,0,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('420901186827','Gato Doido','Dom Pedro II','Vasco da Gama','casa',26,1,0,0,0);
INSERT INTO estabelecimento (cnpj,nome,rua,bairro,complemento,numero,bar,cafeteria,lanchonete,restaurante) VALUES ('657842398722','Pai','Primeiro de Maio','Campo Grande','galeria',15,0,1,1,1);

INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('958796967','911299867','789869305923');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('983818928','965181949','400636500899');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('927385212','978802939','113737611616');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('982495363','981534334','108728018627');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('930607143','992324987','203657147189');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('967648714','934406938','143549522292');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('928612889','923938057','662122880583');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('940569432','910161890','593425841607');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('938404437','924676317','140482142037');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('932791920','936695555','992387009456');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('926746504','911199848','143221201534');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('900130878','952360483','904681499161');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('902019428','988689301','593435870163');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('931478118','939609238','420901186827');
INSERT INTO telefone_estabelecimento (telefone_1, telefone_2, fk_cnpj_estabelecimento) VALUES ('952041041','941936007','657842398722');

INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (0,'789869305923');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (1,'400636500899');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (2,'113737611616');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (3,'108728018627');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (4,'203657147189');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (5,'143549522292');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (6,'662122880583');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (7,'593425841607');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (8,'140482142037');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (9,'992387009456');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (10,'143221201534');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (11,'904681499161');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (12,'593435870163');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (13,'420901186827');
INSERT INTO cardapio (id_cardapio, fk_cnpj_estabelecimento) VALUES (14,'657842398722');

INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (0,'Maçã',27.2,0,1,0,0);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (1,'Abacate',107.9,0,1,0,0);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (2,'Banana',79,0,1,0,0);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (3,'Mirtilo',114.3,0,1,0,1);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (4,'Laranja',99.8,0,1,0,1);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (5,'Morango',42.1,0,1,0,1);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (6,'Guardanapo',59.4,0,0,1,2);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (7,'Hashi',84.3,0,0,1,2);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (8,'Carne bovina',44.7,0,1,0,2);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (9,'Suco de laranja',22.7,1,0,0,3);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (10,'Cordeiro',55.8,0,1,0,3);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (11,'Amêndoas',20.3,0,1,0,3);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (12,'Sementes de Chia',118.7,0,1,0,4);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (13,'Cocos',85,0,1,0,4);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (14,'Macadâmia',106.6,0,1,0,4);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (15,'Nozes',68.5,0,1,0,5);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (16,'Alho',44.7,0,1,0,5);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (17,'Couve',89.2,0,1,0,5);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (18,'Pepsi',94.2,1,0,0,6);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (19,'Tomates',99.6,0,1,0,6);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (20,'Cebola caramelizada',81,0,1,0,6);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (21,'Salmão',67.1,0,1,0,7);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (22,'Sardinhas',109.3,0,1,0,7);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (23,'Crustáceos',45.3,0,1,0,7);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (24,'Coca-cola',112.1,1,0,0,8);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (25,'Truta',74.3,0,1,0,8);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (26,'Atum',25.6,0,1,0,8);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (27,'Talher extra',86,0,0,1,9);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (28,'Aveia',32.2,0,1,0,9);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (29,'Quinoa',67.2,0,1,0,9);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (30,'Pão Ezequiel',108.7,0,1,0,10);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (31,'Pães Caseiros',103,0,1,0,10);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (32,'Feijão verde',37.7,0,1,0,10);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (33,'Feijão',40.4,0,1,0,11);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (34,'Lentilhas',55.2,0,1,0,11);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (35,'Batata frita',39.2,0,1,0,11);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (36,'Pastel',10.6,0,1,0,12);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (37,'Coxinha',12.1,0,1,0,12);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (38,'Sonho de Valsa',35.1,0,1,0,12);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (39,'Amandita',23.7,0,1,0,13);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (40,'Baconzitos',49.3,0,1,0,13);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (41,'Pururuca',86.1,0,1,0,13);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (42,'Doritos',98,0,1,0,14);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (43,'Pringles',29,0,1,0,14);
INSERT INTO item (id_item,nome_item,preco,bebida,comida,utensilio,fk_id_cardapio) VALUES (44,'Passatempo',106.4,0,1,0,14);

INSERT INTO comida (fk_id_item) VALUES (0);
INSERT INTO comida (fk_id_item) VALUES (1);
INSERT INTO comida (fk_id_item) VALUES (2);
INSERT INTO comida (fk_id_item) VALUES (3);
INSERT INTO comida (fk_id_item) VALUES (4);
INSERT INTO comida (fk_id_item) VALUES (5);
INSERT INTO comida (fk_id_item) VALUES (8);
INSERT INTO comida (fk_id_item) VALUES (10);
INSERT INTO comida (fk_id_item) VALUES (11);
INSERT INTO comida (fk_id_item) VALUES (12);
INSERT INTO comida (fk_id_item) VALUES (13);
INSERT INTO comida (fk_id_item) VALUES (14);
INSERT INTO comida (fk_id_item) VALUES (15);
INSERT INTO comida (fk_id_item) VALUES (16);
INSERT INTO comida (fk_id_item) VALUES (17);
INSERT INTO comida (fk_id_item) VALUES (19);
INSERT INTO comida (fk_id_item) VALUES (20);
INSERT INTO comida (fk_id_item) VALUES (21);
INSERT INTO comida (fk_id_item) VALUES (22);
INSERT INTO comida (fk_id_item) VALUES (23);
INSERT INTO comida (fk_id_item) VALUES (25);
INSERT INTO comida (fk_id_item) VALUES (26);
INSERT INTO comida (fk_id_item) VALUES (28);
INSERT INTO comida (fk_id_item) VALUES (29);
INSERT INTO comida (fk_id_item) VALUES (30);
INSERT INTO comida (fk_id_item) VALUES (31);
INSERT INTO comida (fk_id_item) VALUES (32);
INSERT INTO comida (fk_id_item) VALUES (33);
INSERT INTO comida (fk_id_item) VALUES (34);
INSERT INTO comida (fk_id_item) VALUES (35);
INSERT INTO comida (fk_id_item) VALUES (36);
INSERT INTO comida (fk_id_item) VALUES (37);
INSERT INTO comida (fk_id_item) VALUES (38);
INSERT INTO comida (fk_id_item) VALUES (39);
INSERT INTO comida (fk_id_item) VALUES (40);
INSERT INTO comida (fk_id_item) VALUES (41);
INSERT INTO comida (fk_id_item) VALUES (42);
INSERT INTO comida (fk_id_item) VALUES (43);
INSERT INTO comida (fk_id_item) VALUES (44);

INSERT INTO bebida (fk_id_item) VALUES (9);
INSERT INTO bebida (fk_id_item) VALUES (18);
INSERT INTO bebida (fk_id_item) VALUES (24);

INSERT INTO utensilio (fk_id_item) VALUES (6);
INSERT INTO utensilio (fk_id_item) VALUES (7);
INSERT INTO utensilio (fk_id_item) VALUES (27);

INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (0,1,1,'789869305923',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (1,0,12,'400636500899',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (2,0,16,'113737611616',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (3,0,12,'108728018627',0);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (4,1,14,'203657147189',0);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (5,0,0,'143549522292',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (6,1,4,'662122880583',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (7,1,11,'593425841607',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (8,0,15,'140482142037',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (9,0,3,'992387009456',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (10,0,0,'143221201534',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (11,0,14,'904681499161',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (12,1,3,'593435870163',1);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (13,1,0,'420901186827',1);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (14,1,9,'657842398722',1);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (15,0,4,'789869305923',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (16,0,16,'400636500899',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (17,1,9,'113737611616',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (18,1,0,'108728018627',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (19,0,16,'203657147189',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (20,0,9,'143549522292',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (21,0,12,'662122880583',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (22,1,8,'593425841607',0);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (23,0,2,'140482142037',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (24,1,4,'992387009456',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (25,1,14,'143221201534',2);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (26,0,5,'904681499161',3);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (27,1,8,'593435870163',1);
INSERT INTO compra (id_compra,forma_pagamento,fk_codigo_cliente,fk_cnpj_estabelecimento,fk_codigo_entregador) VALUES (28,0,0,'420901186827',0);

INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (0,0);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (1,0);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (2,0);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (3,1);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (4,1);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (5,1);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (6,2);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (7,2);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (8,2);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (9,3);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (10,3);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (11,3);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (12,4);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (13,4);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (14,4);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (15,5);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (16,5);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (17,5);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (18,6);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (19,6);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (20,6);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (21,7);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (22,7);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (23,7);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (24,8);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (25,8);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (26,8);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (27,9);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (28,9);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (29,9);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (30,10);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (31,10);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (32,10);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (33,11);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (34,11);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (35,11);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (36,12);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (37,12);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (38,12);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (39,13);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (40,13);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (41,13);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (42,14);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (43,14);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (44,14);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (0,15);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (1,15);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (2,15);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (3,16);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (4,16);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (5,16);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (6,17);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (7,17);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (8,17);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (9,18);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (10,18);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (11,18);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (12,19);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (13,19);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (14,19);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (15,20);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (16,20);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (17,20);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (18,21);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (19,21);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (20,21);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (21,22);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (22,22);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (23,22);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (24,23);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (25,23);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (26,23);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (27,24);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (28,24);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (29,24);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (30,25);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (31,25);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (32,25);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (33,26);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (34,26);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (35,26);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (36,27);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (37,27);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (38,27);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (39,28);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (40,28);
INSERT INTO item_compra (fk_id_item,fk_id_compra) VALUES (41,28);