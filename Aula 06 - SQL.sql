-- CRIACAO DE TABELAS

CREATE TABLE Canal (
CanalId INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
ContagemInscritos INT DEFAULT 0,
DataCriacao DATETIME NOT NULL
);

CREATE TABLE Video (
VideoId INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
Visualizacoes INT DEFAULT 0,
Likes INT DEFAULT 0,
Dislikes INT DEFAULT 0,
Duracao INT NOT NULL,
CanaliId INT FOREIGN KEY REFERENCES Canal(CanalId) 
);

SELECT * 
FROM Canal;

SELECT * 
FROM Video;

DELETE Canal;



-- SELECT INTO - PREENCHIMENTO DE TABELAS

SELECT * INTO TabelaNova
FROM Canal;

SELECT * 
FROM TabelaNova;

INSERT INTO Canal(CanalId,Nome,ContagemInscritos,DataCriacao)
VALUES 
(1,'Eduardo',800,'16/03/2023'),
(2,'Marina',1800,'16/03/2023'),
(3,'Julia',770,'18/03/2023'),
(4,'Fernando',500,'12/03/2023'),
(5,'Davi',660,'08/03/2023');


-- UPDATE - ATUALIZACAO DE TABELAS
SELECT * 
FROM Canal;

UPDATE Canal
SET CanalId = 7,
    Nome = 'David'
WHERE CanalId = 5;


-- DELETE - APAGAR DADOS DE TABELAS

SELECT * 
FROM Canal;

DELETE FROM Canal
WHERE Nome = 'Julia';

DELETE Canal;

TRUNCATE TABLE Canal;



-- ALTER TABLE - AJUSTAR COLUNAS DE TABELAS

SELECT * 
FROM Canal;

ALTER TABLE Canal
ADD Novo BIT,
    Col VARCHAR(12); 

ALTER TABLE Canal
ALTER COLUMN Novo VARCHAR(30);

ALTER TABLE Canal
ALTER COLUMN Col VARCHAR(15);


EXEC sp_rename 'CANAL.NOVO','New','COLUMN' -- MUDAR NOME DE COLUNA

EXEC sp_rename 'CANAL','CANAL1' -- MUDAR DA TABELA

ALTER TABLE Canal
DROP COLUMN New;

ALTER TABLE Canal
DROP COLUMN Col;


-- DROP TABLE - REMOVER TABELAS

DROP TABLE Video;

DROP TABLE Canal;

SELECT * 
FROM Canal;

SELECT * 
FROM Video;



-- CONSTRAINT

CREATE TABLE Canal (
CanalId INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
ContagemInscritos INT DEFAULT 0,
Idade INT CHECK(Idade >= 18),
Codigo INT NOT NULL UNIQUE
);


INSERT INTO Canal (CanalId,Nome,ContagemInscritos,Idade,Codigo)
VALUES (1, 'Eduardo', 200, 15,20000);

INSERT INTO Canal (CanalId,Nome,ContagemInscritos,Idade,Codigo)
VALUES (1, 'Eduardo', 200, 18, 20000);

INSERT INTO Canal (CanalId,Nome,ContagemInscritos,Idade,Codigo)
VALUES (2, , 400, 20, 30000);

INSERT INTO Canal (CanalId,Nome,ContagemInscritos,Idade,Codigo)
VALUES (3, 'Eduardo', 400, 20, 20000);


-- COMANDO VIEW - SALVANDO UMA TABELA APOS CONSULTA

CREATE VIEW [TABELA 1] AS
SELECT * 
FROM Canal;

DROP VIEW [TABELA 1];

SELECT * 
FROM [TABELA 1];