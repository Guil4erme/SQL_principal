CREATE DATABASE EVOBODY2
GO

USE EVOBODY2

CREATE TABLE CLIENTE(
COD_CLIENTE INT PRIMARY KEY,
NOME VARCHAR(30),
NUM_RES VARCHAR(20),
TELEFONE VARCHAR(12),
PONTOS INT,
CEP INT);

GO

CREATE TABLE ENDERECO(
CEP INT PRIMARY KEY,
ESTADO VARCHAR(2),
CIDADE VARCHAR(30),
LOGRADOURO VARCHAR(100)
);
GO


CREATE TABLE PEDIDO(
COD_PEDIDO INT PRIMARY KEY,
DATA_PEDIDO DATETIME,
VALOR DECIMAL(10,2),
COD_CLIENTE INT
);
GO

CREATE TABLE CUPOM(
COD_CUPOM VARCHAR(30),
PONTO_CUPOM INT,
DESC_CUPOM VARCHAR(30),
VALIDADE DATETIME,
VALOR INT,
COD_CLIENTE INT
);
GO