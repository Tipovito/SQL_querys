create database estuds
go
---------------------------------------------------
use estuds
go
---------------------------------------------------
create schema senac authorization dbo
go

-----------------------------------------------------
create table senac.alunos
(
alunos_CD			int				identity(1,1)		primary key,
alunos_NM			nvarchar(40)	not null,
alunos_end			nvarchar(40)	not null,
alunos_fone			nvarchar(20)	not null,
alunos_email		nvarchar(40)	not null,
)
go
--Não esqueça da chave primária
-----------------------------------------------------
create table senac.materias
(
mat_CD			int				identity(1,1)		primary key,
mat_NM			nvarchar(40)	not null,
mat_prof		nvarchar(40)	not null,
mat_dias		nvarchar(30)	not null,
)
go
--Não esqueça da chave primária
-----------------------------------------------------
--Rode os códigos para 
BACKUP DATABASE [estuds] TO  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH NOFORMAT, NOINIT,  NAME = N'estuds-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

--E

USE [master]
RESTORE DATABASE [estuds] FROM  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO


--alunos
insert into senac.alunos values ('maria','Rua 5','892249','mafekook@')
insert into senac.alunos values ('victor','Rua 4','914057','tipovito@')
insert into senac.alunos values ('alex','Rua 3','505505','alexturner@')
go

--materias
insert into senac.materias values ('Banco de dados','Henrique','segunda')
insert into senac.materias values ('Modelagem de dados','Milton','quinta')
insert into senac.materias values ('Analise de sistema','joaozinho','sexta')
go
-----------------------------------------------------
--Faça um select geral para as duas tabelas
select * from senac.alunos
where alunos_NM like 'a%'
go

select * from senac.materias
where mat_NM like 'b%'
go

--Faça um select pesquisando por nome das materias e o nome dos alunos.

--Coloque GO entre os comandos