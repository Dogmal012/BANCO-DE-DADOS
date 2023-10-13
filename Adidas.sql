CREATE DATABASE Adidas;

create table Adidas.Funcionario(
id int auto_increment primary key,
Nome varchar(255) not null,
Cargo varchar(255) not null,
DataContratacao date not null,
Salario float not null,
DepartamentoId int,
foreign key (DepartamentoId) references adidas.Departamentos(Id)
);

insert into Adidas.Funcionarios(Nome,Cargo,DataContratacao,Salario,DepartamentoId)
values("André","Modelo","2002-11-13","1000","1");


create table Adidas.Departamento(
Id int auto_increment primary key,
Nome varchar(255) not null,
DataNascimento date not null
);

insert into Adidas.Departamentos(Nome)
values("Adidas");


create table Adidas.Dependentes(
Id int auto_increment primary key,
Nome varchar(255) not null,
DataNascimento date not null,
IdFuncionarios int,
foreign key(IdFuncionario) references Adidas.Funcionarios(id)
);

insert into Adidas.Dependentes(Nome,DataNascimento,IDFuncionarios)
values("Adidas");

select F.Nome as "Nome Do Funcinário",
D.Nome as "Nome do Departamento",
DE.Nome as "Nome Do Dependentes"
from Adidas.Funcionario F
inner join Adidas.Departamentos D on D.Id = F.DepartamentoId
left join Adidas.Dpendentes DE on DE.IDFuncionarios = F.Id;

drop database Adidas

