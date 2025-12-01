----DELETE----


----REMOVER CATEGORIA QUE NAO FOI VENDIDA---

DELETE FROM categoria
WHERE nome_categoria = 'skincare';


----REMOVER ITEM DO PEDIDO----

DELETE FROM item_pedido
WHERE id_item_pedido = 3;


----REMOVER PRODUTO----

DELETE FROM produto
WHERE id_produto = 'Shampoo Hidratante';
