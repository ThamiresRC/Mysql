CREATE DATABASE db_rhempresa;
USE db_rhempresa;
CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(245) not null,
cargo varchar (245) not null,
departamento varchar (245) not null,
salario decimal not null,
primary key (id)
);

INSERT INTO tb_colaboradores(nome,cargo,departamento,salario) values ("Kamila Andrade", "Analista de Dados", "RH", 3500);
INSERT INTO tb_colaboradores(nome,cargo,departamento,salario) values ("Felipe Santos", "Gerente de Finacas", "Financas", 4000);
INSERT INTO tb_colaboradores(nome,cargo,departamento,salario) values ("Claudio Pereira", "Desenvlovedor de 	Software", "Tecnologia", 3000);
INSERT INTO tb_colaboradores(nome,cargo,departamento,salario) values ("Cecilia Almeida", "Analista de Marketing", "Marketing", 2900);
INSERT INTO tb_colaboradores(nome,cargo,departamento,salario) values ("Ana Vitoria", "Assistente Administrativo", "Administracao", 1800);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2000 WHERE id = 4;

SELECT * FROM tb_colaboradores;



