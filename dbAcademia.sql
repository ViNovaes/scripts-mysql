--ctrl s salva
drop database dbacademia;

show databases; 

create database dbacademia;

use dbacademia; 

create table tbRegistros(
id_aluno int,
id_turma int,
ausencia int,
id_registros int
);

create table tbturma(
id int,
quant_alunos int,
horario_aula datetime,
duracao_aula datetime,
data_inicio date,
data_fim date,
atividade int,
id_instrutor int,
id_monitor int
);

create table tbatividade(
id int,
atividade varchar(45)
);

create table tbinstrutor(
rg int,
nome varchar(45),
nascimento date,
titulacao varchar(45),
telefone varchar(45)
);

create table tbalunos(
matricula int,
data_matricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura float,
peso float,
id_turma int
);

create table tbMonitor(
id_aluno int
);

desc tbRegistros;
desc tbturma;
desc tbatividade
desc tbinstrutor;
desc tbalunos;
desc tbMonitor;

show tables;

insert into tbRegistros(id_aluno,id_turma,ausencia,id_registros)values(1,17,0,10);
select * from tbRegistros;

insert into tbturma(id,quant_alunos,horario_aula,duracao_aula,data_inicio,data_fim,atividade,id_instrutor,id_monitor)
	values(1,10,'2022/06/07 12:30','2022/06/07 13:30','2022/06/07','2022/07/07',1,1,2);
select * from tbturma; 

insert into tbatividade(id,atividade)values(1,'Crossfit');
select * from tbatividade;

insert into tbinstrutor(rg,name,nascimento,titulacao,telefone)
	values(190526482,'Rodrigo Mendes Pereira','1992/01/24','Musculação','11935541721');
select * from tbinstrutor;

insert into tbalunos(matricula,data_matricula,nome,endereco,telefone,nascimento,altura,peso,id_turma) 
	values(100,'2022/06/07 10:35','Julia Meneguel','Avenida João de Deus','119645219658','2003/01/03',1.70,60.6,10);
select * from tbalunos;

insert into tbMonitor (id_aluno) values (1);
select * from tbMonitor;