CREATE TABLE usuario (
    idusuario SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(60) UNIQUE NOT NULL,
    dtnasc DATE NOT NULL,
);

select * from usuario;

CREATE TABLE carteiras (
    idcarteira SERIAL PRIMARY KEY,
    idusuario INTEGER REFERENCES usuario(idusuario),
    nome_da_carteira VARCHAR(50) NOT NULL
);
select * from carteiras;


CREATE TABLE acoes (
    idacoes SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cod VARCHAR(10) UNIQUE NOT NULL
);
select * from acoes;

CREATE TABLE etfs (
    id_etf SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cod VARCHAR(10) UNIQUE NOT NULL
);
select * from etfs;

CREATE TABLE fundos_imobiliarios (
    idfundo SERIAL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    cod VARCHAR(10) UNIQUE NOT NULL,
    ti VARCHAR(50) NOT NULL
);
select * from fundos_imobiliarios;

CREATE TABLE criptomoedas (
    idcriptomoeda SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    simbolo VARCHAR(10) UNIQUE NOT NULL
);
select * from criptomoedas;

CREATE TABLE preco_acoes (
    idpreco SERIAL PRIMARY KEY,
    idacoes INTEGER REFERENCES acoes(idacoes),
    data DATE NOT NULL,
    preco float NOT NULL
);

select * from preco_acoes;

CREATE TABLE etf_preco (
     idpreco SERIAL PRIMARY KEY,
     idetf INTEGER REFERENCES etfs(id_etf),
     data DATE NOT NULL,
     preco float NOT NULL
);
select * from etf_preco;

CREATE TABLE precos_fundos(
    idpreco SERIAL PRIMARY KEY,
    idfundo INTEGER REFERENCES fundos_imobiliarios(idfundo),
    data DATE NOT NULL,
    preco float NOT NULL
);
select * from precos_fundos;

CREATE TABLE precos_criptomoedas (
    idpreco SERIAL PRIMARY KEY,
    idcriptomoeda INTEGER REFERENCES criptomoedas(idcriptomoeda),
    data DATE NOT NULL,
    preco float NOT NULL
	
);
select * from precos_criptomoedas;

CREATE TABLE ativos_carteira (
    idativo SERIAL PRIMARY KEY,
    idcarteira INTEGER REFERENCES carteiras(idcarteira),
    tipo_de_ativo VARCHAR(20) NOT NULL,
    id_do_ativo_tipo INTEGER NOT NULL
);

select * from usuario;

insert into usuario( nome, cpf, email, dtnasc) values
	( 'Fulano', '00000000000', 'fulano@gmail.com', '1997-05-05');
insert into usuario( nome, cpf, email, dtnasc) values
	('Ciclano', '11111111111', 'ciclano@gmail.com', '1990-09-12');
insert into usuario( nome, cpf, email, dtnasc) values
	('Beltrano', '22222222222', 'beltrano@gmail.com', '1994-03-22');
insert into usuario( nome, cpf, email, dtnasc) values
	('Jose', '33333333333', 'jose@gmail.com', '1982-08-12');
insert into usuario( nome, cpf, email, dtnasc) values
	('Maria', '44444444444', 'maria@gmail.com', '1994-03-22');
insert into usuario( nome, cpf, email, dtnasc) values
	('Alice', '55555555555', 'alice@gmail.com',  '1990-12-12');
insert into usuario( nome, cpf, email, dtnasc) values
	('Camila', '66666666666', 'camila@gmail.com', '1980-11-08');
insert into usuario( nome, cpf, email, dtnasc) values
	('Amanda', '77777777777', 'amanda@gmail.com', '1984-09-07');

select * from usuario;

select * from carteiras;
insert into carteiras( idusuario, nome_da_carteira) values
	(2,'Carteira de investimentos');
insert into carteiras( idusuario, nome_da_carteira) values
	(3,'Minha Carteira');
insert into carteiras( idusuario, nome_da_carteira) values
	(4,'Carteira');
insert into carteiras( idusuario, nome_da_carteira) values
	(5,'Investimentos');
