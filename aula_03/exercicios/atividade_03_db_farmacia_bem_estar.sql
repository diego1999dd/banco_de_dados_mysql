CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id bigint AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    validade DATE,
    preco DECIMAL(10, 2),
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES 
	("Analgésicos", "Medicamentos para alívio da dor."),
	("Antiinflamatórios", "Medicamentos para reduzir a inflamação."),
	("Antibióticos", "Medicamentos para combater infecções bacterianas."),
    ("Antialérgicos", "Medicamentos para tratar reações alérgicas."),
    ("Antidepressivos", "Medicamentos para tratar transtornos depressivos."),
    ("Anti-hipertensivos", "Medicamentos para controle da pressão arterial."),
    ("Vitaminas e Suplementos", "Vitaminas e minerais para suplementação nutricional."),
    ("Medicamentos para Diabetes", "Medicamentos para controle do diabetes"),
    ("Descongestionantes", "Medicamentos para aliviar a congestão nasal."),
    ("Medicamentos para Resfriado e Gripe", "Medicamentos para tratar sintomas de resfriado.");
    
SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, descricao, validade, preco, categoria_id)
VALUES 
	("Paracetamol 500mg", "Analgésico para alívio de dores e febres", "2025-12-31", 5.90, 1),
    ("Ibuprofeno 200mg", "Antiinflamatório e analgésico para dores leves", "2026-06-15", 8.50, 2),
    ("Amoxicilina 500mg", "Antibiótico para infecções bacterianas", "2025-11-10", 19.90, 3),
    ("Loratadina 10mg", "Antialérgico para alívio de rinite e alergias", "2025-09-20", 12.00, 4),
    ("Fluoxetina 20mg", "Antidepressivo indicado para transtornos depressivos", "2026-01-30", 25.50, 5),
    ("Losartana 50mg", "Anti-hipertensivo para controle da pressão arterial", "2025-08-12", 15.00, 6),
    ("Vitamina C 1g", "Suplemento vitamínico para reforçar a imunidade", "2027-03-10", 10.00, 7),
    ("Gliclazida 60mg", "Medicamento para controle de diabetes tipo 2", "2025-04-18", 28.90, 8),
    ("Descongestionante Nasal Spray", "Descongestionante para alívio imediato da congestão nasal", "2025-10-15", 18.00, 9),
    ("Antigripal Composto", "Medicamento para tratar sintomas de resfriado e gripe", "2025-07-01", 14.50, 10);

INSERT INTO tb_produtos (nome, descricao, validade, preco, categoria_id)
VALUES 
	("Aspirina 500mg", "Analgésico para alívio de dores e redução de febre", "2026-02-28", 6.50, 1);

SELECT * FROM tb_produtos;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS Preço FROM tb_produtos;

SELECT nome, DATE_FORMAT(validade, '%d/%m/%Y') AS Data_validade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Analgésicos";

UPDATE tb_produtos SET preco = 61.50 WHERE id = 3;

UPDATE tb_produtos SET preco = 32.00 WHERE id = 8;