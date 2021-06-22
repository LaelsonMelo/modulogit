create database projeto_sco;


create table aluno (
id int NOT NULL AUTO_INCREMENT,
nome varchar (30) NOT NULL,
senha varchar (30),
e_mail varchar(50),
PRIMARY KEY(id)
);

create table materia (
id int NOT NULL AUTO_INCREMENT,
nome varchar (100) NOT NULL,
PRIMARY KEY(id)
);

create table resultado_chave (
id int NOT NULL AUTO_INCREMENT,
nome varchar (100) NOT NULL,
PRIMARY KEY(id)
);

create table assunto (
id int NOT NULL AUTO_INCREMENT,
nome varchar (100) NOT NULL,
id_materia int(100),
PRIMARY KEY(id)
);

create table objetivo (
id int NOT NULL AUTO_INCREMENT,
nome varchar (100) NOT NULL,
id_aluno int(50),
id_materia int(50),
id_assunto int(50),
id_resultado_chave int(50),
PRIMARY KEY(id)
);

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
desc materia;
desc assunto;
desc objetivo;
desc resultado_chave;

select * from aluno;