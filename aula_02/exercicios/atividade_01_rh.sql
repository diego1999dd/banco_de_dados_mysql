CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
	id_funcionario bigint auto_increment,
    nome varchar(255) NOT NULL,
    cargo varchar(50),
    salario DECIMAL(10,2),
    data_admissao DATE NOT NULL,
    PRIMARY KEY(id_funcionario)
);

INSERT INTO tb_funcionarios (nome, cargo, salario, data_admissao)
VALUES ("João", "CEO", 10000000.00, "2025-01-10" ),
	   ("Gabriel", "Desenvolvedor Front-End", 10000.00, "2025-02-15"),
       ("Emily", "Desenvolvedor Back-End", 20000.00, "2025-02-10"),
       ("Josiane", "Desenvolvedora de Games", 30000.00, "2025-01-12"),
       ("Diego", "Desenvolvedor de Games", 90000.00, "2025-01-12");
       
SELECT * FROM tb_funcionarios;

SELECT nome, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS salario FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 1950.00 WHERE id_funcionario = 5;




       