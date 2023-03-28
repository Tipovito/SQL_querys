create database biblio
go

use biblio

create schema biblio authorization dbo
go

create table biblio.livros
(
livros_CD		int			identity(1,1)		primary key,
livros_NM		varchar(40)	not null,
)
go

create table biblio.autores
(
autor_CD		int			identity(1,1)		primary key,
autor_NM		varchar(40)	not null,
)
go

create table biblio.acervo
(
livro_CD	int	not null,
autor_CD	int not null,
foreign key (livro_CD) references biblio.livros(livros_CD),
foreign key (autor_CD) references biblio.autores(autor_CD),
)
go


-- Inserir dados na tabela biblio.livros
INSERT INTO biblio.livros (livros_NM)
VALUES ('O Senhor dos Anéis'), ('Harry Potter e a Pedra Filosofal'), ('As Crônicas de Nárnia');

-- Inserir dados na tabela biblio.autores
INSERT INTO biblio.autores (autor_NM)
VALUES ('J.R.R. Tolkien'), ('J.K. Rowling'), ('C.S. Lewis');

-- Inserir dados na tabela biblio.acervo
INSERT INTO biblio.acervo (livro_CD, autor_CD)
VALUES (1, 1), (2, 2), (3, 3);


select * from biblio.livros

select * from biblio.autores

select * from biblio.acervo

--Join

select biblio.livros.livros_NM, biblio.autores.autor_NM
from biblio.acervo
join biblio.livros on biblio.livros.livros_CD = biblio.acervo.livro_CD
join biblio.autores on biblio.autores.autor_CD = biblio.acervo.autor_CD

--view

create view biblio.VWacervolivro
as
select biblio.livros.livros_NM, biblio.autores.autor_NM
from biblio.acervo
join biblio.livros on biblio.livros.livros_CD = biblio.acervo.livro_CD
join biblio.autores on biblio.autores.autor_CD = biblio.acervo.autor_CD

