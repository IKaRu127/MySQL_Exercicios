CREATE DATABASE IF NOT EXISTS db_escola;
USE db_escola;

CREATE TABLE IF NOT EXISTS tb_estudantes (
	chamada BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    idade INT,
	serie VARCHAR(30),
    materia VARCHAR(255),
	nota FLOAT NOT NULL,
    PRIMARY KEY (chamada)
);

INSERT INTO tb_estudantes(nome, idade, serie, materia, nota)
VALUES("Sara", 14, "8°Série", "Biologia", 5.6);
INSERT INTO tb_estudantes(nome, idade, serie, materia, nota)
VALUES("Lavinia", 16, "1°Colegial", "Física", 9.0);
INSERT INTO tb_estudantes(nome, idade, serie, materia, nota)
VALUES("Emanuel", 8, "3°Colegial", "Matemática",8.2);
INSERT INTO tb_estudantes(nome, idade, serie, materia, nota)
VALUES("Vitória", 13, "7°Série", "Português", 6.7);
INSERT INTO tb_estudantes(nome, idade, serie, materia, nota)
VALUES("Luan", 17, "2°Colegial", "Filosofia", 9.2);
INSERT INTO tb_estudantes(nome, idade, serie, materia, nota)
VALUES("Vinicius", 13, "7°Série", "Ed Física", 10);
INSERT INTO tb_estudantes(nome, idade, serie, materia, nota)
VALUES("Carlos", 17, "2°Colegial", "Química", 5.5);
INSERT INTO tb_estudantes(nome, idade, serie, materia, nota)
VALUES("Diana", 12, "6°Série", "Inglês", 7.3);

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;