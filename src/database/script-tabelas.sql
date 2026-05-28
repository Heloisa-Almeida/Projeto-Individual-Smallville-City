create database smallville_city;
use smallville_city;

create table cadastro (
idCadastro INT PRIMARY KEY auto_increment,
nome varchar(60),
apelido varchar(60),
email varchar(100),
senha varchar(100)
);
