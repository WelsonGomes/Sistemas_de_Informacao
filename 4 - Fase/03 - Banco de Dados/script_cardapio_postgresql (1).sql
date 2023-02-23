

CREATE TABLE cardapio.public.cardapio (
                codigo INTEGER NOT NULL,
                descricao VARCHAR(50) NOT NULL,
                CONSTRAINT cardapio_pk PRIMARY KEY (codigo)
);

CREATE TABLE cardapio.public.cardapio_produto (
                cardapio_codigo INTEGER NOT NULL,
                produto_codigo INTEGER NOT NULL,
                CONSTRAINT cardapio_produto_pk PRIMARY KEY (cardapio_codigo, produto_codigo)
);

CREATE TABLE cardapio.public.cardapio_produto_ingrediente (
                cardapio_codigo INTEGER NOT NULL,
                produto_codigo INTEGER NOT NULL,
                ingrediente_codigo INTEGER NOT NULL,
                quantidade REAL NOT NULL,
                CONSTRAINT cardapio_produto_ingrediente_pk PRIMARY KEY (cardapio_codigo, produto_codigo, ingrediente_codigo)
);

CREATE TABLE cardapio.public.categoria (
                codigo INTEGER NOT NULL,
                descricao VARCHAR(20) NOT NULL,
                CONSTRAINT categoria_pk PRIMARY KEY (codigo)
);

CREATE TABLE cardapio.public.cliente (
                codigo INTEGER NOT NULL,
                nome VARCHAR(40) NOT NULL,
                CONSTRAINT cliente_pk PRIMARY KEY (codigo)
);

CREATE TABLE cardapio.public.ingrediente (
                codigo INTEGER NOT NULL,
                descricao VARCHAR(40) NOT NULL,
                unidade_medida VARCHAR(30) NOT NULL,
                categoria_codigo INTEGER NOT NULL,
                custo REAL NOT NULL,
                estoque REAL NOT NULL,
                CONSTRAINT ingrediente_pk PRIMARY KEY (codigo)
);

CREATE TABLE cardapio.public.pedido (
                numero INTEGER NOT NULL,
                datapedido TIMESTAMP NOT NULL,
                cliente_codigo INTEGER NOT NULL,
                valor INTEGER NOT NULL,
                forma_pagamento CHAR(10) NOT NULL,
                CONSTRAINT pedido_pk PRIMARY KEY (numero)
);

CREATE TABLE cardapio.public.pedido_cardapio_produto (
                pedido_numero INTEGER NOT NULL,
                cardapio_codigo INTEGER NOT NULL,
                produto_codigo INTEGER NOT NULL,
                quantidade INTEGER NOT NULL,
                CONSTRAINT pedido_cardapio_produto_pk PRIMARY KEY (pedido_numero, cardapio_codigo, produto_codigo)
);

CREATE TABLE cardapio.public.pedido_cardapio_produto_ingrediente (
                pedido_numero INTEGER NOT NULL,
                cardapio_codigo INTEGER NOT NULL,
                produto_codigo INTEGER NOT NULL,
                ingrediente_codigo INTEGER NOT NULL,
                quantidade REAL NOT NULL,
                CONSTRAINT pedido_cardapio_produto_ingrediente_pk PRIMARY KEY (pedido_numero, cardapio_codigo, produto_codigo, ingrediente_codigo)
);

CREATE TABLE cardapio.public.produto (
                codigo INTEGER NOT NULL,
                descricao VARCHAR(50) NOT NULL,
                desc_detalhada VARCHAR(200) NOT NULL,
                preco_venda REAL NOT NULL,
                custo_ingrediente REAL NOT NULL,
                CONSTRAINT produto_pk PRIMARY KEY (codigo)
);

CREATE TABLE cardapio.public.produto_ingrediente (
                produto_codigo INTEGER NOT NULL,
                ingrediente_codigo INTEGER NOT NULL,
                quantidade REAL NOT NULL,
                CONSTRAINT produto_ingrediente_pk PRIMARY KEY (produto_codigo, ingrediente_codigo)
);


ALTER TABLE cardapio.public.cardapio_produto ADD CONSTRAINT cardapio_cardapio_produto_fk
FOREIGN KEY (cardapio_codigo)
REFERENCES cardapio.public.cardapio (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.cardapio_produto_ingrediente ADD CONSTRAINT cardapio_produto_cardapio_produto_ingrediente_fk
FOREIGN KEY (cardapio_codigo, produto_codigo)
REFERENCES cardapio.public.cardapio_produto (cardapio_codigo, produto_codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.pedido_cardapio_produto ADD CONSTRAINT cardapio_produto_pedido_cardapio_produto_fk
FOREIGN KEY (cardapio_codigo, produto_codigo)
REFERENCES cardapio.public.cardapio_produto (cardapio_codigo, produto_codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.pedido_cardapio_produto_ingrediente ADD CONSTRAINT cardapio_produto_ingrediente_pedido_cardapio_produto_ingredi57
FOREIGN KEY (cardapio_codigo, produto_codigo, ingrediente_codigo)
REFERENCES cardapio.public.cardapio_produto_ingrediente (cardapio_codigo, produto_codigo, ingrediente_codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.ingrediente ADD CONSTRAINT categoria_ingrediente_fk
FOREIGN KEY (categoria_codigo)
REFERENCES cardapio.public.categoria (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.pedido ADD CONSTRAINT cliente_pedido_fk
FOREIGN KEY (cliente_codigo)
REFERENCES cardapio.public.cliente (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.produto_ingrediente ADD CONSTRAINT ingrediente_produto_ingrediente_fk
FOREIGN KEY (ingrediente_codigo)
REFERENCES cardapio.public.ingrediente (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.pedido_cardapio_produto ADD CONSTRAINT pedido_pedido_cardapio_produto_fk
FOREIGN KEY (pedido_numero)
REFERENCES cardapio.public.pedido (numero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.pedido_cardapio_produto_ingrediente ADD CONSTRAINT pedido_cardapio_produto_pedido_cardapio_produto_ingrediente_fk
FOREIGN KEY (pedido_numero, cardapio_codigo, produto_codigo)
REFERENCES cardapio.public.pedido_cardapio_produto (pedido_numero, cardapio_codigo, produto_codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.cardapio_produto ADD CONSTRAINT produto_cardapio_produto_fk
FOREIGN KEY (produto_codigo)
REFERENCES cardapio.public.produto (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.produto_ingrediente ADD CONSTRAINT produto_produto_ingrediente_fk
FOREIGN KEY (produto_codigo)
REFERENCES cardapio.public.produto (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE cardapio.public.cardapio_produto_ingrediente ADD CONSTRAINT produto_ingrediente_cardapio_produto_ingrediente_fk
FOREIGN KEY (produto_codigo, ingrediente_codigo)
REFERENCES cardapio.public.produto_ingrediente (produto_codigo, ingrediente_codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
