create database lavanderia
go

use lavanderia
go

create schema lav authorization dbo
go
---------------------------tabelas---------------------------------------------
create table lav.consumidor
(
Cons_CD		int				identity(1,1)		primary key,
Cons_NM		nvarchar(50)	not null,
Cons_end	nvarchar(50)	not null,
Cons_email	nvarchar(50)	not null,
)
go

create table lav.produtos
(
Prod_CD		int				identity(1,1)		primary key,
Prod_NM		nvarchar(50)	not null,
Prod_valor	money			not null,
)
go

create table lav.servicos
(
Serv_CD		int				identity(1,1)		primary key,
Serv_NM		nvarchar(50)	not null,
Serv_valor	money			not null,
)		
go

create table lav.funcionarios
(
Func_CD		int				identity(1,1)		primary key,
Func_NM		nvarchar(50)	not null,
Func_end	nvarchar(30)	not null,
Func_cid	nvarchar(30)	not null,
Func_pais	nvarchar(30)	
)
go

create table lav.caixa
(
Caix_CD		int				identity(1,1)		primary key,
Func_CD		int				foreign				key references lav.funcionarios,
Cons_CD		int				foreign				key references lav.consumidor,
Prod_CD		int				foreign				key references lav.produtos,	
Serv_CD		int				foreign				key references lav.Servicos,
Caix_Qtde	int				not null,		
Caix_valor	money			not null,
)
go

select * from lav.caixa

insert into lav.caixa values
('2', '3', '4', '5', '12','10')

------------------------------informações-consumidores-----------------------------------
insert into lav.Consumidor values ('Matthias','Rua Cruise ','MCruise@grosbeak.com')
insert into lav.Consumidor values ('Meenaksh','Rua Mason','Meenakshi.Mason@JACANA.COM')
insert into lav.Consumidor values ('Christia','Rua Cage','Christian.Cage@KINGLET.COM')
insert into lav.Consumidor values ('Gerald',' Rua Martin','GMartin@scoter.com')
insert into lav.Consumidor values ('Guillaum','Edwards','GEdwards@shrike.com')
insert into lav.Consumidor values ('Maurice ','Rua Mahoney','Maurice.Mahoney@SNIPE.COM')
insert into lav.Consumidor values ('Maurice','Rua Hasan','Maurice.Hasan@STILT.COM')
insert into lav.Consumidor values ('Diana','Rua Sen','DSen@tattler.com')
insert into lav.Consumidor values ('Maurice','Rua Daltrey','MDaltrey@teal.com')
insert into lav.Consumidor values ('Elizabet','Rua Brown','Elizabeth.Brown@THRASHER.COM')
insert into lav.Consumidor values ('Maximili','Rua Henner','Maximilian.Henner@DUNLIN.COM')
insert into lav.Consumidor values ('Sam','Rua Spielber','SSpielberg@gadwall.com')
insert into lav.Consumidor values ('Sachin',' Rua Neeson','SNeeson@gallinule.com')
insert into lav.Consumidor values ('Sivaji ','Rua Landis','Sivaji.Landis@GOLDENEYE.COM')
insert into lav.Consumidor values ('Mammutti','Rua Pacino','Mammutti.Pacino@GREBE.COM')
insert into lav.Consumidor values ('Elias',' Rua  Fawcett','EFawcett@jacana.com')
insert into lav.Consumidor values ('Ishwarya','Rua Roberts','IRoberts@lapwing.com')
insert into lav.Consumidor values ('Gustav ',' Rua Steenbur','Gustav.Steenburgen@PINTAIL.COM')
insert into lav.Consumidor values ('Markus',' Rua Rampling','Markus.Rampling@PUFFIN.COM')
insert into lav.Consumidor values ('Gomer ',' Rua Slater',' RuaGSlater@pyrrhuloxia.com')
insert into lav.Consumidor values ('Divine',' Rua Aykroyd','DAykroyd@redstart.com')
insert into lav.Consumidor values ('Dieter',' Rua Matthau ','Dieter.Matthau@VERDIN.COM')
insert into lav.Consumidor values ('Divine',' Rua Sheen','Sheen@COWBIRD.COM')
insert into lav.Consumidor values ('Fernando','Rua Grodin','FGrodin@creeper.com')
insert into lav.Consumidor values ('Frederic','Rua Romero',' RuaFRomero@curlew.com')
insert into lav.Consumidor values ('Goldie',' Rua Montand','Goldie.Montand@DIPPER.COM')
insert into lav.Consumidor values ('Sidney','Rua Capshaw','Sidney.Capshaw@DUNLIN.COM')
insert into lav.Consumidor values ('Fredwina','Rua Lyon ','FLyon@flicker.com')
insert into lav.Consumidor values ('Eddie  ','Rua Boyer',' EBoyer@gallinule.com')
insert into lav.Consumidor values ('Eddie','Rua Stern',' Eddie.Stern@GODWIT.COM')
insert into lav.Consumidor values ('Ernest ','Rua Weaver',' Ernest.Weaver@GROSBEAK.COM')
insert into lav.Consumidor values ('Diana','Rua  lorentz','dlor@limpkin.com')
insert into lav.Consumidor values ('Stephen','Rua King',' sking@merganser.com')
insert into lav.Consumidor values ('Alexande','Rua Hunold','AHun@MOORHEN.COM')

---------------------------------pesquisas-consumidor--------------------------------------
select * from lav.consumidor

select * from lav.consumidor
order by Cons_NM

select * from lav.consumidor
order by Cons_NM desc

---------------------------------pesquisas-produtos---------------------------------------
select * from lav.produtos

select Prod_NM from lav.produtos

select distinct Prod_NM from lav.produtos

insert into lav.produtos values ('queijo','10.00')
insert into lav.produtos values ('goiabada','10.00')
---------------------------------pesquisa-serviços----------------------------------------
select * from lav.servicos

select * from lav.consumidor
where Cons_NM = 'Divine'
and Cons_end = ' Rua Sheen'
