-- ======================================================
-- 04_update_delete.sql
-- Comandos UPDATE e DELETE
-- ======================================================

USE loja_sapatos_star;

-- =====================
-- UPDATES
-- =====================

-- 1) Atualizar estoque de um produto
UPDATE Produto
SET estoque = estoque + 20
WHERE idProduto = 1;

-- 2) Corrigir telefone de um cliente
UPDATE Cliente
SET telefone = '11999998888'
WHERE idCliente = 3;

-- 3) Atualizar valor total de um pedido
UPDATE Pedido
SET valorTotal = 399.90
WHERE idPedido = 2;

-- =====================
-- DELETES
-- =====================

-- 1) Remover item de pedido específico
DELETE FROM ItemPedido
WHERE idItemPedido = 3;

-- 2) Excluir produto descontinuado
DELETE FROM Produto
WHERE idProduto = 3;

-- 3) Excluir fornecedor sem produtos
DELETE FROM Fornecedor
WHERE idFornecedor = 1;
