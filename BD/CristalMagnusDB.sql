CREATE DATABASE cristalmagnus;

USE cristalmagnus;

CREATE TABLE login (
  id_login INT AUTO_INCREMENT,
  usuario VARCHAR(50) NOT NULL,
  senha VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_login)
);

CREATE TABLE novos_usuarios (
  id_novo_usuario INT AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  email VARCHAR(100) NOT NULL,
  usuario VARCHAR(50) NOT NULL,
  senha VARCHAR(50) NOT NULL,
  repetir_senha VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_novo_usuario));

-- --------------------------- RASCUNHO
-- CREATE TABLE vendas
-- CREATE TABLE estoque
-- --------------------------- RASCUNHO

CREATE TABLE servicos (
id_servico INT AUTO_INCREMENT,
servico VARCHAR(100) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
descricao VARCHAR(10000) NOT NULL,
PRIMARY KEY (id_servico));

CREATE TABLE agendar_clientes (
id_agendar_cliente INT AUTO_INCREMENT,
fk_clientes_id_cliente INT,
fk_servicos_id_servico INT,
data DATETIME,
horario TIME,
PRIMARY KEY (id_agendar_cliente),
FOREIGN KEY (fk_clientes_id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY (fk_servicos_id_servico) REFERENCES servicos (id_servicos));

CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT,
fk_cidade_id_cidade INT,
fk_bairro_id_cidade INT,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR (11) NOT NULL,
endereco VARCHAR(100) NOT NULL,
data_de_nascimento VARCHAR(8) NOT NULL,
telefone INT(11) NOT NULL,
email VARCHAR(100) NOT NULL,
PRIMARY KEY (id_cliente),
FOREIGN KEY (fk_cidade_id_cidade) REFERENCES cidades (id_cidade),
FOREIGN KEY (fk_bairro_id_cidade) REFERENCES cidades (id_cidade));

CREATE TABLE cidades (
id_cidade INT AUTO_INCREMENT,
cep INT NOT NULL,
bairro VARCHAR(100) NOT NULL,
cidade VARCHAR(100) NOT NULL,
estado VARCHAR(100) NOT NULL,
pais VARCHAR(100) NOT NULL,
PRIMARY KEY (id_cidade));