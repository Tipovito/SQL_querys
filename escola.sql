create database escola
go

use escola
go

create table alunos
(
Alu_CD		int			primary key			identity(1,1),
Alu_NM		nchar(40)   not null,
Alu_idd     int         not null,
Alu_Se      nchar(10)   not null,
Alu_end     nchar(40)   not null,
Alu_fone    int         not null,
)
go

insert into alunos values ('Maria','18','3B','Putin','12')
insert into alunos values ('Victor','18','3A','Buquirinha','12')
insert into alunos values ('Joao','18','3C','Freitas','12')

select * from alunos

create table professores
(
Prof_CD     int			primary key			identity(1,1),
Prof_NM     nchar(40)   not null,
Prof_Mat    nchar(20)   not null,
Prof_SL     nchar(10)   not null,
)
go

insert into professores values ('Fernando','sociologia','3a')
insert into professores values ('Mauro','Filosofia','3b')
insert into professores values ('Guaraci','Matemática','3c')

select * from professores

create table materias
(
Mat_CD      int			primary key			identity(1,1),
Mat_NM    nchar(20)   not null,
)
go

insert into materias values ('Sociologia')
insert into materias values ('Filosofia')
insert into materias values ('Matemática')

select * from materias

--drop table materias
--use master
--drop database escola