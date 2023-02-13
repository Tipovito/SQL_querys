create database mahogany
go

use mahogany
go

create schema madera authorization dbo
go

---------------------Tabelas-Login-e-Cadastros--------------------------------------

create table madera.login
(
log_CD			int				primary key			identity(1,1),
log_usu			varchar(40)		not null,
log_senha		int				not null,
log_cargo		varchar(30)		not null,
)
go

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

------------------Tabelas-Controles--------------------------------------------------

create table madera.control_caixa
(
caix_CD
func_CD
)
go