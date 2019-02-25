create database lojavirtual;

use lojavirtual;

create table categoria(
	idcategoria int primary key auto_increment,
	nomecategoria varchar(15)
);

create table produto(
	idproduto int primary key auto_increment,
	nome varchar(20) not null,
	estoque int not null,
	preco double(10,2) not null,
	validade date not null,
	id_categoria int
);

create table usuario(
	email varchar(255) unique not null,
	senha varchar(255) not null
);

alter table produto add constraint fkprodutocategoria 
	foreign key(id_categoria) references categoria(idcategoria);

ALTER DATABASE lojavirtual CHARSET = UTF8 COLLATE = utf8_general_ci;
ALTER TABLE produto DEFAULT CHARACTER SET UTF8;
ALTER TABLE categoria DEFAULT CHARACTER SET UTF8;
ALTER TABLE usuario DEFAULT CHARACTER SET UTF8;
	
insert into categoria values(null, 'Livros');
insert into categoria values(null, 'Informatica');
insert into categoria values(null, 'Eletronico');
insert into categoria values(null, 'Roupas');
insert into categoria values(null, 'Jogos');
insert into categoria values(null, 'DVD');


select * from categoria;
