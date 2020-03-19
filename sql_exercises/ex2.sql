PRAGMA foreign_keys = true;


DROP TABLE IF EXISTS Modelo;
DROP TABLE IF EXISTS CodPostal;
DROP TABLE IF EXISTS Marca;


CREATE TABLE Marca (
    idMarca int PRIMARY KEY,
    nome TEXT
);

CREATE TABLE Modelo (
    idModelo int PRIMARY KEY,
    nome TEXT,
    idMarca int,
    FOREIGN KEY (idMarca) REFERENCES Marca
);

CREATE TABLE CodPostal (
    codPostal1 char(4) PRIMARY KEY,
    localidade TEXT
);

CREATE TABLE Cliente (
    idCliente int PRIMARY KEY,
    nome TEXT,
    morada TEXT,
    codPostal1 char(4),
    codPostal2 char(3),
    telefone char(9),
    FOREIGN KEY (codPostal1) references CodPostal
);

CREATE TABLE Carro (
    idCarro int PRIMARY KEY,
    matricula TEXT UNIQUE NOT NULL,
    idModelo int,
    idCliente int,
    FOREIGN KEY (idModelo) REFERENCES Modelo,
    FOREIGN KEY (idCliente) REFERENCES Cliente
);

CREATE TABLE Reparacao(
    idReparacao int PRIMARY KEY,
    dataInicio NUMERIC,
    dataFim NUMERIC,
    idCliente int,
    idCarro int,
    FOREIGN KEY (idCliente) REFERENCES Cliente,
    FOREIGN KEY (idCarro) REFERENCES Carro,

    CONSTRAINT CHK_date CHECK ( dataFim >= dataInicio )
);

-- TODO: Completar as tabelas
