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

insert into caracteristicas values
(DEFAULT, 'Superman', 70.99, 98.50, 100.00, 85.75, 38.40, 69.20);

CREATE TABLE superman (
    idSuperman INT PRIMARY KEY AUTO_INCREMENT,
    nomeHeroi VARCHAR(50),
    nomeReal VARCHAR(50),
    planetaOrigem VARCHAR(50),
    fraqueza VARCHAR(50)
);

INSERT INTO superman (nomeHeroi, nomeReal, planetaOrigem, fraqueza) VALUES
('Superman', 'Clark Kent', 'Krypton', 'Kryptonita');

ALTER TABLE caracteristicas ADD COLUMN fkSuperman INT;
ALTER TABLE caracteristicas
ADD CONSTRAINT fkCaracteristicaSuperman
FOREIGN KEY (fkSuperman)
REFERENCES superman(idSuperman);
UPDATE caracteristicas
SET fkSuperman = 1
WHERE id = 1;


