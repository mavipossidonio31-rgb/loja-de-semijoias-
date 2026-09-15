INSERT INTO cliente (nome, email, telefone, CPF) VALUES
('Maria Silva', 'maria@gmail.com', '(19)99999-1111', '111.444.777-35'),
('Ana Souza', 'ana@gmail.com', '(19)99999-2222', '222.555.888-46'),
('Julia Santos', 'julia@gmail.com', '(19)99999-3333', '333.666.999-57'),
('Fernanda Lima', 'fernanda@gmail.com', '(19)99999-4444', '444.789.012-68'),
('Beatriz Oliveira', 'beatriz@gmail.com', '(19)99999-5555', '555.890.123-79'),
('Carla Mendes', 'carla@gmail.com', '(19)99999-6666', '666.123.456-80'),
('Juliana Costa', 'juliana@gmail.com', '(19)99999-7777', '777.234.567-91'),
('Patricia Rocha', 'patricia@gmail.com', '(19)99999-8888', '888.345.678-02'),
('Camila Martins', 'camila@gmail.com', '(19)99999-9999', '999.456.789-13'),
('Larissa Dias', 'larissa@gmail.com', '(19)99999-0000', '000.567.890-24');

-- Inserindo 10 Categorias
INSERT INTO categoria (nome) VALUES
('Anéis'),
('Colares'),
('Brincos'),
('Pulseiras'),
('Conjuntos'),
('Tornozeleiras'),
('Relógios'),
('Broches'),
('Piercings'),
('Alianças');

-- Inserindo 10 Produtos
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES
('Anel Dourado', 89.90, 10, 1),
('Colar Delicado', 129.90, 8, 2),
('Brinco Argola', 59.90, 15, 3),
('Pulseira Dourada', 79.90, 12, 4),
('Conjunto Elegance', 199.90, 5, 5),
('Tornozeleira Prata', 45.00, 20, 6),
('Relógio Classic', 299.90, 7, 7),
('Broche Vintage', 35.50, 14, 8),
('Piercing Aço', 25.00, 30, 9),
('Aliança Ouro', 450.00, 4, 10);

-- Inserindo 10 Pedidos
INSERT INTO pedido (data_pedido, id_cliente) VALUES
('2026-09-01', 1),
('2026-09-02', 2),
('2026-09-03', 3),
('2026-09-04', 4),
('2026-09-05', 5),
('2026-09-06', 6),
('2026-09-07', 7),
('2026-09-08', 8),
('2026-09-09', 9),
('2026-09-10', 10);

-- Inserindo 10 Itens de Pedido
INSERT INTO item_pedido (quantidade, preco, id_pedido, id_produto) VALUES
(1, 89.90, 1, 1),
(1, 129.90, 1, 2),
(2, 59.90, 2, 3),
(1, 79.90, 3, 4),
(1, 199.90, 4, 5),
(2, 45.00, 5, 6),
(1, 299.90, 6, 7),
(3, 35.50, 7, 8),
(4, 25.00, 8, 9),
(1, 450.00, 9, 10);
