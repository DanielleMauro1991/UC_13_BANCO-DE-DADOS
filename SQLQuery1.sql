CREATE DATABASE BDEscola
USE BDEscola

CREATE TABLE Escola
(
IDEscola INT PRIMARY KEY,
Nome VARCHAR (100),
Endereco VARCHAR (100)
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