CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL,
    tipo_de_venda VARCHAR(50) NOT NULL
);

INSERT INTO tb_categoria (descricao, tipo_de_venda)
VALUE
	("Carne Bovina", "PECA"),
	("Carne Suina", "FRACIONADO"),
	("Carne de Frango", "FRACIONADO"),
	("Carne de Cordeiro", "PECA"),
	("Linguiça Artesanal", "FRACIONADO");
    
CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    validade DATE NOT NULL,
    quantidade_estoque INT DEFAULT 0,
    categoria_id bigint NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_produtos;


INSERT INTO tb_produtos (nome, preco, validade, quantidade_estoque, categoria_id)
VALUE
	("Contra Filé", 52.90, "2026-06-15", 18, 1),
	("Picanha", 89.90, "2026-06-20", 12, 1),
	("Barriga Suína", 29.50, "2026-05-10", 25, 2),
	("Costelinha Suína", 34.90, "2026-05-18", 20, 2),
	("Coxa de Frango", 16.80, "2026-04-30", 40, 3),
	("Sobrecoxa de Frango", 18.50, "2026-05-05", 35, 3),
	("Paleta de Cordeiro", 64.90, "2026-07-01", 10, 4),
	("Linguiça Calabresa", 21.90, "2026-05-25", 30, 5);
    
SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 20.00 AND 100.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%t%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id WHERE descricao = "Carne Suína";

