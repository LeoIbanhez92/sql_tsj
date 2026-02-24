CREATE DATABASE db_rhfeliz;

USE db_rhfeliz;

CREATE TABLE tb_colaboradores(
	id bigint AUTO_INCREMENT PRIMARY KEY, 
    nome varchar(255) NOT NULL,
    cpf char(11) NOT NULL UNIQUE,
    idade int CHECK (idade >= 18),
    setor varchar(255),
    salario decimal (10, 2),
    CHECK (cpf REGEXP '^[0-9]{11}$')
);

INSERT INTO tb_colaboradores(nome, cpf, idade, setor, salario)
VALUES ("Leonardo", "15387694598", 32 , "Desenvolvedor java", 50000.00),
	   ("Alvaro", "45676543232", 56 , "Desenvolvedor c++", 20000.00),
       ("Marcia", "15387894391", 72 , "Desenvolvedora Full Stack", 30000.00),
       ("Daniele", "15387091558", 28 , "Veterinaria", 10000.00),
       ("Nadia", "15382697510", 30 , "Nutrição", 5000.00);
       
SELECT * FROM tb_colaboradores;
       
SELECT * FROM tb_colaboradores WHERE salario > 20000.00;

SELECT * FROM tb_colaboradores WHERE salario < 20000.00;

UPDATE tb_colaboradores set salario = 80000.00 WHERE id = 1;

ALTER TABLE tb_colaboradores DROP COLUMN idade;
		
