create database sal_e_pimenta
go

use sal_e_pimenta
go

create schema food authorization dbo
go

create table food.produtos
(
Prod_CD				int				primary key,
Prod_NM				nchar(40)		not null,
Prod_Entr			nchar(40)		not null,
Prod_kg				int				not null,
Prod_valor			nchar(20)		not null,
)
go

insert into food.produtos values (2,'Prato feito','para viagem','1','20.70')

select * from food.produtos