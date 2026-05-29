create database smallville_city;
use smallville_city;

create table cadastro (
idCadastro INT PRIMARY KEY auto_increment,
nome varchar(60),
apelido varchar(60),
email varchar(100),
senha varchar(100)
);

CREATE TABLE caracteristicas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    superVelocidade DECIMAL(5,2),
    superForca DECIMAL(5,2),
    voo DECIMAL(5,2),
    raioLaser DECIMAL(5,2),
    soproCongelante DECIMAL(5,2),
    invulnerabilidade DECIMAL(5,2)
);

