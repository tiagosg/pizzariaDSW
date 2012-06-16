DROP DATABASE IF EXISTS pizzaria;
CREATE DATABASE pizzaria;
USE pizzaria;

CREATE TABLE endereco
(
   codigo 			INTEGER NOT NULL,
   logradouro      	VARCHAR(40),
   numero		   	INTEGER,
   complemento   	VARCHAR(40),
   bairro   		VARCHAR(40),
   cidade   		VARCHAR(40),
   uf   			VARCHAR(2),
   cep   			VARCHAR(40),
   PRIMARY KEY(codigo)
)ENGINE = InnoDB;

CREATE TABLE usuario
(
   codigo 			INTEGER NOT NULL,
   login   			VARCHAR(40),
   senha   			VARCHAR(40),
   PRIMARY KEY(codigo)
)ENGINE = InnoDB;

CREATE TABLE cliente
(
   codigo 			INTEGER NOT NULL,
   nome      		VARCHAR(40),
   cpf		   		VARCHAR(15),
   email   			VARCHAR(40),
   telefone   		VARCHAR(40),
   celular   		VARCHAR(40),   
   cod_usuario		INTEGER,
   cod_endereco		INTEGER,
   FOREIGN KEY(cod_usuario) REFERENCES usuario(codigo) ON DELETE CASCADE,
   FOREIGN KEY(cod_endereco) REFERENCES endereco(codigo) ON DELETE CASCADE,
   PRIMARY KEY(codigo)
)ENGINE = InnoDB;