insert into carteiras( idusuario, nome_da_carteira) values
	(6,'Carteira Maria');
insert into carteiras( idusuario, nome_da_carteira) values
	(7,'Carteira Alice');
insert into carteiras( idusuario, nome_da_carteira) values
	(8,'Carteira Camila');
insert into carteiras( idusuario, nome_da_carteira) values
	(9,'Carteira da Amanda');

insert into acoes( nome, cod )values('BB. Investimentos', '010');
insert into acoes( nome, cod )values('FK', '011');
insert into acoes( nome, cod )values('JG. Investimentos', '012');
insert into acoes( nome, cod )values('LK. Invest', '013');
insert into acoes( nome, cod )values('MK. Investimentos', '014');
insert into acoes( nome, cod )values('PS. Invest', '015');

select * from acoes;

insert into etfs (nome, cod) values ('ETF A', '001');
insert into etfs (nome, cod) values ('ETF B', '002');
insert into etfs (nome, cod) values ('ETF C', '003');
insert into etfs (nome, cod) values ('ETF D', '004');
insert into etfs (nome, cod) values ('ETF E', '005');

select * from etfs;

insert into fundos_imobiliarios (nome, cod, ti) values ('IMB Fundo Imobiliário', 'III', 'Escritório');
insert into fundos_imobiliarios (nome, cod, ti) values ('JJK Fundo Imobiliário', 'IVI', 'Shopping');
insert into fundos_imobiliarios (nome, cod, ti) values ('MBL Fundo Imobiliário', 'IV', 'Residencial');

select * from fundos_imobiliarios; 

insert into criptomoedas (nome, simbolo) values ('Bitcoin', 'BTC');
insert into criptomoedas (nome, simbolo) values ('Ethereum', 'ETH');
insert into criptomoedas (nome, simbolo) values ('Shiba Inu', 'SHIB');
insert into criptomoedas (nome, simbolo) values ('Ripple', 'XRP');

select * from criptomoedas; 

insert into preco_acoes (idacoes, data, preco) values (1, '2024-06-09', 140.00);
insert into preco_acoes (idacoes, data, preco) values (2, '2024-06-09', 590.00);
insert into preco_acoes (idacoes, data, preco) values (3, '2024-06-09', 109.50);
insert into preco_acoes (idacoes, data, preco) values (4, '2024-06-09', 230.75);
insert into preco_acoes (idacoes, data, preco) values (5, '2024-06-09', 90.00);
insert into preco_acoes (idacoes, data, preco) values (6, '2024-06-09', 55.50);
insert into preco_acoes (idacoes, data, preco) values (1, '2024-06-10', 145.00);
insert into preco_acoes (idacoes, data, preco) values (2, '2024-06-10', 540.00);
insert into preco_acoes (idacoes, data, preco) values (3, '2024-06-10', 102.50);
insert into preco_acoes (idacoes, data, preco) values (4, '2024-06-10', 239.75);
insert into preco_acoes (idacoes, data, preco) values (5, '2024-06-10', 99.00);
insert into preco_acoes (idacoes, data, preco) values (6, '2024-06-10', 51.50);

select * from preco_acoes;

insert into etf_preco (idetf, data, preco) values (1, '2024-06-09', 90.00);
insert into etf_preco (idetf, data, preco) values (1, '2024-06-10', 92.00);
insert into etf_preco (idetf, data, preco) values (2, '2024-06-09', 490.00);
insert into etf_preco (idetf, data, preco) values (2, '2024-06-10', 420.00);
insert into etf_preco (idetf, data, preco) values (3, '2024-06-09', 350.00);
insert into etf_preco (idetf, data, preco) values (3, '2024-06-10', 380.00);
insert into etf_preco (idetf, data, preco) values (4, '2024-06-09', 55.00);
insert into etf_preco (idetf, data, preco) values (4, '2024-06-10', 59.00);
insert into etf_preco (idetf, data, preco) values (5, '2024-06-09', 20.00);
insert into etf_preco (idetf, data, preco) values (5, '2024-06-10', 21.00);

