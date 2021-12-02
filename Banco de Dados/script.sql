-- Criando e usando o database;

create database Wingardium_Leviosa;

use Wingardium_Leviosa;

-- Criando as tabelas, referentes a modelagem;

create table casa(
idcasa int primary key,
casa varchar(45));

create table usuario(
id int primary key auto_increment,
nome varchar(50),
email varchar(50),
feitiço varchar(50),
senha varchar(50),
fkcasa int);

create table aviso(
id int primary key auto_increment,
titulo varchar(100),
descricao varchar(250),
fk_usuario int);

-- Alterando as tabelas, para referenciar as foreign key;

alter table usuario add foreign key (fkcasa) references casa(idcasa);
alter table aviso add foreign key (fkusuario) references usuario(id);

-- Insirindo dados na tabela casa, as demais tabelas a API fará isso automaticamente;

insert into casa values
(1, 'Grifinória'),
(2, 'Sonserina'),
(3, 'Corvinal'),
(4, 'Lufa-lufa');


select count(fkcasa) from usuario where fkcasa = 1;
select count(fkcasa) from usuario where fkcasa = 2;