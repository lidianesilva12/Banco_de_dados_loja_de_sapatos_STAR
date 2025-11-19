-- ======================================================
-- 01_create_database.sql
-- Criação das tabelas do projeto Loja de Sapatos Star
-- Banco: MySQL
-- ======================================================

CREATE DATABASE IF NOT EXISTS loja_sapatos_star;
USE loja_sapatos_star;

-- ==========================
-- Tabela Cliente
-- ==========================
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(120),
    cpf CHAR(11) NOT NULL UNIQUE
);

-- ==========================
-- Tabela Fornecedor
-- ==========================
CREATE TABLE Fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cnpj CHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(120)
);

-- ==========================
-- Tabela Produto
-- ==========================
CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    categoria VARCHAR(50),
    tamanho VARCHAR(10),
    marca VARCHAR(50),
    estoque INT DEFAULT 0,
    preco DECIMAL(10,2),
    idFornecedor INT NOT NULL,
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

-- ==========================
-- Tabela Pedido
-- ==========================
CREATE TABLE Pedido (
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    dataPedido DATE NOT NULL,
    valorTotal DECIMAL(10,2),
    formaPagamento VARCHAR(30),
    idCliente INT NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

-- ==========================
-- Tabela ItemPedido
-- ==========================
CREATE TABLE ItemPedido (
    idItemPedido INT AUTO_INCREMENT PRIMARY KEY,
    idPedido INT NOT NULL,
    idProduto INT NOT NULL,
    quantidade INT NOT NULL,
    valorUnit DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);
