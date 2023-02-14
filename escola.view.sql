create database escola

use escola
go

create schema senac authorization dbo
go

create table senac.alunos
(
Alu_CD			int			primary key			identity(1,1),
Alu_NM			nchar(30)   not null,
Alu_SNM			nchar(30)   not null,
Alu_DTnasc		date		not null,
Alu_cid			nchar(40)   not null,
)
go

insert into senac.alunos values ('Maria','Fernanda','06/10/2004','campos')
insert into senac.alunos values ('Victor','Henrique','07/09/2004','Campos')
insert into senac.alunos values ('Joao','Pedro','10/11/2004','Alagoas')
go

------------------------------VIEW------------------------------------
create view senac.alunosinfo as
select Alu_CD,Alu_NM,Alu_SNM,Alu_DTnasc,Alu_cid
from senac.alunos
where Alu_cid = 'campos'

select * from senac.alunosinfo

drop view alunosinfo
----------------------------------------------------------------------

create table professores
(
Prof_CD     int			primary key			identity(1,1),
Prof_NM     nchar(40)   not null,
Prof_Mat    nchar(20)   not null,
Prof_SL     nchar(10)   not null,
)

insert into professores values ('Fernando','sociologia','3a')
insert into professores values ('Mauro','Filosofia','3b')
insert into professores values ('Guaraci','Matemática','3c')

select * from professores

create table materias
(
Mat_CD      int			primary key			identity(1,1),
Mat_NM    nchar(20)   not null,
)

insert into materias values ('Sociologia')
insert into materias values ('Filosofia')
insert into materias values ('Matemática')

select * from materias

--drop table materias
--use master
--drop database escola