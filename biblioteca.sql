create database biblioteca
go

use biblioteca
go

create schema livro authorization dbo
go

create table livro.funcionarios
(
func_CD		int			primary key			identity(1,1),
func_NM		varchar(40)	not null,
func_fone	varchar(30)	not null,
func_email	varchar(40)	not null,
func_end	varchar(40)	not null,
)
go

create table livro.clientes
(
clie_CD		int			primary key			identity(1,1),
clie_NM		varchar(40)	not null,
clie_fone	varchar(30)	not null,
clie_email	varchar(40)	not null,
clie_end	varchar(40)	not null,
)
go

drop table livro.funcionarios
go
drop table livro.clientes
go

create table livro.livros
(
liv_CD			int			primary key			identity(1,1),
liv_NM			varchar(40)	not null,
liv_pub			date		not null,
liv_autor		varchar(40)	not null,
liv_DTsaida		date		not null,
liv_DTentrada	date		not null,
)
go

--------------------------------informações------------------------------------------

INSERT INTO livro.funcionarios VALUES
  ('Moana Webb','(737) 541-1583','velit.dui.semper@outlook.couk','864-5580 Arcu Rd.'),
  ('Kuame Mosley','1-833-642-4878','non.bibendum@google.ca','Ap #626-1630 Amet St.'),
  ('Lavinia Pitts','1-663-546-3563','ultricies.sem@aol.com','2330 In Road'),
  ('Ethan Peters','(391) 749-6631','neque.non.quam@google.ca','389-1190 Nibh. Rd.'),
  ('Thor Carney','(213) 313-4240','molestie.arcu@yahoo.ca','6572 Cursus, Rd.'),
  ('Austin Larsen','(647) 561-1314','morbi.vehicula@protonmail.ca','P.O. Box 490, 9636 Malesuada St.'),
  ('Norman Neal','(617) 738-7376','pulvinar.arcu@yahoo.edu','3818 Lacinia Street'),
  ('Calvin Baker','1-153-718-5224','lorem@outlook.couk','827 Donec St.'),
  ('Julie Coleman','1-215-843-9125','netus.et@icloud.org','P.O. Box 102, 5030 Urna Rd.'),
  ('Kyla Jennings','1-169-552-5954','ac.urna@protonmail.com','4548 Quam. Ave');
  go

INSERT INTO livro.clientes VALUES
  ('Axel Knox','(231) 201-9587','elit@google.couk','926-4106 Pellentesque Road'),
  ('Lee Workman','1-224-361-7177','amet.ornare@hotmail.couk','662-9956 In Avenue'),
  ('Ava Ellison','1-672-768-5023','mattis.semper@protonmail.net','Ap #147-593 Auctor, St.'),
  ('Griffith Fischer','(550) 833-2125','erat.eget@aol.org','301-2361 Dui. Rd.'),
  ('Amela Joyce','1-336-622-3178','mauris@aol.couk','P.O. Box 387, 408 Libero Av.'),
  ('Diana Levy','1-344-241-0123','massa.vestibulum@icloud.edu','671-1133 In Avenue'),
  ('Shoshana Golden','1-132-353-2652','semper.cursus@outlook.com','Ap #548-9470 Dictum Road'),
  ('Kibo Pollard','1-277-117-3391','sodales.elit.erat@google.org','Ap #712-7257 Et Rd.'),
  ('Sydney Thornton','(144) 316-1185','fringilla.purus@icloud.ca','339-8886 Vel, St.'),
  ('Donna Velazquez','(668) 512-8779','at.fringilla@outlook.net','P.O. Box 672, 7754 Hymenaeos. Street');
  go

insert into livro.livros values 
('harry potter','10/11/2004','JK rowling','12/05/2005','15/05/2005'),
('miseraveis','14/02/2010','victor','03/04/2003','07/04/2005'),
('banana','01/02/2007','jeff','22/10/2011','25/06/2011')
----------------------------------------views--------------------------------------------------------
--livros
create view livro.biblio as
select liv_CD,liv_NM,liv_pub,liv_autor,liv_DTsaida,liv_DTentrada 
from livro.livros
where liv_autor = 'jeff'

select * from livro.biblio

create view livro.infofunc as
select func_CD,func_NM,func_fone,func_email,func_end
from livro.funcionarios
where func_NM = 'Lavinia pitts' 

select * from livro.infofunc