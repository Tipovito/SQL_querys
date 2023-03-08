create database colab
go

use colab
go

create schema cola authorization dbo
go

create table cola.pessoa
(
pess_CD		     int		identity(1,1) primary key,
pess_nm			 varchar(40) not null,
pess_nm_fantasia varchar(40) not null,
pess_endereco	 varchar(40) not null,
pess_numero		 varchar(5)	 not null,
pess_compl		 varchar(20) not null,
pess_bairro		 varchar(20) not null,
pess_cep		 varchar(10) not null,	
pess_cidade		 varchar(40) not null,
pess_uf			 varchar(40) not null
)

create table cola.fisica
(
fis_CD		int			primary key,
fis_CPF		int			not null,
fis_RG		int			not null,
fis_genero	varchar(1)	not null, 
fis_nasc	date		not null
)

create table cola.juridica
(
jur_CD		int				primary key,
jur_CNPJ	varchar(30)		not null,
jur_Ins_Est	varchar(30)		not null,
jur_fund	date			not null
)

create table cola.parceiro
(
par_CD			int			primary key,
par_tipo_pessoa	varchar(40)	not null,
par_desenpenho	float		not null
)

create table cola.colaborador
(
col_CD			int			primary key,		
col_ctps		varchar(20)	not null,
col_pis			varchar(20)	not null,
col_tit_eleitor varchar(20)	not null,
col_reservista	varchar(1)	not null,
col_est_civil	varchar(20)	not null,
col_num_dep		int,	
col_ativo		varchar(1),
col_setor		varchar(30),
col_cargo		varchar(30),
col_salario		float,
col_fone1		varchar(20)	not null,
col_fone2		varchar(20),
col_email_Pes	varchar(40),
col_email_corp	varchar(40)
)

insert into cola.pessoa values ('victor','vitinho','rua 4','65','bar','buquirinha','12124','são josé','São Paulo')











