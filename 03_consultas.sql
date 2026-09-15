SELECT 
    produto.nome AS produto,
    produto.preco,
    categoria.nome AS categoria
FROM produto
INNER JOIN categoria
ON produto.id_categoria = categoria.id_categoria;

SELECT
    pedido.id_pedido,
    cliente.nome AS cliente,
    pedido.data_pedido
FROM pedido
INNER JOIN cliente
ON pedido.id_cliente = cliente.id_cliente;

SELECT
    nome,
    estoque
FROM produto
WHERE estoque <= 10;

SELECT
    nome,
    preco
FROM produto
ORDER BY preco DESC;

SELECT
    pedido.id_pedido,
    cliente.nome AS cliente,
    SUM(item_pedido.quantidade * item_pedido.preco) AS total
FROM pedido
INNER JOIN cliente
ON pedido.id_cliente = cliente.id_cliente
INNER JOIN item_pedido
ON pedido.id_pedido = item_pedido.id_pedido
GROUP BY pedido.id_pedido, cliente.nome;

UPDATE produto
SET preco = 99.90
WHERE id_produto = 1;

SELECT
    cliente.nome AS cliente,
    cliente.email,
    cliente.telefone,
    pedido.id_pedido,
    pedido.data_pedido,
    produto.nome AS produto,
    categoria.nome AS categoria,
    item_pedido.quantidade,
    item_pedido.preco,
    (item_pedido.quantidade * item_pedido.preco) AS total
FROM cliente
INNER JOIN pedido
    ON cliente.id_cliente = pedido.id_cliente
INNER JOIN item_pedido
    ON pedido.id_pedido = item_pedido.id_pedido
INNER JOIN produto
    ON item_pedido.id_produto = produto.id_produto
INNER JOIN categoria
    ON produto.id_categoria = categoria.id_categoria;