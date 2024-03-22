CREATE DATABASE IF NOT EXISTS db_rh;
USE db_rh;

CREATE TABLE IF NOT EXISTS tb_colaboradores (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	sexo CHAR(1),
    aniversario DATE,
	funcao VARCHAR(255),
    salario FLOAT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, sexo, aniversario, funcao, salario)
VALUES("Karol", "F", "2002-09-17", "Desenvolvedora Java", 5600);
INSERT INTO tb_colaboradores(nome, sexo, aniversario, funcao, salario)
VALUES("Sabrina", "F", "1995-05-22", "DBA", 7800);
INSERT INTO tb_colaboradores(nome, sexo, aniversario, funcao, salario)
VALUES("Diego", "M", "2004-03-06", "Trainee", 2100);
INSERT INTO tb_colaboradores(nome, sexo, aniversario, funcao, salario)
VALUES("Eduardo", "M", "2000-02-10", "Atendente", 1800);
INSERT INTO tb_colaboradores(nome, sexo, aniversario, funcao, salario)
VALUES("Milena", "F", "1999-06-28", "Estagiário", 1500);
INSERT INTO tb_colaboradores(nome, sexo, aniversario, funcao, salario)
VALUES("Lucas", "M", "1998-12-15", "Analista de Sistema", 3100);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;



