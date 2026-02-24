CREATE DATABASE db_colegio_alfa;

USE db_colegio_alfa;

CREATE TABLE tb_colegio_alfa(
	id bigint AUTO_INCREMENT PRIMARY KEY, 
    nome varchar(255) NOT NULL,
    cpf char(11) NOT NULL UNIQUE,
    data_nascimento DATE,
    turno varchar(20),  -- Manhã / Tarde / Noite
    media_geral decimal (4, 2) NOT NULL,
    CHECK (cpf REGEXP '^[0-9]{11}$')
);

INSERT INTO tb_colegio_alfa(nome, cpf, data_nascimento, turno, media_geral)
VALUES ("Ana Souza", "12345678901", "2008-03-15", "Manhã", 8.75),
	   ("Carlos Lima", "23456789012", "2007-07-22", "Tarde", 7.40),
	   ("Mariana Alves", "34567890123", "2009-01-10", "Manhã", 9.10),
	   ("Pedro Henrique", "45678901234", "2008-11-05", "Noite", 6.85),
	   ("Juliana Martins", "56789012345", "2007-05-30", "Tarde", 8.20),
       ("Lucas Ferreira", "67890123456", "2008-09-12", "Manhã", 7.95),
	   ("Beatriz Oliveira", "78901234567", "2007-12-03", "Tarde", 9.30),
	   ("Rafael Costa", "89012345678", "2009-04-18", "Noite", 6.70);
       
SELECT * FROM tb_colegio_alfa;
       
SELECT * FROM tb_colegio_alfa WHERE media_geral > 7.0;
SELECT * FROM tb_colegio_alfa WHERE media_geral < 7.0;

UPDATE tb_colegio_alfa set media_geral = 5.46 WHERE id = 1;
UPDATE tb_colegio_alfa set media_geral = 4.46 WHERE id = 7;

