create database seguros
go

use seguros
go

create schema seg authorization dbo
go

create table seg.clientes
(
seg_cd		int				primary key			identity(1,1),
seg_nm		varchar(40),    
seg_fone	varchar(20),
seg_email	varchar(40),
seg_end		varchar(40),
seg_cep		varchar(13),
seg_regiao	varchar(50),
seg_pais	varchar(50),
seg_dep		varchar(50)
)
go


drop table seg.clientes
go


insert into seg.clientes values ('marco','123456','email@email.com','rua tal','endereço','12012-290','brasil','dependenters')
insert into seg.clientes values ('vanderson','123456','email@email.com','rua tal','endereço','12012-290','brasil','dependenters')
insert into seg.clientes values ('laércio','123456','email@email.com','rua tal','endereço','12012-290','brasil','dependenters')
go

select * from seg.clientes
select seg_nm, seg_fone from seg.clientes


--faça até aqui!!!


-- altera sem apagar uma propriedade da tabela
alter table seg.clientes
alter column seg_email varchar(50) 

-- adiciona sem apagar uma nova coluna na tabela
alter table seg.clientes
add clie_email varchar(40)

-- deleta 
alter table seg.clientes
drop column clie_email

--troca o nome da coluna dentro da tabela
exec  sp_rename 'seg.clientes.seg_email', 'seg_email2', 'column';