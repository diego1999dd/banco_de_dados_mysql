CREATE DATABASE loja_de_games;

USE loja_de_games;

CREATE TABLE tb_produtos (
	id_produto BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    genero VARCHAR(50),
    quantidade INT,
    desenvolvedora_do_jogo VARCHAR(255) NOT NULL,
    plataforma VARCHAR(50),
    descricao VARCHAR(1000),
    data_lancamento DATE,
    preco DECIMAL(6,2),
    PRIMARY KEY(id_produto)
);

INSERT INTO tb_produtos (nome, genero, quantidade, desenvolvedora_do_jogo, plataforma, descricao, data_lancamento, preco)
VALUES ("Spiderman", "Ação", 580, "Insomniac Games", "Playstation 5, Playstation 4, PC", "Venha se aventurar com o famoso Homem Aranha contra o 6 sinistro.", "2025-02-15", 250.00),
       ("Spider-Man: Miles Morales", "Ação", 640, "Insomniac Games", "Playstation 5, Playstation 4", "Ajude Miles Morales a dominar suas habilidades enquanto enfrenta novos desafios.", "2025-03-01", 230.00),
       ("The Last of Us Part II", "Aventura", 325, "Naughty Dog", "Playstation 4, Playstation 5", "Acompanhe Ellie em uma jornada intensa e emocional de vingança e sobrevivência.", "2025-04-10", 180.00),
       ("God of War Ragnarök", "Ação", 350, "Santa Monica Studio", "Playstation 5, Playstation 4", "A batalha de Kratos e Atreus contra os deuses de Ragnarok para salvar o mundo.", "2025-05-05", 270.00),
       ("Uncharted 4: A Thief's End", "Aventura", 120, "Naughty Dog", "Playstation 4, Playstation 5", "Explore o mundo em busca de tesouros perdidos com Nathan Drake em sua última aventura.", "2025-06-20", 200.00),
       ("Horizon Forbidden West", "Ação", 35, "Guerrilla Games", "Playstation 5, Playstation 4", "Aloy continua sua jornada para salvar o mundo de máquinas perigosas.", "2025-07-15", 250.00),
       ("Red Dead Redemption 2", "Ação", 260, "Rockstar Games", "Playstation 4, Xbox One, PC", "Viva a vida de um fora da lei em um mundo aberto no velho oeste.", "2025-08-01", 210.00),
       ("Cyberpunk 2077", "RPG", 450, "CD Projekt Red", "PC, Playstation 5, Xbox Series X", "Em um futuro distópico, viva aventuras em Night City com escolhas que afetam o mundo.", "2025-09-10", 220.00);

	   
SELECT * FROM tb_produtos;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE quantidade > 500;

SELECT * FROM tb_produtos WHERE quantidade < 500;

UPDATE tb_produtos SET preco = 150.00 WHERE id_produto = 2;