create database agenda_info
go

use agenda_info
go

create schema info authorization dbo
go

create table informacao
(
info_NM				nvarchar(255)	not null,
info_fone			nvarchar(100)	null,
info_email          nvarchar(255)	null,
info_end			nvarchar(255)	null,
info_CEP			nvarchar(20)	null,
info_reg			nvarchar(50)	null,
info_pais			nvarchar(100)	null,
)
go

insert into informacao values ('Maria','777','mafejungkook@','putin','12214500','leste','Brasil')
insert into informacao values ('Alex','666','alexturner@','shefield','12214532','sul','Inglaterra')
insert into informacao values ('Victor','444','tipovito@','buquirinha','1221466','norte','jamaica')