create database projeto_sco
default character set utf8
default collate utf8_general_ci;

create table aluno (
id int NOT NULL AUTO_INCREMENT,
nome varchar (30) NOT NULL,
senha varchar (30),
e_mail varchar(50),
PRIMARY KEY(id)
)default charset = utf8;

create table materia (
id int NOT NULL AUTO_INCREMENT,
nome varchar (100) NOT NULL,
PRIMARY KEY(id)
)default charset = utf8;

create table resultado_chave (
id int NOT NULL AUTO_INCREMENT,
nome varchar (100) NOT NULL,
PRIMARY KEY(id)
)default charset = utf8;

create table assunto (
id int NOT NULL AUTO_INCREMENT,
nome varchar (100) NOT NULL,
id_materia int(100),
PRIMARY KEY(id)
)default charset = utf8;

create table objetivo (
id int NOT NULL AUTO_INCREMENT,
nome varchar (100) NOT NULL,
id_aluno int(50),
id_materia int(50),
id_assunto int(50),
id_resultado_chave int(50),
PRIMARY KEY(id)
)default charset = utf8;

alter table assunto
add foreign key (id_materia)
references materia(id);

alter table objetivo
add foreign key (id_aluno)
references aluno(id);

alter table objetivo
add foreign key (id_materia)
references materia(id);

alter table objetivo
add foreign key (id_assunto)
references assunto(id);

alter table objetivo
add foreign key (id_resultado_chave)
references resultado_chave(id);


desc aluno;
select nome from objetivo where id_aluno=8;

INSERT INTO objetivo(nome,id_aluno)VALUES ("sacanear paciencia professor bacalhau",8 );

DELETE FROM aluno WHERE id=10;

SET SQL_SAFE_UPDATES=0;

ALTER TABLE aluno AUTO_INCREMENT = 1;  

select nome from aluno where nome='joao';

select * from aluno;

update aluno
set nome='jonas'
where id='8';

delete from aluno
where id='3';