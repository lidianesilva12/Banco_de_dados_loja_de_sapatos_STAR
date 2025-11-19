-- ======================================================
-- 03_select_queries.sql
-- Consultas SQL para o projeto Loja de Sapatos Star
-- ======================================================

USE loja_sapatos_star;

-- 1) Listar todos os clientes ordenados por nome
SELECT idCliente, nome, telefone
FROM Cliente
ORDER BY nome ASC;

-- 2) Listar produtos com estoque abaixo de 50 unidades
SELECT nome, marca, estoque
FROM Produto
WHERE estoque < 50;

-- 3) Listar os pedidos de um cliente (ex.: idCliente = 1)
SELECT P.idPedido, P.dataPedido, P.valorTotal
FROM Pedido P
WHERE P.idCliente = 1;

-- 4) Listar itens de um pedido com JOIN
SELECT 
    I.idItemPedido,
    Prod.nome AS produto,
    I.quantidade,
    I.valorUnit
FROM ItemPedido I
JOIN Produto Prod ON I.idProduto = Prod.idProduto
WHERE I.idPedido = 1;

-- 5) Listar os produtos e seus fornecedores
SELECT 
    P.nome AS Produto,
    F.nome AS Fornecedor
FROM Produto P
JOIN Fornecedor F ON P.idFornecedor = F.idFornecedor;
