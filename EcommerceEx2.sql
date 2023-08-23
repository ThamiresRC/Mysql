CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_ecommerce(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar (255) not null,
categoria varchar (255) not null,
preco decimal not null,
primary key (id)
);

INSERT INTO tb_ecommerce(nome,descricao,categoria,preco) values ("celular","xiomi","custo beneficio",1500);
INSERT INTO tb_ecommerce(nome,descricao,categoria,preco) values ("camisetar","puma","estilosa",250);
INSERT INTO tb_ecommerce(nome,descricao,categoria,preco) values ("tenis","adidas","esportivo",600);
INSERT INTO tb_ecommerce(nome,descricao,categoria,preco) values ("televisao","lg","eletrodomestico",3800);
INSERT INTO tb_ecommerce(nome,descricao,categoria,preco) values ("fone","beats","bluetooth",120);
INSERT INTO tb_ecommerce(nome,descricao,categoria,preco) values ("livro","ftd","didatico",35);
INSERT INTO tb_ecommerce(nome,descricao,categoria,preco) values ("panelas","tramontina","utensilio",89);

SELECT * FROM tb_ecommerce;

SELECT * FROM tb_ecommerce WHERE preco > 500;

SELECT * FROM tb_ecommerce WHERE preco < 500;

alter table tb_ecommerce modify preco decimal (6,2);

UPDATE tb_ecommerce set preco = 29.99 where id = 2;


