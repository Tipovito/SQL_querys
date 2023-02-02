create database cubo_magico
go

use cubo_magico 
go

create schema cubo authorization dbo
go

create table cubo.cubistas
(
Cub_CD		int				primary key				identity(1,1),
Cub_NM		nvarchar(40)	not null,
Cub_Nivel	nvarchar(20)
)
go

insert into cubo.cubistas values ('renato patto','fraldinha')
insert into cubo.cubistas values ('Victor Henrique','médio')
insert into cubo.cubistas values ('Alex Turner','avançado')

--pesquisa
select * from cubo.cubistas

create table cubo.cubistas2
(
Cub_CD		int				primary key,				
Cub_NM		nvarchar(40)	not null,
Cub_Nivel	nvarchar(20)
)
go

insert into cubo.cubistas2 values (1,'Uanderson','médio')
insert into cubo.cubistas2 values (2,'Marco uilha','fraldinha')
insert into cubo.cubistas2 values (3,'Michael jackson','médio')

select * from cubistas2
select cub_nivel from cubistas2
select 

--use master
--drop database cubo_magico