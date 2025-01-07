CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
     id BIGINT AUTO_INCREMENT,
     nome VARCHAR(50) NOT NULL,
     idade int,
     genero VARCHAR(50) NOT NULL,
     sala VARCHAR(10) NOT NULL,
     data_matricula date,
     nota_aluno decimal(4,2) NOT NULL,
     endereco VARCHAR(50) NOT NULL,
     telefone VARCHAR(16),
     responsavel VARCHAR(50) NOT NULL,
	 PRIMARY KEY(id)
);

INSERT INTO tb_estudantes (nome, idade, genero, sala, data_matricula, nota_aluno, endereco, telefone, responsavel)
VALUES 
("João", 12, "Masculino", "6A", "2025-03-01", 7.5, "Rua das Flores, 123", "11 99999-9999", "Carlos Silva"),
("Maria", 13, "Feminino", "7B", "2025-02-15", 8.0, "Av. Central, 456", "11 98888-8888", "Ana Souza"),
("Pedro", 11, "Masculino", "5C", "2025-01-20", 6.5, "Rua do Campo, 789", "11 97777-7777", "José Pedro"),
("Ana", 14, "Feminino", "8A", "2025-03-05", 10.0, "Praça Verde, 101", "11 96666-6666", "Marta Dias"),
("Lucas", 12, "Masculino", "6B", "2025-03-02", 9.2, "Rua Azul, 202", "11 95555-5555", "Paulo Lucas"),
("Beatriz", 13, "Feminino", "7C", "2025-03-03", 5.0, "Av. Sol, 303", "11 94444-4444", "Sandra Beatriz"),
("Carla", 12, "Feminino", "6A", "2025-02-28", 3.2, "Rua do Lago, 404", "11 93333-3333", "Roberto Carla"),
("Rafael", 14, "Masculino", "8B", "2025-03-06", 4.2, "Rua das Palmeiras, 505", "11 92222-2222", "Fernanda Rafael");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_aluno > 7.0;

SELECT * FROM tb_estudantes WHERE nota_aluno < 7.0;

UPDATE tb_estudantes SET nota_aluno = 8.5 WHERE id = 2;