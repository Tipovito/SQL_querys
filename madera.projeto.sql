create database mahogany
go

use mahogany
go

create schema madera authorization dbo
go

---------------------login-----------------------------------------------------------

create table madera.login
(
log_CD			int				primary key			identity(1,1),
log_usu			varchar(40)		not null,
log_senha		int				not null,
log_cargo		varchar(30)		not null,
)
go

---------------------Tabelas-Cadastros-----------------------------------------------

create table madera.funcionarios
(
func_CD			int				primary key			identity(1,1),
func_NM			varchar(40)		not null,
func_CPF		int				not null,
func_RG			varchar(12)		not null,
func_DT_nasc	date			not null,
func_end		varchar(40)		not null,
func_numcasa	int				not null,
func_fone		varchar(20)		not null,
func_email		varchar(40)		not null,
func_comiss		money			not null,
func_usu		varchar(30)		not null,
func_senha		int				not null,
func_cargo		varchar(30)		not null,
)
go

create table madera.fornecedores
(
forn_CD			int				primary key			identity(1,1),
forn_Rsocial	varchar(40)		not null,
forn_CNPJ		varchar(30)		not null,
forn_Ins_est	int				not null,
forn_end		varchar(40)		not null,
forn_fone		varchar(20)		not null,
forn_email		varchar(40)		not null,
forn_rpstnt		varchar(40)		not null,
)
go

create table madera.cliente
(
clie_CD			int				primary key			identity(1,1),
clie_NM			varchar(40)		not null,
clie_CPF		int				not null,
clie_RG			varchar(12)		not null,
clie_DT_nasc	date			not null,
clie_fone		varchar(20)		not null,
clie_email		varchar(40)		not null,
clie_ref		varchar(40)		not null,
clie_fone_ref	varchar(20)		not null,
)
go

------------------tabelas-Produtos-e-Pedidos------------------------------------------
create table madera.produtos
(
prod_CD			int				primary key			identity(1,1),
prod_desc		varchar(40)		not null,
prod_tipo		varchar(30)		not null,
prod_marca		varchar(30)		not null,
prod_mate		varchar(20)		not null,
prod_QT			int				not null,
prod_VL_aquisi	money			not null,
prod_VL_venda	money			not null,
)
go

create table madera.pedidos
(
pedi_CD			int				primary key			identity(1,1),
pedi_DT			date			not null,
clie_CD			int				foreign				key references madera.clientes,
clie_NM			varchar(40)		not null,
clie_fone		varchar(20)		not null,
prod_CD			int				foreign				key references madera.produtos,
prod_desc		varchar(40)		not null,
pedi_end_entre	varchar(40)		not null,
pedi_DT_entre	date			not null,
pedi_status		varchar(20)		not null,
)
go
------------------Tabelas-Controles--------------------------------------------------

create table madera.control_caixa
(
caix_CD			int				primary key			identity(1,1),
func_CD			int				foreign				key references madera.funcionarios,
clie_CD			int				foreign				key references madera.clientes,
prod_CD			int				foreign				key references madera.produtos,
prod_QT			int				not null,
caix_Vtotal		money			not null,
caix_pgmnt		varchar(20)		not null,
)
go

create table madera.control_vendas
(
vend_CD			int				primary key			identity(1,1),
clie_CD			int				foreign				key references madera.clientes,
vend_DT			date			not null,
vend_venci		date			not null,
vend_pgmnt		varchar(20)		not null,
func_CD			int				foreign				key references madera.funcionarios,
)
go

create table madera.control_estoque
(
esto_CD			int				primary key			identity(1,1),
prod_CD			int				foreign				key references madera.produtos,
prod_desc		varchar(40)		not null,
esto_DT_entra	date			not null,
esto_DT_saida	date			not null,
esto_QT_entra	int				not null,
esto_QT_saida	int				not null,
forn_CD			int				foreign				key references madera.fornecedores,
forn_Rsocial	varchar(40)		not null,
esto_uni		int				not null,
)
go