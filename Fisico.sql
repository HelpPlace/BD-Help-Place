CREATE TABLE Pessoa (
ID_pessoa varchar(10) PRIMARY KEY,
Tipo_pessoa varchar(10),
Nome varchar(40),
CPF varchar(15),
Endereço varchar(30),
Telefone varchar (10),
-- Erro: nome do campo duplicado nesta tabela!
Telefone1 varchar(10),
-- Erro: nome do campo duplicado nesta tabela!
Telefone2 varchar (10),
Email varchar(30)
)

CREATE TABLE Produto (
ID_Produto varchar (10) PRIMARY KEY,
Computador varchar (10),
Software varchar (10),
Monitor varchar (10),
Periferico varchar (10),
ID_Tipo varchar (10),
ID_modelo varchar (10)
)

CREATE TABLE Tipo_produto (
ID_Tipo varchar (10) PRIMARY KEY
)

CREATE TABLE Marca (
ID_marca varchar (10) PRIMARY KEY
)

CREATE TABLE Modelo (
ID_modelo varchar (10) PRIMARY KEY
)

CREATE TABLE Tipo_serviços (
ID_Tipo_seviços varchar (10) PRIMARY KEY,
Descrição varchar (10)
)

CREATE TABLE Chamado (
ID_chamado varchar (10) PRIMARY KEY,
ID_pessoa varchar (10),
FOREIGN KEY(ID_pessoa) REFERENCES Pessoa (ID_pessoa)
)

CREATE TABLE Ocorr_Chamado (
ID_chamado varchar(10),
FOREIGN KEY(ID_chamado) REFERENCES Chamado (ID_chamado)
)

CREATE TABLE Tem (
ID_marca varchar (10),
ID_Produto varchar (10),
FOREIGN KEY(ID_marca) REFERENCES Marca (ID_marca),
FOREIGN KEY(ID_Produto) REFERENCES Produto (ID_Produto)
)

CREATE TABLE Solicita (
ID_pessoa varchar (10),
FOREIGN KEY(ID_pessoa) REFERENCES Pessoa (ID_pessoa)
)

CREATE TABLE Pede (
ID_Produto varchar (10),
FOREIGN KEY(ID_Produto) REFERENCES Produto (ID_Produto)
)

ALTER TABLE Produto ADD FOREIGN KEY(ID_Tipo) REFERENCES Tipo_produto (ID_Tipo)
ALTER TABLE Produto ADD FOREIGN KEY(ID_modelo) REFERENCES Modelo (ID_modelo)
