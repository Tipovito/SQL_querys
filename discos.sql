create database discos
go

use discos
go

create schema loja authorization dbo
go

create table loja.clientes
(
Clie_CD			int				identity(1,1)		primary key,
Clie_NM			nvarchar(40)	not null,
Clie_fone		int				not null,
Clie_end		nvarchar(40)	not null,
Clie_email		nvarchar(40)	not null,
)
go

insert into loja.clientes values ('Maria','1299','rua 5','mafekook@')
insert into loja.clientes values ('Victor','1298','rua 4','tipovito@')
go

select * from loja.clientes
where Clie_NM like '%a'