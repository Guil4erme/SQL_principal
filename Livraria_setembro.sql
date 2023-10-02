USE MASTER;

DROP DATABASE LIVRARIA;

CREATE DATABASE LIVRARIA;

USE LIVRARIA;

--Cria a tabela Categoria
CREATE TABLE CATEGORIA
(
COD_CATEGORIA INT,
DESCRICAO VARCHAR(50) NOT NULL,
CONSTRAINT PK_CATEGORIA PRIMARY KEY (COD_CATEGORIA)
);

--Inclui dados na tabela Categoria
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (1, 'INFORM�TICA');
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (2, 'DID�TICO');
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (3, 'INFANTO JUVENIL');
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (4, 'INFANTIL');
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (5, 'MEDICINA');
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (6, 'FIC��O CIENT�FICA');

--Cria a tabela Livro
CREATE TABLE LIVRO
(
COD_LIVRO INT,
TITULO VARCHAR(80) NOT NULL,
ANO VARCHAR(4) NOT NULL,
COD_CATEGORIA INT,
CONSTRAINT PK_LIVRO PRIMARY KEY (COD_LIVRO),
CONSTRAINT FK_CATEGORIA	FOREIGN KEY (COD_CATEGORIA) 
REFERENCES CATEGORIA (COD_CATEGORIA)
);
	
