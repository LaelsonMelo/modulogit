create database projeto_sco
default character set utf8
default collate utf8_general_ci;

select * from assunto;

describe aluno;


create table ALUNO (
id int NOT NULL AUTO_INCREMENT,
nome varchar (50) NOT NULL,
senha int (15),
e_mail int(50),
PRIMARY KEY(id)
)default charset = utf8;

create table MATERIA (
id int NOT NULL AUTO_INCREMENT,
nome varchar (50) NOT NULL,
PRIMARY KEY(id)
)default charset = utf8;

create table resultado_chave (
id int NOT NULL AUTO_INCREMENT,
nome varchar (50) NOT NULL,
PRIMARY KEY(id)
)default charset = utf8;

create table ASSUNTO (
id int NOT NULL AUTO_INCREMENT,
nome varchar (50) NOT NULL,
id_materia int (50),
PRIMARY KEY(id)
)default charset = utf8;


create table objetivo(
id int NOT NULL AUTO_INCREMENT,
nome varchar (50) NOT NULL,
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
