CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE IF NOT EXISTS tb_classes (
	id BIGINT AUTO_INCREMENT,
	classe VARCHAR(255) NOT NULL,
	descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_personagens (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	sexo CHAR(1),
    nivel INT,
	data_criacao DATE,
    classesid BIGINT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classesid) REFERENCES tb_classes (id);

INSERT INTO tb_classes(classe, descricao)
VALUES ("Suporte", "Personagens que protegem"), ("Atirador", "Personagens ADC que dão dano a distância, o qual prevalece o uso do ataque básico"),
("Soldado", "Personagens mais resistentes com bastante dano"), ("Mago", "Personagens que dão dano mágico por meio de skills"), 
("Assassino", "Personagens que possuem muito dano e atacam por meio de emboscadas");

INSERT INTO tb_personagens(nome, sexo, nivel, data_criacao, classesid)
VALUES ("Hanabi", "F", 70, "2023-02-21", 2),
("Lancelot", "M", 94, "2021-06-23", 5),
("Harley", "M", 41, "2022-04-03", 4),
("Minotauro", "M", 56, "2024-02-03", 1),
("Freya", "F", 105, "2021-06-15", 3),
("Carmilla", "F", 65, "2022-02-21", 1),
("Granger", "M", 98, "2022-12-04", 2),
("Kagura", "F", 79, "2020-11-26", 4);

SELECT * FROM tb_personagens WHERE nivel > 60;
SELECT * FROM tb_personagens WHERE nivel < 60;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.id, nome, sexo, nivel, data_criacao, classe FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id;

SELECT tb_personagens.id, nome, sexo, nivel, data_criacao, classe FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id WHERE tb_classes.classe = "Atirador";