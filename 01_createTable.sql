BEGIN TRANSACTION


----TABELA CATEGORIA-----

CREATE TABLE categoria (id_categoria INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
nome_categoria TEXT NOT NULL
);

----TABELA CLIENTE-----

CREATE TABLE cliente (id_cliente INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
nome_cliente TEXT NOT NULL,
telefone TEXT
);


----TABELA VENDEDOR-----

CREATE TABLE vendedor (id_vendedor INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
nome_vendedor TEXT NOT NULL,
email TEXT
);


----TABELA PRODUTO-----

CREATE TABLE produto (id_produto INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
nome_produto TEXT NOT NULL,
descricao TEXT,
preco DECIMAL(10,2) NOT NULL,
id_categoria INTEGER NOT NULL,
FOREIGN KEY (id_categoria) references categoria(id_categoria)
);


----TABELA ESTOQUE-----

CREATE TABLE estoque (id_estoque INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
quantidade_disponivel INTEGER NOT NULL,
estoque_minimo INTEGER,
estoque_mAximo INTEGER,
id_produto INTEGER NOT NULL,
FOREIGN KEY (id_produto) references produto(id_produto)
);


----TABELA PEDIDO-----

CREATE TABLE pedido (id_pedido INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
data_pedido DATE NOT NULL,
status TEXT NOT NULL,
id_cliente INTEGER NOT NULL,
id_vendedor INTEGER NOT NULL,
FOREIGN KEY (id_cliente) references cliente(id_cliente)
FOREIGN KEY (id_vendedor) references vendedor(id_vendedor)
);


----TABELA ITEM PEDIDO-----

CREATE TABLE item_pedido (id_item_pedido INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
quantidade INTEGER NOT NULL,
preco_unitario DECIMAL(10,2) NOT NULL,
id_pedido INTEGER NOT NULL,
id_produto INTEGER NOT NULL,
FOREIGN KEY (id_pedido) references pedido(id_pedido)
FOREIGN KEY (id_produto) references produto(id_produto)
);

----TABELA ENTREGA-----

CREATE TABLE entrega (id_entrega INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
tipo_entrega TEXT NOT NULL,
data_entrega DATE,
id_pedido INTEGER NOT NULL,
FOREIGN KEY (id_pedido) references pedido(id_pedido)
);

