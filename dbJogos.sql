drop database dbJogos;

create database dbJogos;

use dbJogos;

create table tbEquipe(
idEquipe int not null auto_increment,
primary key(idEquipe)
);

create table tbCidade(
idCidade int not null auto_increment,
nome varchar(50),
idEquipe int not null,
primary key(idCidade),
foreign key(idEquipe)references tbEquipe(idEquipe)
);

create table tbTecnico(
idTecnico int not null auto_increment,
nome varchar(50),
funcao varchar(100),
idEquipe int not null,
primary key(idTecnico),
foreign key(idEquipe)references tbEquipe(idEquipe)
);

create table tbJogador(
idJogador int not null auto_increment,
nome varchar(50),
idEquipe int not null,
primary key(idJogador),
foreign key(idEquipe)references tbEquipe(idEquipe)
);

create table tbJogo(
idJogo int not null auto_increment,
idEquipe int not null,
idEquipe_visitante int not null,
pontos_casa int not null,
pontos_visitantes int not null,
data datetime not null,
primary key(idJogo),
foreign key(idEquipe)references tbEquipe(idEquipe)
);

