-- Clientes	
SET IDENTITY_INSERT dbo.clientes ON;
INSERT INTO clientes(CODIGO, NOME, CIDADE, UF)
VALUES (1, 'Mateus', 'Charqueada', 'SP'),
    (2, 'Augusto', 'Charqueada', 'SP'),
    (3, 'Carvalho', 'Charqueada', 'SP'),
    (4, 'Jennifer', 'Charqueada', 'SP'),
    (5, 'Priscila', 'Charqueada', 'SP'),
    (6, 'Tânia', 'Campinas', 'SP'),
    (7, 'Oliver Mário da Cruz', 'Campinas', 'SP'),
    (8, 'Paulo César Assis', 'Mogi das Cruzes', 'SP'),
    (
        9,
        'Aparecida Marina Liz da Conceição',
        'Guarulhos',
        'SP'
    ),
    (10, 'Sophia Marcela Barbosa', 'Guarulhos', 'SP'),
    (
        11,
        'Lavínia Vanessa Daiane Pinto',
        'São Bernardo do Campo',
        'SP'
    ),
    (12, 'Thaís Santana Sobrinho', 'Limeira', 'SP'),
    (13, 'Elias Beltrão Domingues', 'Limeira', 'SP'),
    (
        14,
        'Nayara Paola Caldeira Filho',
        'Piracicaba',
        'SP'
    ),
    (15, 'Andréa Valente Rios', 'Piracicaba', 'SP'),
    (
        16,
        'Eloá de Aguiar Sobrinho',
        'Piracicaba',
        'SP'
    ),
    (
        17,
        'Marília Ariane Vieira Sobrinho',
        'Belo Horizonte',
        'MG'
    ),
    (
        18,
        'Lidiane Deverso Jimenes',
        'Belo Horizonte',
        'MG'
    ),
    (19, 'Miranda Salazar', 'Belo Horizonte', 'MG'),
    (
        20,
        'Sophia Delatorre Neto',
        'Belo Horizonte',
        'MG'
    ),
    (
        21,
        'Caroline Deverso Sobrinho',
        'Piracicaba',
        'SP'
    );
SET IDENTITY_INSERT dbo.clienteS OFF;
--Produtos
SET IDENTITY_INSERT dbo.produtos ON;
INSERT INTO produtos (CODIGO, DESCRICAO, PRECO)
VALUES (1, 'Computador', 4500),
    (2, 'Micro-ondas Midea MRA_2 prata 20L 127V', 750),
    (3, 'Fone de ouvido on-ear JBL', 250),
    (
        4,
        'Torneira de cozinha monocomando Pingoo.Casa Gourmet Munim cromado',
        420
    ),
    (
        5,
        'Kit Cuba Pia Aço Inox Gourmet Carajás Cozinha E Acessórios',
        353.33
    ),
    (6, 'Batida De Pedra Preto 900ml', 29.9),
    (
        7,
        'Kit 6 Folha Lixa Seco Automotiva Grão 320 400 600 Norton',
        26.9
    ),
    (
        8,
        'Massa Plastica Automotiva Para Reparo De Lataria Parachoque',
        22.7
    ),
    (9, 'Placa De Gesso Acartonado 120x180', 23.5),
    (10, '3d Gesso Art Revestimento Alto Relevo ', 65),
    (
        11,
        'Forma 3d F423 Abs 2 Mm Gesso Cimenticio 3d Ripado 120x30 Cm',
        150
    ),
    (
        12,
        'Forma 3d Pisante Amadeirado Abs 2 Cm 131x29 Cm',
        195
    ),
    (
        13,
        'Forma 3d Abs 2 Mm Gesso Cimenticio 3d F309 30,5x51 Cm Pedra',
        70
    ),
    (
        14,
        '8 Formas Abs 2 Mm Virgem Gesso Cimenticio 3d Tijolinho',
        65
    ),
    (
        15,
        'Serra Circular Mesa Bancada 250mm 1800w Gysb1800 Hammer',
        1166.55
    ),
    (
        16,
        'Serra De Esquadria E Bancada 8 Pol. 1200w Schulz',
        1067
    ),
    (
        17,
        'Saco De Gesso Em Pó Branco Secagem Rápida 5kg Juntalider',
        29.58
    ),
    (
        18,
        'Kit 10kg Gesso Urso Polar Não Toxico Antigo Gesso Rápido',
        83.22
    ),
    (
        19,
        'Alicate Amperimetro Digital Com Bolsa1000a Ac Thompson 881 ',
        82.13
    ),
    (
        20,
        'Escada de alumínio tesoura Mor 5101',
        135.22
    );
SET IDENTITY_INSERT dbo.produtos OFF;
--PEdidos
SET IDENTITY_INSERT dbo.pedidos ON;
INSERT INTO pedidos (CODIGO, [DATA], VALOR_TOTAL, CLIENTE_CODIGO)
VALUES (2, '2021-01-01', 125.22, 1),
    (3, '2021-01-01', 125.22, 1),
    (4, '2023-01-20', 750, 1),
    (5, '2023-01-20', 29.9, 4);
SET IDENTITY_INSERT dbo.pedidos OFF;
--Produtos > Pedidos
SET IDENTITY_INSERT dbo.pedidos_produtos ON;
INSERT INTO pedidos_produtos (
        CODIGO,
        PEDIDOS_CODIGO,
        PRODUTOS_CODIGO,
        QTDE,
        VALOR_UNITARIO,
        VALOR_TOTAL
    )
VALUES (3, 4, 2, 1, 750, '750'),
    (4, 5, 6, 1, 29.9, '29.9');
SET IDENTITY_INSERT dbo.pedidos_produtos OFF;