--Crie um banco de dados para a tabela abaixo
create database banquinho
go

--crie um esquema
create schema bank authorization dbo
go

--crie uma tabela para receber estas infomações

create table bank.cadastro
( 
  cad_CD		int				primary key			identity(1,1),
  cad_NM		varchar(40)		not NULL,
  cad_fone		varchar(20)		NULL,
  cad_email		varchar(40)		NULL,
  cad_end		varchar(40)		NULL,
  cad_cid		varchar(40)		NULL,
  cad_cep		varchar(12)		NULL,
  cad_reg		varchar(40)		NULL,
  cad_pais		varchar(40)		NULL,
)
go

--cadastre três registros
insert into bank.cadastro values ('Victor','1299','tipovito@','rua 4','uberlandia','1212341','norte','Brasil')
insert into bank.cadastro values ('Maria','1298','mafekook@','rua 5','caraguatatuba','1214444','leste','Russia')
insert into bank.cadastro values ('Alex','1288','alexturner@','rua 3','sheffield','1233333','sul','Inglaterra')
go

--use o select
select cad_cid from bank.cadastro

select * from bank.cadastro
where cad_NM like 'V%'
