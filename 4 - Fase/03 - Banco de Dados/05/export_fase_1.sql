--
-- File generated with SQLiteStudio v3.2.1 on seg jun 22 11:31:35 2020
--
-- Text encoding used: UTF-8
--

-- Table: categoria
CREATE TABLE categoria (
    cat_codigo INTEGER      NOT NULL,
    descricao  VARCHAR (50) NOT NULL,
    PRIMARY KEY (
        cat_codigo
    )
);

INSERT INTO categoria (cat_codigo, descricao) VALUES (1, 'Technology');
INSERT INTO categoria (cat_codigo, descricao) VALUES (2, 'Furniture');
INSERT INTO categoria (cat_codigo, descricao) VALUES (3, 'Office Supplies');

-- Table: mercado
CREATE TABLE mercado (
    mer_codigo INTEGER      NOT NULL,
    descricao  VARCHAR (50) NOT NULL,
    PRIMARY KEY (
        mer_codigo
    )
);

INSERT INTO mercado (mer_codigo, descricao) VALUES (1, 'US');
INSERT INTO mercado (mer_codigo, descricao) VALUES (2, 'APAC');
INSERT INTO mercado (mer_codigo, descricao) VALUES (3, 'EU');
INSERT INTO mercado (mer_codigo, descricao) VALUES (4, 'Africa');
INSERT INTO mercado (mer_codigo, descricao) VALUES (5, 'EMEA');
INSERT INTO mercado (mer_codigo, descricao) VALUES (6, 'LATAM');
INSERT INTO mercado (mer_codigo, descricao) VALUES (7, 'Canada');

-- Table: modal
CREATE TABLE modal (
    mod_codigo INTEGER      NOT NULL,
    descricao  VARCHAR (50) NOT NULL,
    PRIMARY KEY (
        mod_codigo
    )
);

INSERT INTO modal (mod_codigo, descricao) VALUES (1, 'Same Day');
INSERT INTO modal (mod_codigo, descricao) VALUES (2, 'Second Class');
INSERT INTO modal (mod_codigo, descricao) VALUES (3, 'First Class');
INSERT INTO modal (mod_codigo, descricao) VALUES (4, 'Standard Class');

-- Table: prioridade
CREATE TABLE prioridade (
    pri_codigo INTEGER      NOT NULL,
    descricao  VARCHAR (50) NOT NULL,
    PRIMARY KEY (
        pri_codigo
    )
);

INSERT INTO prioridade (pri_codigo, descricao) VALUES (1, 'Critical');
INSERT INTO prioridade (pri_codigo, descricao) VALUES (2, 'Medium');
INSERT INTO prioridade (pri_codigo, descricao) VALUES (3, 'High');
INSERT INTO prioridade (pri_codigo, descricao) VALUES (4, 'Low');

-- Table: regiao
CREATE TABLE regiao (
    reg_codigo INTEGER      NOT NULL,
    descricao  VARCHAR (50) NOT NULL,
    PRIMARY KEY (
        reg_codigo
    )
);

INSERT INTO regiao (reg_codigo, descricao) VALUES (1, 'East');
INSERT INTO regiao (reg_codigo, descricao) VALUES (2, 'Oceania');
INSERT INTO regiao (reg_codigo, descricao) VALUES (3, 'Central');
INSERT INTO regiao (reg_codigo, descricao) VALUES (4, 'Africa');
INSERT INTO regiao (reg_codigo, descricao) VALUES (5, 'West');
INSERT INTO regiao (reg_codigo, descricao) VALUES (6, 'South');
INSERT INTO regiao (reg_codigo, descricao) VALUES (7, 'Central Asia');
INSERT INTO regiao (reg_codigo, descricao) VALUES (8, 'EMEA');
INSERT INTO regiao (reg_codigo, descricao) VALUES (9, 'North Asia');
INSERT INTO regiao (reg_codigo, descricao) VALUES (10, 'North');
INSERT INTO regiao (reg_codigo, descricao) VALUES (11, 'Caribbean');
INSERT INTO regiao (reg_codigo, descricao) VALUES (12, 'Southeast Asia');
INSERT INTO regiao (reg_codigo, descricao) VALUES (13, 'Canada');

-- Table: segmento
CREATE TABLE segmento (
    seg_codigo INTEGER      NOT NULL,
    descricao  VARCHAR (50) NOT NULL,
    PRIMARY KEY (
        seg_codigo
    )
);

INSERT INTO segmento (seg_codigo, descricao) VALUES (1, 'Consumer');
INSERT INTO segmento (seg_codigo, descricao) VALUES (2, 'Corporate');
INSERT INTO segmento (seg_codigo, descricao) VALUES (3, 'Home Office');


