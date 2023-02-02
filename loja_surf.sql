create database loja_surf	
go

--abrid o BD
use loja_surf
go

create schema surf authorization dbo
go

create table surf.funcionarios
(
Func_CD			int			primary key		identity(1,1),
Func_NM			nchar(40)	not null,
Func_CPF        int         not null,
Func_RG         char(10)    not null,
Func_DT_Nasc    date        not null,
Func_End        nchar(40)   not null,
Func_fone       int         not null,
Func_email      nchar(40)   not null,
Func_comis      float       not null,
Func_usu        nchar(20)   not null,
Func_SH         int         not null,
Func_Cargo      nchar(40)   not null,
)
go

create table surf.clientes
(
Clie_CD			int			primary key		identity(1,1),
Clie_NM         nchar(40)   not null,
Clie_CPF        int         not null, 
Clie_RG         char(10)    not null,
Clie_DT_Nasc    date        not null,
Clie_fone       int         not null,
Clie_email      nchar(40)   not null,
Clie_ref        char(40)    not null,
Clie_fone_ref   int         not null,  
)
go

create table surf.cad_fornecedores
(
Forn_CD			int			primary key		identity(1,1),
Forn_RSocial    char(40)    not null,
Forn_CNPJ       int         not null,
Forn_Ins_estado int         not null,
Forn_fone       int         not null,
Forn_email      nchar(40)   not null,
Forn_Rep        Nchar(40)   not null,
)
go

create table surf.cad_produtos
(
Prod_CD         int			primary key		identity(1,1),
Prod_DS         nchar(50)   not null,
Prod_Marca      nchar(30)   not null,
Prod_TM         nchar(30)   not null,
Prod_VL_aquis   money       not null,
Prod_VL_venda   money       not null,
)
go

create table surf.pedidos_compras
(
Pedi_CD			int			primary key		identity(1,1),
Forn_CD         int         not null,
Forn_RSocial    nchar(40)   not null,
Prod_CD         int         not null,
Prod_DS         nchar(50)   not null,   
Pedi_QT         int         not null,
Pedi_DT         date        not null,
)
go

create table surf.control_estoque
(
Esto_CD        int			primary key		identity(1,1),
Prod_CD        int          not null,
Prod_DS        nchar(50)    not null,
Esto_DTE       date         not null,
Esto_DTS       date         not null,
Esto_QTE       int          not null,
Esto_QTS       int          not null,
Forn_CD        int          not null,
Forn_RSocial   nchar(40)    not null,
Esto_uni       nchar(40)    not null,
)
go

create table surf.control_caixa
(
Caix_CD		   int			primary key		identity(1,1),
Prod_CD        int          not null,
Prod_DS        nchar(50)    not null,
Caix_QT        int          not null,
Caix_VL_total  money        not null, 
Caix_F_pgmeto  nchar(20)    not null,
)
go

--use master
--comando para apagar um BD
--drop database lojasurf
