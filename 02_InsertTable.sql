--- INSERTS---

INSERT INTO categoria (id_categoria, nome_categoria)
VALUES
(1, 'Maquiagem'),
(2, 'Cabelos'),
(3, 'Perfumaria'),
(4, 'Skincare');


INSERT INTO cliente (id_cliente, nome_cliente, telefone)
VALUES
(1, 'Ana Souza', '11988887777'),
(2, 'Bruna Lima', '11999996666');


INSERT INTO pedido (id_pedido, data_pedido, status, id_cliente, id_vendedor)
VALUES
(1, '2025-02-01', 'Concluído', 1, 1),
(2, '2025-02-02', 'Concluído', 2, 2);


INSERT INTO item_pedido (id_item_pedido, quantidade, preco_unitario, id_pedido, id_produto)
VALUES
(1, 2, 29.90, 1, 1),
(2, 1, 120.00, 1, 3),
(3, 1, 35.00, 2, 2);


INSERT INTO produto (id_produto, nome_produto, descricao, preco, id_categoria)
VALUES
(1, 'Batom Matte', 'Batom de longa duração', 29.90, 1), 
(2, 'Shampoo Hidratante', 'Shampoo para cabelos secos', 35.00, 2),
(3, 'Perfume Floral', 'Fragrância floral suave', 120.00, 3);


INSERT INTO entrega (id_entrega, tipo_entrega, data_entrega, id_pedido)
VALUES
(1, 'Motoboy', '2025-02-03', 1),
(2, 'Retirada na loja', '2025-02-02', 2);


INSERT INTO estoque (id_estoque, quantidade_disponivel, estoque_minimo, estoque_maximo, id_produto) 
VALUES 
(1, 50, 5, 200, 1), 
(2, 40, 5, 200, 2),
(3, 20, 3, 100,3);