--Insere dados na tabela Livro
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (1, 'HARRY POTTER', '2000', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (2, 'PROJETO DE BANCO DE DADOS', '2017', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (3, 'ABC', '2015', 2);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO) VALUES (4, 'ABC2', '2016');
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (5, 'LOGICA', '2016', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (6, 'Harry Potter e a Pedra Filosofal', '1997', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (7, 'Harry Potter e a C�mara Secreta', '1998', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (8, 'Harry Potter e o Prisioneiro de Azkaban', '1999', 3);  
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (9, 'Harry Potter e o C�lice de Fogo', '2000', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (10, 'Harry Potter e a Ordem da F�nix', '2003', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (11, 'Harry Potter e o Enigma do Pr�ncipe', '2005', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (12, 'Harry Potter e as Rel�quias da Morte', '2007', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (13, 'Use a Cabe�a! Desenvolvendo para Android', '2016', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (14, 'Use a Cabe�a! SQL', '2016', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (15, 'Use a Cabe�a! C#', '2008', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (16, 'Vis�es de Rob�', '1994', 6);

--Cria a tabela Autor
CREATE TABLE AUTOR 
(COD_AUTOR INT,
NOME VARCHAR(60) NOT NULL,
DT_NASCIMENTO DATE,
BIOGRAFIA TEXT,
NACIONALIDADE VARCHAR(50) NOT NULL,
CONSTRAINT PK_AUTOR PRIMARY KEY(COD_AUTOR)
);

--Cria a tabela LIVRO_AUTOR
CREATE TABLE LIVRO_AUTOR
(COD_LIVRO INT,
COD_AUTOR INT,
CONSTRAINT PK_LIVRO_AUTOR PRIMARY KEY (COD_AUTOR, COD_LIVRO),
CONSTRAINT FK_LIVRO FOREIGN KEY (COD_LIVRO) REFERENCES LIVRO (COD_LIVRO),
CONSTRAINT FK_AUTOR FOREIGN KEY (COD_AUTOR) REFERENCES AUTOR (COD_AUTOR)
);

--INSERINDO DADOS NA TABELA AUTOR
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (1, 'J.K. Rolling', '31/07/1965', 'Joanne "Jo" Rowling, OBE, FRSL, mais conhecida como J. K. Rowling, é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.', 'Britânica'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (2, 'Ana dos Santos', '10/02/1970', 'Ana dos Santos, escritora e professora de ensino fundamental.', 'Brasileira'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (3, 'Jo�o da Silva', '20/10/1975', 'João da Silva, famoso pedagogo e profesora de ensino infantil.', 'Brasileira'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (4, 'Felipe Ferreira', '20/01/1980', 'Felipe Ferreira, administrador de dados e programador.', 'Brasileira'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (5, 'Fabio dos Santos', '30/03/1981', 'Fabio dos Santos, programador e escritor.', 'Brasileira'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, BIOGRAFIA, NACIONALIDADE) VALUES (6, 'Dawn Griffiths', 'Dawn Griffiths�come�ou sua vida como matem�tica em uma das melhores universidades do Reino Unido. Chegou a receber o grau de First-Class Honours em Matem�tica, mas rejeitou uma bolsa de PhD para estudar esp�cies particularmente raras de equa��es diferenciais quando percebeu que as pessoas deixariam de conversar com ela nas festas. Em vez disso, seguiu sua carreira em desenvolvimento de softwares e atualmente combina consultoria em TI com Matem�tica e com ser escritora.', 'BRIT�NICA');
INSERT INTO AUTOR (COD_AUTOR, NOME, BIOGRAFIA, NACIONALIDADE) VALUES (7, 'David Griffiths', 'David Griffiths�come�ou a programar com 12 anos, quando viu um document�rio sobre o trabalho de Seymour Papert. Com 15 anos, escreveu uma implementa��o da linguagem de computador LOGO de Papert. Depois de estudar Matem�tica Pura na Universidade, come�ou a escrever c�digo para computadores e artigos de revista para seres humanos. Ele trabalhou como treinador �gil, desenvolvedor e atendente de garagem, mas n�o necessariamente nessa ordem. Ele escreveu c�digos em mais de 10 linguagens e se expressa em apenas uma, e quando n�o est� escrevendo ou treinando, passa grande parte de seu tempo livre viajando com sua ador�vel esposa � e companheira do autor Use a Cabe�a � Dawn.', 'BRIT�NICA');
INSERT INTO AUTOR (COD_AUTOR, NOME, NACIONALIDADE) VALUES (8, 'Lynn Beighley', 'AMERICANA');
INSERT INTO AUTOR (COD_AUTOR, NOME, NACIONALIDADE) VALUES (9, 'Andrew Stellman', 'AMERICANA');
INSERT INTO AUTOR (COD_AUTOR, NOME, NACIONALIDADE) VALUES (10, 'Jennifer Greene', 'AMERICANA'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, BIOGRAFIA, NACIONALIDADE) VALUES (11, 'Isaac Asimov', 'Isaac Asimov foi um escritor e bioqu�mico americano, nascido na R�ssia, autor de obras de fic��o cient�fica e divulga��o cient�fica.', 'RUSSA');

--INSERINDO DADOS NA TABELA LIVRO_AUTOR
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (1, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (2, 3);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (3, 3);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (2, 4);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (4, 2);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (5, 5);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (6, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (7, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (8, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (9, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (10, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (11, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (12, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (13, 6);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (13, 7);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (14, 8);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (15, 9);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (15, 10);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (16, 11);

-- Adicionando os campos PRECO e QTDE_PAGINAS na 
-- tabela Livro
ALTER TABLE LIVRO 
ADD PRECO DECIMAL (5,2),
	QTDE_PAGINAS DECIMAL(5)

--1 EXCLUI A COLUNA NACIONALIDADE DA TABELA AUTOR
ALTER TABLE AUTOR DROP COLUMN NACIONALIDADE

--2 CRIAR A TABELA NACIONALIDADE
CREATE TABLE NACIONALIDADE
(COD_NAC INT,
NACIONALIDADE VARCHAR(60),
CONSTRAINT PK_NAC PRIMARY KEY (COD_NAC) 
)
--3 RELACIONAR AS TABELAS NACIONALIDADE E Autor
--3.1 CRIAR A COLUNA COD_NAC NA TABELA Autor
ALTER TABLE AUTOR ADD COD_NAC INT
--3.2 CRIAR CONSTRAINT DE FK_AUTOR
ALTER TABLE AUTOR 
		ADD CONSTRAINT FK_NAC FOREIGN KEY (COD_NAC) 
		REFERENCES NACIONALIDADE (COD_NAC)
		
	
INSERT INTO NACIONALIDADE (COD_NAC, NACIONALIDADE) VALUES (1,'Brasileira')
INSERT INTO NACIONALIDADE (COD_NAC, NACIONALIDADE) VALUES (2,'Brit�nica')
INSERT INTO NACIONALIDADE (COD_NAC, NACIONALIDADE) VALUES (3,'Americana')
INSERT INTO NACIONALIDADE (COD_NAC, NACIONALIDADE) VALUES (4,'Russa')
INSERT INTO NACIONALIDADE (COD_NAC, NACIONALIDADE) VALUES (5,'Angolana')
INSERT INTO NACIONALIDADE (COD_NAC, NACIONALIDADE) VALUES (6,'Argentina')


-- Atualiza a Nacionalidade de todos os autores para Brasileira
UPDATE AUTOR SET COD_NAC = 1


 -- AUTORES BRIT�NICOS
UPDATE AUTOR SET COD_NAC = 2
WHERE COD_AUTOR IN (1, 6, 7)

 -- AUTORES AMERICANOS
UPDATE AUTOR SET COD_NAC = 4
WHERE COD_AUTOR IN (8, 9, 10)

 -- AUTOR RUSSO
UPDATE AUTOR SET COD_NAC = 3
WHERE COD_AUTOR = 11


-- CRIAR TABELA CLIENTE

CREATE TABLE CLIENTE
(COD_CLIENTE INT NOT NULL IDENTITY  (1,1),
NOME VARCHAR (70) NOT NULL,
CPF VARCHAR (11) NOT NULL,
GENERO CHAR (1) NOT NULL,
ATIVO CHAR (1),
CONSTRAINT PK_CLIENTE PRIMARY KEY (COD_CLIENTE),
CONSTRAINT UQ_CPF_CLIENTE UNIQUE (CPF)
)


select * from CLIENTE

INSERT INTO CLIENTE VALUES('Ana Tereza de a. Vasques','11111111111' , 'F', 'A')

INSERT INTO CLIENTE VALUES ('Briza Silva Brasil','11111111112' ,'F', 'A')