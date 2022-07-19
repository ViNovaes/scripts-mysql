--ctrl + S salva
--Apagar o banco de dados
drop database dbPadaria;

--Visualizar os bancos de dados no servidor MYSQL
show databases;

--criar o banco de dados
create database dbPadaria;

--acessando o banco de dados
use dbPadaria;

--visualizar banco de dados criativo
show databases;

--criando as tabelas de dados
create table tbFuncionarios(
codigo int,
nome varchar(100),
telCel char(10),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100)
);

create table tbUsuarios(
codigo int,
nome varchar(20),
senha varchar(20)
);

--visualizar as tabelas criadas
show tables;

--visualizar a estrutura da tabela
--describe tbFuncionarios;
desc tbFuncionarios;
desc tbUsuarios;

--inserir registros nas tabelas do banco de dados
insert into tbFuncionarios(codigo,nome,telCel,logradouro,
numero,cep,bairro)values(1,'amanda da Cunha','95724-7852',
'Rua Maria Joana da Cunha','35B','04523-958','Santo Amaro');

--Visualizando os registros nas tabelas
select * from tbFuncionarios;

