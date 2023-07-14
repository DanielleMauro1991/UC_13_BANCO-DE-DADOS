CREATE DATABASE BDEscola
USE BDEscola

CREATE TABLE Escola
(
IDEscola INT PRIMARY KEY,
Nome VARCHAR (100),
Descricao VARCHAR (100)
);

CREATE TABLE Professor
(
Professor_ID INT PRIMARY KEY,
Nome VARCHAR (100),
Registro int
);

create table Escola_Professor

(
IDEscola INT foreign KEY references Escola(IDEscola),
Professor_ID INT foreign KEY references Professor(Professor_ID)

);

CREATE TABLE Materia
(
IDMateria INT PRIMARY KEY,
Nome VARCHAR (100),
Descricao varchar (100)
);

CREATE TABLE Professor_Materia
(
Professor_ID INT foreign KEY references Professor(Professor_ID),
IDMateria INT foreign KEY references Materia(IDMateria)
);


CREATE TABLE Aluno
(
IDAluno INT PRIMARY KEY,
IDEscola INT foreign KEY references Escola(IDEscola),
Nome VARCHAR (100),
RA VARCHAR (100)
);

CREATE TABLE Aluno_Materia
(
IDAluno INT foreign KEY references Aluno(IDAluno),
IDMateria INT foreign KEY references Materia(IDMateria)
);

insert into Escola values (1,'SENAI','Escola de informatica');
insert into Escola values (2,'CMEI Kids','Escola infantil');
insert into Professor values (1,'Lucas Martins',111);
insert into Professor values (2,'Renata Santos',113);
insert into Escola_Professor values (1,1);
insert into Escola_Professor values (1,2);


select * from Escola
select * from Professor
select * from Escola_Professor

DELETE FROM Escola WHERE IDEscola = 2

CREATE TABLE Aleatoria
(
IDAleatoria INT PRIMARY KEY,
Nome VARCHAR (100),
RA VARCHAR (100)
);

drop table Aleatoria



