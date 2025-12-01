---- JOINS----

---PEDIDO + CLIENTE---

SELECT pedido.id_pedido, pedido.data_pedido, cliente.nome_cliente
FROM pedido
INNER JOIN cliente
ON pedido.id_cliente = cliente.id_cliente;


---PRODUTO + CATEGORIA----

SELECT produto.nome_produto, categoria.nome_categoria
FROM produto
INNER JOIN categoria
ON produto.id_categoria = categoria.id_categoria; 


---PRODUTO + ESTOQUE---

SELECT produto.nome_produto, estoque.quantidade_disponivel 
FROM produto
INNER JOIN estoque
ON produto.id_produto = estoque.id_produto;


---ITEM PEDIDO + PEDIDO + PRODUTO---

SELECT pedido.id_pedido,
produto.nome_produto,
item_pedido.quantidade
FROM item_pedido
INNER JOIN pedido
ON item_pedido.id_pedido = pedido.id_pedido
INNER JOIN produto
ON item_pedido.id_produto = produto.id_produto;


---PEDIDO + CLIENTE + VENDEDOR---

SELECT pedido.id_pedido,
cliente.nome_cliente AS cliente,
vendedor.nome_vendedor AS vendedor
FROM pedido
INNER JOIN cliente
ON pedido.id_cliente = cliente.id_cliente
INNER JOIN vendedor
ON pedido.id_vendedor = vendedor.id_vendedor;


---CONSULTA COMPLETA---

SELECT pedido.id_pedido,
cliente.nome_cliente,telefone AS cliente,
vendedor.nome_vendedor AS vendedor,
produto.nome_produto,
item_pedido.quantidade,
item_pedido.preco_unitario,
entrega.tipo_entrega,
status
FROM pedido
INNER JOIN cliente
ON pedido.id_cliente = cliente.id_cliente
INNER JOIN vendedor
ON pedido.id_vendedor = vendedor.id_vendedor
INNER JOIN item_pedido
ON pedido.id_pedido = item_pedido.id_pedido
INNER JOIN produto
ON item_pedido.id_produto = produto.id_produto
INNER JOIN entrega
ON pedido.id_pedido = entrega.id_pedido;


--- CATEGORIAS COM OU SEM PRODUTO---

SELECT categoria.nome_categoria, produto.nome_produto
FROM categoria
LEFT JOIN produto
ON categoria.id_categoria = produto.id_categoria;


----CONSULTAS COM JOIN, WHERE, ORDER BY, LIMIT----


----PRODUTOS COM SUAS CATEGORIAS----

SELECT p.nome_produto, c.nome_categoria
FROM produto p
JOIN categoria c ON p.id_categoria = c.id_categoria;


----PEDIDOS COM O NOME DO CLIENTE----

SELECT pe.id_pedido, pe.data_pedido, c.nome_cliente 
FROM pedido pe 
JOIN cliente c ON pe.id_cliente = c.id_cliente;


----ITENS DE UM PEDIDO ESPECIFICO----

SELECT ip.id_item_pedido, p.nome_produto, ip.quantidade
FROM item_pedido ip
JOIN produto p ON p.id_produto = ip.id_produto
WHERE ip.id_pedido = 1;


----LISTAR PRODUTOS ORDENADOS POR PRECO----

SELECT nome_produto, preco
FROM produto
ORDER BY preco DESC; 


----MOSTRAR APENAS OS DOIS PRODUTOS MAIS BARATOS----

SELECT nome_produto, preco 
FROM produto 
ORDER BY preco ASC 
LIMIT 2;
