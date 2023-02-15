create database empresa
go

use empresa
go

create schema emp authorization dbo
go

create table emp.empregados
(
emp_CD			int			primary key			identity(1,1),
emp_NM			varchar(40)	not null,
emp_DTcontrat	date		not null,
emp_depart		varchar(30)	not null,
)
go

drop table emp.empregados

INSERT INTO emp.empregados 
VALUES
  ('Indira Gallegos','10-05-1999','juridico'),
  ('Nayda Lyons','25-07-2021','desenvolvimento'),
  ('Brent Mullins','23-06-2010','juridico'),
  ('Raymond Wynn','14-10-2011','financeiro'),
  ('Kaseem Flynn','15-10-2012','comercial'),
  ('Shelley Espinoza','29-10-2002','marketing'),
  ('Adele Mcmillan','12-12-1997','comercial'),
  ('Quinn Macdonald','10-05-2001','produção'),
  ('Sebastian Haney','10-12-1968','pessoal'),
  ('Sacha Clemons','17-08-2024','marketing'),
  ('Emerald Saunders','22-08-2015','pessoal'),
  ('Mannix Weiss','16-11-1998','produção'),
  ('Daphne Sanchez','11-03-2001','TI'),
  ('Kelly Holder','20-08-2013','operações'),
  ('Pearl Welch','01-11-1992','compras'),
  ('Quentin Bray','05-05-2006','TI'),
  ('Harriet Sears','07-12-2017','operações'),
  ('Kai Perkins','31-12-2027','financeiro'),
  ('Kyla Oliver','06-03-2009','compras'),
  ('Talon Carver','31-12-2004','financeiro');
  
  -----------------------------view----------------------------------------
  create view empregadosInfo as
  select emp_CD,emp_DTcontrat,emp_depart 
  from emp.empregados
  where emp_depart = 'financeiro'
  
  select * from empregadosInfo

  -----------------------------delete--------------------------------------

  delete from emp.empregados where emp_depart = 'TI'

  select * from emp.empregados
