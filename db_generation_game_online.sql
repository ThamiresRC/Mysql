CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(50),
    PRIMARY KEY (id)
);
SELECT * FROM tb_classes;


INSERT INTO tb_classes (nome,descricao) VALUES ("gerreiro", "um guerreiro muito forte");
INSERT INTO tb_classes (nome,descricao) VALUES ("arqueiro", "combate a distancia");
INSERT INTO tb_classes (nome,descricao) VALUES ("bruxo", "inteligentes");
INSERT INTO tb_classes (nome,descricao) VALUES ("caçador", "combate a distancia");
INSERT INTO tb_classes (nome,descricao) VALUES ("curandeiro", "ajudante");

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome_personagens VARCHAR(50),
ataque INT,
defesa INT,
bonus_atributo VARCHAR(20),
PRIMARY KEY (id)
);

INSERT INTO tb_personagens (nome_personagens,ataque,defesa,bonus_atributo) VALUES ("marquinhos o grande", 1800, 1200, "força e habilidade");
INSERT INTO tb_personagens (nome_personagens,ataque,defesa,bonus_atributo) VALUES ("salome", 2000, 1500, "alto dano");
INSERT INTO tb_personagens (nome_personagens,ataque,defesa,bonus_atributo) VALUES ("margarida", 3000, 3000, "alta resistencia");
INSERT INTO tb_personagens (nome_personagens,ataque,defesa,bonus_atributo) VALUES ("agnes", 2000, 1000, "velocidade");
INSERT INTO tb_personagens (nome_personagens,ataque,defesa,bonus_atributo) VALUES ("fagundes", 1500, 2000, "coragem");
INSERT INTO tb_personagens (nome_personagens,ataque,defesa,bonus_atributo) VALUES ("jonh", 1000, 1000, "camuflagem");
INSERT INTO tb_personagens (nome_personagens,ataque,defesa,bonus_atributo) VALUES ("felipina", 2100, 1400, "foco");
INSERT INTO tb_personagens (nome_personagens,ataque,defesa,bonus_atributo) VALUES ("claudilene", 1700, 1900, "suporte");

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD classes_id BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes FOREIGN KEY(classes_id) REFERENCES tb_classes(id);

INSERT INTO tb_personagens(nome_personagens,ataque,defesa,bonus_atributo,classes_id) values ("Aragorn", 2500, 1800,"força e habilidade",1);
INSERT INTO tb_personagens(nome_personagens,ataque,defesa,bonus_atributo,classes_id) values ("Gandalf", 1800, 2200,"alto dano",2);
INSERT INTO tb_personagens(nome_personagens,ataque,defesa,bonus_atributo,classes_id) values ("Legolas", 2100, 1500,"alra resistencia",3);
INSERT INTO tb_personagens(nome_personagens,ataque,defesa,bonus_atributo,classes_id) values ("Thief", 1800, 1200,"velocidade",4);
INSERT INTO tb_personagens(nome_personagens,ataque,defesa,bonus_atributo,classes_id) values ("Lancelot", 2400, 2000,"coragem",5);
INSERT INTO tb_personagens(nome_personagens,ataque,defesa,bonus_atributo,classes_id) values ("Frodo", 1200, 1000, "camuflagem",1);
INSERT INTO tb_personagens(nome_personagens,ataque,defesa,bonus_atributo,classes_id) values ("Chun-Li", 3500, 3000,"foco",1);
INSERT INTO tb_personagens(nome_personagens,ataque,defesa,bonus_atributo,classes_id) values ("Robin Hood", 1900, 1300,"suporte",3);

SELECT * FROM tb_personagens WHERE ataque >=2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome_personagens LIKE "c%";
SELECT * FROM tb_personagens  tbp INNER JOIN tb_classes tbc ON tbc.id = tbp.classes_id;
SELECT * FROM tb_personagens  tbp INNER JOIN tb_classes tbc ON tbc.id = tbp.classes_id WHERE tbc.nome = "arqueiro";



