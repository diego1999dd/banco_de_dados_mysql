CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT,
    nome_categoria VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE TABLE tb_pizzas (
	id bigint AUTO_INCREMENT,
    nome VARCHAR(255),
    preco DECIMAL(10, 2),
    descricao VARCHAR(255),
    tamanho VARCHAR(255),
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria)
VALUES 
	("Salgadas"),
    ("Doces"),
    ("Veganas"),
    ("Especiais"),
    ("Gourmet");
    
SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome, preco, descricao, tamanho, categoria_id) 
VALUES 
    ("Calabresa", 29.90, "Pizza de calabresa com cebola e azeitonas", "Média", 1),
    ("Mussarela", 24.90, "Pizza clássica de mussarela com molho de tomate", "Pequena", 1),
    ("Veganas", 36.90, "Pizza vegana com legumes grelhados", "Grande", 3),
    ("Frango com Catupiry", 32.90, "Pizza de frango desfiado com Catupiry", "Média", 1),
    ("Peperoni", 38.90, "Pizza de peperoni com molho picante", "Grande", 1),
    ("Chocolate com Morango", 42.90, "Pizza doce de chocolate com pedaços de morango", "Pequena", 2),
    ("Pizza de estrogonofe", 32.90, "Pizza com molho cremoso de estrogonofe, carne ou frango desfiado, cogumelos e um toque de mostarda, coberta com queijo derretido.", "Média", 1),
    ("Margherita", 28.90, "Pizza clássica de molho de tomate, mozzarella e manjericão", "Média", 1);

SELECT * FROM tb_pizzas;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS Preço FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco < 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id WHERE nome_categoria = "Salgadas";

UPDATE tb_pizzas SET preco = 60.00 WHERE id IN (6, 7);