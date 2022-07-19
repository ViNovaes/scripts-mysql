--1 Crie uma database chamada ZOOLOGICO. 

drop database dbzoologico;

show databases;

create database dbzoologico;

use dbzoologico;

--2 Na database ZOOLOGICO, crei uma tabela 
-- chamada ANIMAIS.

create table tbanimais(
codigo int,
tipo char(15),
nome char(30),
idade tinyint,
valor decimal(10,2)
);

insert into tbanimais values(1,'Cachorro','Djudi',3,'300.00');
select * from tbanimais;

insert into tbanimais values(2,'Cachorro','Sula',5,'300.00');
select * from tbanimais;

insert into tbanimais values(3,'Cachorro','Sarina',7,'300.00');
select * from tbanimais;

insert into tbanimais values(4,'Gato','Pipa',2,'500.00');
select * from tbanimais;

insert into tbanimais values(5,'Gato','Sarangue',2,'500.00');
select * from tbanimais;

insert into tbanimais values(6,'Gato','Clarences',1,'500.00');
select * from tbanimais;

insert into tbanimais values(7,'Coruja','Agnes',0,'700.00');
select * from tbanimais;

insert into tbanimais values(8,'Coruja','Arabela',1,'700.00');
select * from tbanimais;

insert into tbanimais values(9,'Sapo','Agnes',1,'100.00');
select * from tbanimais;

insert into tbanimais values(10,'Peixe','Fish',0,'100.00');
select * from tbanimais;

--3 Escreva um comando que exiba todas as 
--colunas e todas as linhas da 
--tabela ANIMAIS.

show tables;

--4 Escreva um comando que exiba apenas as colunas 
--TIPO e NOME da tabela ANIMAIS, 
--apresentando todos os registros da tabela.

select tipo,nome from tbanimais;

--5 Escreva um comando que exiba apenas as colunas TIPO, 
--NOME e IDADE da tabela ANIMAIS, 
--apresentado todos os registros. 

select tipo,nome,idade from tbanimais;

--6 Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS
--apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias 
--[Tipo de Animal] e a coluna nome com o alias [Nome do Animal].

select tipo as 'Tipo de animal',nome as 'Nome do animal' from tbanimais;

--7 Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
--ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o 
--alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna 
--IDADE com o alias [Tempo de Vida].

select tipo as 'Tipo de animal',nome as 'Nome do animal',idade as 'Tempo de vida' from tbanimais;

--8 Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma

select 'Animal Doméstico' as 'Procedência',tipo as "Tipo",nome as 'Nome',idade as 'Tempo de vida' from tbanimais;

--9 Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma

select tipo,nome,idade,valor as 'Valor Original',valor*1.10 as 'Valor de Vendas' from tbanimais;


select tipo,valor as 'Valor Original',valor*1.10 as 'Valor de Vendas' from tbanimais;