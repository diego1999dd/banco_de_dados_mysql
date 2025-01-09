CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id bigint AUTO_INCREMENT,
    nome VARCHAR(20),
    descricao VARCHAR(100),
    tipo VARCHAR(10),
    xp INT,
    atributo_principal VARCHAR(40),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id bigint AUTO_INCREMENT,
    nome VARCHAR (20),
    genero VARCHAR (20),
    classe VARCHAR (20),
    nivel INT,
	xp_total INT,
    hp INT,
    forca INT,
    arma VARCHAR (200),
    habilidade_especial VARCHAR (255),
    poder_ataque INT,
    poder_defesa INT,
    classe_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao, tipo, xp, atributo_principal)
VALUES 
    ("Bruxo(a)", "Mestre das magias sombrias e invocações malignas.", "Mágico", 10000000, "Inteligência"),
    ("Guerreiro", "Combatente forte e resistente no combate corpo a corpo.", "Físico", 10000, "Força"),
    ("Mago", "Especialista em feitiços poderosos e manipulação de magia.", "Mágico", 20000, "Inteligência"),
    ("Druida", "Conecta-se com a natureza, transformando-se em animais e controlando os elementos.", "Misto", 30000, "Sabedoria"),
    ("Vingador", "Guerreiro implacável, buscando justiça através da vingança.", "Físico", 90000, "Força");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (nome, genero, classe, nivel, xp_total, hp, forca, arma, habilidade_especial, poder_ataque, poder_defesa, classe_id)
VALUES 
    ("Merlin", "Masculino", "Mago", 10, 5000, 100, 50, "Bastão Arcano", "Chuva de Meteoros", 1500, 1200, 3), -- Defesa baixa
    ("Ares", "Masculino", "Guerreiro", 20, 15000, 200, 120, "Espada Longa", "Fúria de Guerra", 3500, 1800, 2), -- Defesa moderada
    ("Luna", "Feminino", "Bruxa", 15, 12000, 80, 60, "Cajado", "Invocar Demônio", 2200, 1100, 1), -- Defesa baixa
    ("Gaia", "Feminino", "Druida", 18, 14000, 90, 70, "Cajado da Natureza", "Transformação Selvagem", 2400, 1500, 4), -- Defesa moderada
    ("Coreks", "Masculino", "Vingador", 25, 25000, 150, 110, "Espada de Vingança", "Golpe Implacável", 3000, 2000, 5), -- Defesa alta
    ("Celena", "Feminino", "Arqueira", 12, 8000, 70, 90, "Arco Longo", "Tiro Preciso", 2000, 1400, 5), -- Defesa média
    ("Thor", "Masculino", "Guerreiro Viking", 30, 35000, 250, 140, "Martelo de Guerra", "Rugido de Batalha", 4500, 1900, 2), -- Defesa alta
    ("Sylas", "Masculino", "Necromante", 20, 20000, 100, 80, "Cajado Necromântico", "Ressurreição de Mortos", 2700, 1600, 1); -- Defesa moderada



SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000.00;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_classes INNER JOIN tb_personagens
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_classes INNER JOIN tb_personagens
ON tb_classes.id = tb_personagens.classe_id WHERE classe = "Vingador"
