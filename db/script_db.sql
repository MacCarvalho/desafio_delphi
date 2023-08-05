-- -----------------------------------------------------
-- Schema Desafio
-- -----------------------------------------------------
USE Desafio;
-- -----------------------------------------------------
-- Table CLIENTES
-- -----------------------------------------------------
CREATE TABLE CLIENTES (
  CODIGO int identity(1, 1) primary key,
  NOME VARCHAR(255) NULL,
  CIDADE VARCHAR(45) NULL,
  UF VARCHAR(2) NULL
) -- -----------------------------------------------------
-- Table PRODUTOS
-- -----------------------------------------------------
CREATE TABLE PRODUTOS (
  CODIGO int identity(1, 1) primary key,
  DESCRICAO VARCHAR(255) NULL,
  PRECO DECIMAL NOT NULL DEFAULT 0
) -- -----------------------------------------------------
-- Table PEDIDOS
-- -----------------------------------------------------
CREATE TABLE PEDIDOS (
  CODIGO int identity(1, 1) primary key,
  DATA DATE NULL,
  VALOR_TOTAL DECIMAL NULL,
  CLIENTE_CODIGO INT NOT NULL FOREIGN KEY REFERENCES CLIENTES(CODIGO)
) -- -----------------------------------------------------
-- Table PEDIDOS_PRODUTOS
-- -----------------------------------------------------
CREATE TABLE PEDIDOS_PRODUTOS (
  CODIGO int identity(1, 1) primary key,
  PEDIDOS_CODIGO INT NOT NULL FOREIGN KEY REFERENCES PEDIDOS (CODIGO),
  PRODUTOS_CODIGO INT NOT NULL FOREIGN KEY (PRODUTOS_CODIGO) REFERENCES PRODUTOS (CODIGO),
  QTDE DECIMAL NULL,
  VALOR_UNITARIO DECIMAL NULL,
  VALOR_TOTAL VARCHAR(45) NULL
)