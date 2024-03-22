CREATE DATABASE IF NOT EXISTS db_ecommerce;
USE db_ecommerce;

CREATE TABLE IF NOT EXISTS tb_produtos (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	tipo VARCHAR(255),
    pronta_entrega CHAR(3),
	estoque INT,
    valor FLOAT,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Microfone", "Computador", "Sim", 18, 40);
INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Monitor", "Todos", "Não", 2, 600);
INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Controle de videogame", "videogame", "Sim", 10, 70);
INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Camera", "Computador", "Sim", 5, 50);
INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Caixa de som", "Computador", "Sim", 4, 35);
INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Mousepad", "Acessório", "Sim", 26, 15);
INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Mouse", "Todos", "Não", 16, 30);
INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Teclado Gamer", "Computador", "Sim", 6, 520);
INSERT INTO tb_produtos(nome, tipo, pronta_entrega, estoque, valor)
VALUES("Cadeira Gamer", "Acessório", "Não", 3, 1500);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;