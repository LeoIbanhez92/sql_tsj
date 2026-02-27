CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT PRIMARY KEY,
classe_do_personagem VARCHAR(50) NOT NULL,
nivel_dificuldade VARCHAR(50) NOT NULL
);

INSERT INTO tb_classes (classe_do_personagem, nivel_dificuldade)
VALUES
    ("Knight", "Fácil"),
	("Sorcerer", "Difícil"),
	("Paladin", "Médio"),
    ("Archer", "Médio"),
	("Assassin", "Difícil");
    
SELECT * FROM tb_classes;
    


CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT PRIMARY KEY,
servidor VARCHAR(50) NOT NULL,
nome_personagem VARCHAR(50) NOT NULL,
forca_personagem INT NOT NULL,
destreza_personagem INT NOT NULL,
def_personagem INT NOT NULL,
categoria_id bigint NOT NULL,
FOREIGN KEY (categoria_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(servidor, nome_personagem, forca_personagem, destreza_personagem, def_personagem, categoria_id)
VALUES
	("BR-01", "LeoWar", 4500, 180, 1200, 1),
	("BR-01", "MysticFire", 1300, 220, 1000, 2),
	("BR-02", "HolyShield", 2100, 150, 1230, 3),
	("BR-02", "EagleEye", 1000, 240, 1440, 4),
	("BR-03", "ShadowBlade", 5000, 260, 1270, 5),
	("BR-03", "IronKnight", 3000, 160, 2640, 1),
	("BR-04", "DarkMage", 902, 230, 1700, 2),
	("BR-04", "SilverPal", 500, 170, 1210, 3);
    
SELECT * FROM tb_personagens WHERE forca_personagem > 2000;
SELECT * FROM tb_personagens WHERE def_personagem BETWEEN 1500 AND 3000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.categoria_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.categoria_id = tb_classes.id WHERE classe_do_personagem = "Knight";
    
SELECT * FROM tb_personagens;