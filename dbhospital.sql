
drop database dbhospital;

show databases;

create database dbhospital;

use dbhospital;

create table tbmedico(
idmedico int not null auto_increment,
nomeMedico varchar(45),
telefone varchar(45)
);

create table tbreceita(
idReceita_medica int not null auto_increment,
descricao varchar(255)
);

create table tbpaciente(
idPaciente int not null auto_increment,
nomePaciente varchar(45),
telefonePaciente varchar(9),
convenio varchar(45)
);

create table tbconsulta(
idconsulta int,
dt_consulta datetime,
idmedico int,
idpaciente int,
idReceita_medica int
);













insert into tbmedico(idmedico,nmMedico,telefone)
	values(1,10,11931546857);
select * from tbmedico;

insert into tbconsulta(idconsulta,dt_consulta,idmedico,idpaciente)
	values();
select * from tbconsulta;

insert into tbreceita(idReceita_medica,descricao)
	values(15,'Paciente queixou de problemas respiratorios e de dor na garganta');
select * from tbreceita;

insert into tbpaciente(idPaciente,nmPaciente,telefonePaciente,convenio)
	values(1,255,11936354842,"convenio das Cunhas 448");
select * from tbpaciente;