select * from etf_preco;

insert into precos_fundos (idfundo, data, preco) values (1, '2024-06-10', 100.00 );
insert into precos_fundos (idfundo, data, preco) values (2, '2024-06-09', 112.00 );
insert into precos_fundos (idfundo, data, preco) values (3, '2024-06-10', 110.00 );
insert into precos_fundos (idfundo, data, preco) values (1, '2024-06-09', 120.00 );
insert into precos_fundos (idfundo, data, preco) values (2, '2024-06-10', 122.00 );
insert into precos_fundos (idfundo, data, preco) values (3, '2024-06-09', 123.00 );

select * from precos_fundos;

insert into precos_criptomoedas (idcriptomoeda, data, preco ) values (1, '2024-06-09', 352.000);
insert into precos_criptomoedas (idcriptomoeda, data, preco ) values (2, '2024-06-09', 200.000);
insert into precos_criptomoedas (idcriptomoeda, data, preco ) values (3, '2024-06-09', 5.50);
insert into precos_criptomoedas (idcriptomoeda, data, preco ) values (4, '2024-06-09', 100.000);
insert into precos_criptomoedas (idcriptomoeda, data, preco ) values (1, '2024-06-10', 369.000);
insert into precos_criptomoedas (idcriptomoeda, data, preco ) values (2, '2024-06-10', 198.000);
insert into precos_criptomoedas (idcriptomoeda, data, preco ) values (3, '2024-06-10', 6.00);
insert into precos_criptomoedas (idcriptomoeda, data, preco ) values (4, '2024-06-10', 102.000);

select * from precos_criptomoedas;

INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (1, 'Ações', 1);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (1, 'Ações', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (1, 'ETFs', 1);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (1, 'Fundos Imobiliários', 1);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (1, 'Criptomoedas', 1);

INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (2, 'Ações', 3);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (2, 'Ações', 4);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (2, 'ETFs', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (2, 'Fundos Imobiliários', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (2, 'Criptomoedas', 2);

INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (3, 'Ações', 5);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (3, 'Ações', 6);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (3, 'ETFs', 3);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (3, 'Fundos Imobiliários', 3);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (3, 'Criptomoedas', 3);

INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (4, 'Ações', 1);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (4, 'Ações', 4);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (4, 'ETFs', 5);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (4, 'Fundos Imobiliários', 1);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (4, 'Criptomoedas', 4);

INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (5, 'Ações', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (5, 'Ações', 3);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (5, 'ETFs', 4);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (5, 'Fundos Imobiliários', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (5, 'Criptomoedas', 1);

INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (6, 'Ações', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (6, 'Ações', 3);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (6, 'ETFs', 4);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (6, 'Fundos Imobiliários', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (6, 'Criptomoedas', 1);


INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (7, 'Ações', 3);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (7, 'Ações', 4);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (7, 'ETFs', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (7, 'Fundos Imobiliários', 2);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (7, 'Criptomoedas', 2);

INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (8, 'Ações', 5);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (8, 'Ações', 6);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (8, 'ETFs', 3);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (8, 'Fundos Imobiliários', 3);
INSERT INTO ativos_carteira (idcarteira, tipo_de_ativo, id_do_ativo_tipo) VALUES (8, 'Criptomoedas', 3);

select * from ativos_carteira;

SELECT * FROM acoes WHERE nome = 'BB. Investimentos';
SELECT * FROM etf_preco WHERE idetf = 1 AND data BETWEEN '2024-06-01' AND '2024-06-10';
SELECT * FROM fundos_imobiliarios WHERE ti = 'Escritório';

SELECT (preco_final - preco_inicial) / preco_inicial * 100 AS rentabilidade
FROM (
    SELECT (SELECT preco FROM preco_acoes WHERE idacoes = 1 AND data = '2024-06-10') AS preco_final,
           (SELECT preco FROM preco_acoes WHERE idacoes = 1 AND data = '2024-06-09') AS preco_inicial
) AS subquery;

SELECT * FROM ativos_carteira WHERE idcarteira = 2;

	

