-- ======================================================
-- 02_insert_data.sql
-- Inserção de dados no banco Loja de Sapatos Star
-- ======================================================

USE loja_sapatos_star;

START TRANSACTION;

-- ==========================
-- Clientes
-- ==========================
INSERT INTO Cliente (nome, telefone, email, cpf)
VALUES
('Carlos Mendes', '1199887766', 'carlos@gmail.com', '12345678901'),
('Julia Santos', '1199554433', 'julia@gmail.com', '98765432100'),
('Marcos Oliveira', '11997776655', 'marcos@hotmail.com', '11223344556');

-- ==========================
-- Fornecedores
-- ==========================
INSERT INTO Fornecedor (nome, cnpj, telefone, email)
VALUES
('Calçados Brasil LTDA', '12345678000199', '1133224455', 'contato@calcadosbrasil.com'),
('Pé Quente Distribuidora', '99887766000155', '1144667788', 'vendas@pequente.com');

-- ==========================
-- Produtos
-- ==========================
INSERT INTO Produto (nome, categoria, tamanho, marca, estoque, preco, idFornecedor)
VALUES
('Tênis Running Pro', 'Esportivo', '41', 'Nike', 50, 399.90, 1),
('Sandália Confort', 'Feminino', '37', 'Beira Rio', 80, 129.90, 2),
('Bota Infantil Aventura', 'Infantil', '30', 'Pampili', 40, 159.90, 2);

-- ==========================
-- Pedidos
-- ==========================
INSERT INTO Pedido (dataPedido, valorTotal, formaPagamento, idCliente)
VALUES
('2025-11-10', 529.80, 'Cartão Crédito', 1),
('2025-11-11', 129.90, 'Pix', 2);

-- ==========================
-- Itens do Pedido
-- ==========================
INSERT INTO ItemPedido (idPedido, idProduto, quantidade, valorUnit)
VALUES
(1, 1, 1, 399.90),
(1, 2, 1, 129.90),
(2, 2, 1, 129.90);

COMMIT;
