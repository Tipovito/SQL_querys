--crie o banco de dados farm
create database farm
go
---------------------------------------------------
--abra o banco de dados farm
use farm
go
---------------------------------------------------
--troque o esquema para fazenda
create schema fazenda authorization dbo
go

-----------------------------------------------------
create table fazenda.funcionarios
(
func_cd		int				primary key			identity(1,1),
func_Nm		varchar(40)		not null,
func_End	varchar(40)		not null,
func_Fone	varchar(20)		not null,
func_email	varchar(40)		not null,
)
go
--Não esqueça da chave primária
-----------------------------------------------------

create table fazenda.materiais
(
mat_CD		int				primary key			identity(1,1),
mat_NM		varchar(40)		not null,
mat_Prof	varchar(30)		not null,
mat_DS		varchar(20)		not null, --Dias da Semana
)
go
--Não esqueça da chave primária
-----------------------------------------------------

--Insira três funcionarios e três materiais

--------------------Funcionários---------------------
insert into fazenda.funcionarios values ('Donizete','putim','12991','josedoni@')
insert into fazenda.funcionarios values ('Victor','buquirinha','12983','tipovito@')
insert into fazenda.funcionarios values ('Maria','Freitas','12911','mafekook@')
go

--------------------Materiais------------------------
insert into fazenda.materiais values ('Ração','Alimentação','segunda-feira')
insert into fazenda.materiais values ('Enxada','Carpinar','terça-feira')
insert into fazenda.materiais values ('Carrinho de Mão','Transportar','sexta-feira')
go

--Faça um select geral para as duas tabelas
select * from fazenda.funcionarios
select * from fazenda.materiais

--Teste o select abaixo:
select func_Nm from fazenda.funcionarios
union
select mat_NM from fazenda.materiais


--Faça a ligação com o Visual Studio

--Faça os códigos para 
BACKUP DATABASE [farm] TO  DISK = N'C:\SQL2019\DB\Backup\farm.bak' WITH NOFORMAT, NOINIT,  NAME = N'farm-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

USE [master]
RESTORE DATABASE [farm] FROM  DISK = N'C:\SQL2019\DB\Backup\farm.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5
GO

