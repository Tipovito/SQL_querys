create database parceiros
go

use parceiros
go

create schema parca authorization dbo
go

create table parca.pessoas
(
pess_ID				int				primary key			identity(1,1),
pess_NM				varchar(40)		not null,
pess_NM_fantasia	varchar(40)		not null,
pess_endereço		varchar(40)		not null,
pess_número			varchar(5)		not null,
pess_complemento	varchar(20)		not null,
pess_bairro			varchar(20)		not null,
pess_cep			varchar(10)		not null,
pess_cidade			varchar(40)		not null,
pess_UF				varchar(40)		not null,
)
go

create table parca.fisica
(
fis_ID				int				primary key			identity(1,1),
fis_CPF				int				not null,
fis_RG				nchar(7)		not null,
fis_genero			varchar(1)		not null,
fis_nasc			date			not null,
)
go

create table parca.juridica
(
jur_ID				int				primary key			identity(1,1),
jur_CNPJ			varchar(30)		not null,
jur_Ins_est			varchar(30)		not null,
jur_fund			date			not null,
)
go

create table parca.parceiro
(
par_ID				int				primary key			identity(1,1),
par_tipo			varchar(40)		not null,
par_desempenho		float			not null,
)
go

create table parca.colaborador
(
colab_ID			int				primary key			identity(1,1),
colab_CTPS			varchar(20)		not null,
colab_PIS			varchar(20)		not null,
colab_tit_eleitor	varchar(20)     not null,
colab_reservista	varchar(1)		not null,
colab_est_civil		varchar(20)		not null,
colab_num_dep		int				not null,
colab_ativo			varchar(1)		not null,
colab_setor			varchar(30)		not null,
colab_cargo			varchar(30)		not null,
colab_salario		money			not null,
colab_fone1			varchar(30)		not null,
colab_fone2			varchar(30)		null,
colab_email_pess	varchar(40)		not null,
colab_email_corp	varchar(40)		null,
)
go