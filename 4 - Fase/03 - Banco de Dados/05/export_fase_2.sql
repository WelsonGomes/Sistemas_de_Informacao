--
-- File generated with SQLiteStudio v3.2.1 on seg jun 22 11:33:39 2020
--
-- Text encoding used: UTF-8
--

-- Table: pais
CREATE TABLE pais (
    pai_codigo INTEGER      NOT NULL,
    nome       VARCHAR (50) NOT NULL,
    mer_codigo INTEGER,
    reg_codigo INTEGER,
    PRIMARY KEY (
        pai_codigo
    ),
    FOREIGN KEY (
        mer_codigo
    )
    REFERENCES mercado (mer_codigo),
    FOREIGN KEY (
        reg_codigo
    )
    REFERENCES regiao (reg_codigo) 
);

INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (1, 'United States', 1, 1);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (2, 'Australia', 2, 2);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (3, 'Germany', 3, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (4, 'Senegal', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (5, 'New Zealand', 2, 2);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (6, 'Afghanistan', 2, 7);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (7, 'Saudi Arabia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (8, 'Brazil', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (9, 'China', 2, 9);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (10, 'France', 3, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (11, 'Italy', 3, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (12, 'Tanzania', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (13, 'Poland', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (14, 'United Kingdom', 3, 10);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (15, 'Mexico', 6, 10);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (16, 'El Salvador', 6, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (17, 'Taiwan', 2, 9);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (18, 'India', 2, 7);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (19, 'Dominican Republic', 6, 11);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (20, 'Democratic Republic of the Congo', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (21, 'Indonesia', 2, 12);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (22, 'Uruguay', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (23, 'Iran', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (24, 'Mozambique', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (25, 'Bangladesh', 2, 7);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (26, 'Spain', 3, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (27, 'Ukraine', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (28, 'Nicaragua', 6, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (29, 'Morocco', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (30, 'Canada', 7, 13);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (31, 'Philippines', 2, 12);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (32, 'Austria', 3, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (33, 'Colombia', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (34, 'Netherlands', 3, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (35, 'Malaysia', 2, 12);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (36, 'Ecuador', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (37, 'Thailand', 2, 12);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (38, 'Somalia', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (39, 'Guatemala', 6, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (40, 'Belarus', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (41, 'Cambodia', 2, 12);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (42, 'South Africa', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (43, 'Japan', 2, 9);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (44, 'Russia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (45, 'Egypt', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (46, 'Azerbaijan', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (47, 'Lithuania', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (48, 'Argentina', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (49, 'Lesotho', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (50, 'Vietnam', 2, 12);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (51, 'Cuba', 6, 11);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (52, 'Romania', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (53, 'Turkey', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (54, 'Cameroon', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (55, 'Hungary', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (56, 'Singapore', 2, 12);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (57, 'Angola', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (58, 'Belgium', 3, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (59, 'Pakistan', 2, 7);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (60, 'Finland', 3, 10);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (61, 'Ghana', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (62, 'Zambia', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (63, 'Iraq', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (64, 'Liberia', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (65, 'Georgia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (66, 'Switzerland', 3, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (67, 'Albania', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (68, 'Chad', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (69, 'Montenegro', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (70, 'Namibia', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (71, 'Portugal', 3, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (72, 'Madagascar', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (73, 'Sweden', 3, 10);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (74, 'Myanmar (Burma)', 2, 12);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (75, 'Jamaica', 6, 11);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (76, 'Qatar', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (77, 'Republic of the Congo', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (78, 'Norway', 3, 10);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (79, 'Algeria', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (80, 'South Korea', 2, 9);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (81, 'Nigeria', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (82, 'Estonia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (83, 'Cote d''Ivoire', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (84, 'Honduras', 6, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (85, 'Paraguay', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (86, 'Czech Republic', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (87, 'Central African Republic', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (88, 'Benin', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (89, 'Bolivia', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (90, 'Chile', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (91, 'Martinique', 6, 11);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (92, 'Syria', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (93, 'Lebanon', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (94, 'Kenya', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (95, 'Mali', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (96, 'Libya', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (97, 'Venezuela', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (98, 'Trinidad and Tobago', 6, 11);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (99, 'Ireland', 3, 10);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (100, 'Bulgaria', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (101, 'Panama', 6, 3);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (102, 'Israel', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (103, 'Haiti', 6, 11);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (104, 'Barbados', 6, 11);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (105, 'Slovenia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (106, 'Togo', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (107, 'Mauritania', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (108, 'Guinea', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (109, 'Rwanda', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (110, 'Denmark', 3, 10);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (111, 'Niger', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (112, 'Papua New Guinea', 2, 2);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (113, 'Mongolia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (114, 'Sudan', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (115, 'Peru', 6, 6);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (116, 'Sierra Leone', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (117, 'Bosnia and Herzegovina', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (118, 'Guinea-Bissau', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (119, 'Djibouti', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (120, 'Tunisia', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (121, 'Croatia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (122, 'Hong Kong', 2, 9);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (123, 'Nepal', 2, 7);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (124, 'Guadeloupe', 6, 11);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (125, 'Kyrgyzstan', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (126, 'Zimbabwe', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (127, 'Uzbekistan', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (128, 'South Sudan', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (129, 'Gabon', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (130, 'Bahrain', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (131, 'Yemen', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (132, 'Jordan', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (133, 'United Arab Emirates', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (134, 'Moldova', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (135, 'Swaziland', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (136, 'Turkmenistan', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (137, 'Kazakhstan', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (138, 'Ethiopia', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (139, 'Uganda', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (140, 'Slovakia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (141, 'Sri Lanka', 2, 7);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (142, 'Tajikistan', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (143, 'Burundi', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (144, 'Macedonia', 5, 8);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (145, 'Eritrea', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (146, 'Equatorial Guinea', 4, 4);
INSERT INTO pais (pai_codigo, nome, mer_codigo, reg_codigo) VALUES (147, 'Armenia', 5, 8);

-- Table: subcategoria
CREATE TABLE subcategoria (
    sub_codigo INTEGER      NOT NULL,
    descricao  VARCHAR (50) NOT NULL,
    cat_codigo INTEGER,
    PRIMARY KEY (
        sub_codigo
    ),
    FOREIGN KEY (
        cat_codigo
    )
    REFERENCES categoria (cat_codigo) 
);

INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (1, 'Accessories', 1);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (2, 'Chairs', 2);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (3, 'Phones', 1);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (4, 'Copiers', 1);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (5, 'Tables', 2);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (6, 'Binders', 3);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (7, 'Supplies', 3);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (8, 'Appliances', 3);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (9, 'Machines', 1);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (10, 'Bookcases', 2);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (11, 'Storage', 3);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (12, 'Furnishings', 2);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (13, 'Art', 3);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (14, 'Paper', 3);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (15, 'Envelopes', 3);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (16, 'Fasteners', 3);
INSERT INTO subcategoria (sub_codigo, descricao, cat_codigo) VALUES (17, 'Labels', 3);


