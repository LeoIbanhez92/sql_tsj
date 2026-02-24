CREATE DATABASE db_byte_shop;

USE db_byte_shop;

CREATE TABLE tb_byte_produtos(
	id bigint AUTO_INCREMENT PRIMARY KEY, 
    nome varchar(255) NOT NULL,
    marca varchar(100) NOT NULL,
    preco decimal (10, 2) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    estoque int DEFAULT 0
);

INSERT INTO tb_byte_produtos(nome, marca, preco, categoria, estoque)
VALUES ("Mouse", "Logitch", 250.00 , "Periferico", 70),
	   ("Teclado", "Logitch", 450.00 , "Periferico", 90),
       ("Mouse Pad", "Logitch", 50.00 , "acessorio", 80),
       ("Fone", "Logitch", 290.00 , "Periferico", 100),
       ("Microfone", "Logitch", 355.00 , "Periferico", 270);
       

UPDATE tb_byte_produtos set preco = 800.00 WHERE id = 1;
UPDATE tb_byte_produtos set preco = 900.00 WHERE id = 2;

SELECT * FROM tb_byte_produtos;

SELECT * FROM tb_byte_produtos WHERE preco > 500.00;

SELECT * FROM tb_byte_produtos WHERE preco < 500.00;




