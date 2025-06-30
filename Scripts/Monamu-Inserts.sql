-- ==========================================
--  INSERÇÃO DA LOJA PRINCIPAL
-- ==========================================
INSERT INTO Loja (nomloj, rualoj, bailoj, cidloj, telloj, cnploj)
VALUES 
  ('Le Amour', 'Rua Sete de Setembro, 123', 'Centro', 'São Miguel do Oeste', '(49) 3621-0000', '12345678000199')
RETURNING codloj;

-- ==========================================
--  INSERÇÃO DE CLIENTES
-- ==========================================
INSERT INTO Cliente (nomcli, cpfcli, telcli, emacli, ruacli, cidcli, baicli, datcadcli)
VALUES 
  ('João da Silva', '12345678901', '(49) 99999-0000', 'joao@email.com', 'Av. Getúlio Vargas, 456', 'São Miguel do Oeste', 'Centro', CURRENT_TIMESTAMP),
  ('Maria Oliveira', '98765432100', '(49) 98888-1111', 'maria@email.com', 'Rua das Flores, 789', 'São Miguel do Oeste', 'Jardins', CURRENT_TIMESTAMP),
  ('Pedro Martins', '45612378900', '(49) 99123-4567', 'pedro@email.com', 'Rua São Jorge, 101', 'São Miguel do Oeste', 'Centro', CURRENT_TIMESTAMP),
  ('Ana Beatriz Souza', '32165498700', '(49) 99234-5678', 'ana.souza@email.com', 'Av. João Pessoa, 202', 'São Miguel do Oeste', 'Jardim América', CURRENT_TIMESTAMP),
  ('Luiz Fernando Costa', '74185296300', '(49) 99345-6789', 'luiz.costa@email.com', 'Rua das Palmeiras, 303', 'Tunápolis', 'Bela Vista', CURRENT_TIMESTAMP),
  ('Juliana Mendes', '85296374100', '(48) 99456-7890', 'juliana@email.com', 'Travessa das Rosas, 404', 'Itapiranga', 'Vila Nova', CURRENT_TIMESTAMP),
  ('Ricardo Lima', '15975348600', '(49) 99567-8901', 'ricardo@email.com', 'Rua Dom Pedro II, 505', 'São João do Oeste', 'Centro', CURRENT_TIMESTAMP);

-- ==========================================
--  INSERÇÃO DE FORNECEDORES
-- ==========================================
INSERT INTO Fornecedor (cnpfor, nomempfor, emafor, telfor, ruafor, baifor, cidfor)
VALUES 
  ('11122233000155', 'Fornecedor Roupas Ltda', 'contato@roupas.com', '(49) 3322-4455', 'Rua da Indústria, 1000', 'Industrial', 'São Miguel do Oeste'),
  ('22233344000166', 'Calçados Brasil EIRELI', 'vendas@calcadosbr.com', '(49) 3344-5566', 'Av. Comércio, 200', 'Comercial', 'São Miguel do Oeste'),
  ('77788899000111', 'Fornecedor Fashion', 'fashion@fornecedor.com', '(11) 3300-1100', 'Rua da Moda, 700', 'Estilo', 'São Paulo'),
  ('88899900000122', 'Fornecedor Shoes', 'shoes@fornecedor.com', '(47) 3300-2200', 'Rua do Calçado, 900', 'Calçados', 'Joinvile');

-- ==========================================
--  INSERÇÃO DE FUNCIONÁRIOS (codloj = 4)
-- ==========================================
INSERT INTO Funcionario (nomfun, cpffun, carfun, datadmfun, telfun, emafun, ruafun, cidfun, baifun, logfun, senfun, codloj)
VALUES 
  ('Carlos Souza', '33344455566', 'Vendedor', CURRENT_TIMESTAMP, '(49) 99988-7766', 'carlos@lojacentral.com', 'Rua Central, 321', 'São Miguel do Oeste', 'Centro', 'carlos', '123456', 4),
  ('Fernanda Ribeiro', '55566677788', 'Caixa', CURRENT_TIMESTAMP, '(49) 99977-6655', 'fernanda@lojacentral.com', 'Rua São João, 45', 'São Miguel do Oeste', 'Jardim das Flores', 'fernanda', 'senha456', 4),
  ('Luciano Martins', '66677788899', 'Estoquista', CURRENT_TIMESTAMP, '(49) 99888-5544', 'luciano@lojacentral.com', 'Av. Brasil, 890', 'São Miguel do Oeste', 'Industrial', 'luciano', 'estoque321', 4);

-- ==========================================
--  INSERÇÃO DE PRODUTOS
-- ==========================================
INSERT INTO Produto (nompro, tampro, corpro, tipro, custpro, vendpro, qtdestpro, datcadpro, despro, atipro, codfor, codloj)
VALUES 
  ('Camiseta Polo', 'M', 'Azul', 'Vestuário', 30.00, 59.90, 50, CURRENT_TIMESTAMP, 'Camiseta azul tamanho M', TRUE, 7, 4),
  ('Tênis Esportivo', '42', 'Preto', 'Calçados', 80.00, 89.90, 30, CURRENT_TIMESTAMP, 'Tênis leve e confortável', TRUE, 8, 4),
  ('Saia', '36', 'Preta', 'Vestuário', 150.00, 200.90, 20, CURRENT_TIMESTAMP, 'Saia de cetim', TRUE, 8, 4),
  ('Blusa de Tricô', 'P', 'Bege', 'Vestuário', 90.00, 139.90, 15, CURRENT_TIMESTAMP, 'Blusa feminina de tricô para inverno', TRUE, 8, 4),
  ('Jaqueta Jeans', 'G', 'Azul', 'Vestuário', 120.00, 199.90, 10, CURRENT_TIMESTAMP, 'Jaqueta jeans unissex com bolsos', TRUE, 7, 4),
  ('Tênis Casual', '40', 'Branco', 'Calçados', 95.00, 149.90, 25, CURRENT_TIMESTAMP, 'Tênis branco confortável para o dia a dia', TRUE, 10, 4),
  ('Bolsa Feminina', 'Único', 'Preta', 'Acessórios', 60.00, 99.90, 12, CURRENT_TIMESTAMP, 'Bolsa de mão preta em couro sintético', TRUE, 9, 4),
  ('Cinto de Couro', 'M', 'Marrom', 'Acessórios', 25.00, 49.90, 30, CURRENT_TIMESTAMP, 'Cinto masculino de couro legítimo', TRUE, 10, 4),
  ('Vestido Longo', 'M', 'Vermelho', 'Vestuário', 80.00, 159.90, 18, CURRENT_TIMESTAMP, 'Vestido longo de festa em tecido leve', TRUE, 9, 4),
  ('Bota Cano Curto', '38', 'Preta', 'Calçados', 140.00, 219.90, 8, CURRENT_TIMESTAMP, 'Bota feminina em couro cano curto', TRUE, 9, 4);

-- ==========================================
--  INSERÇÃO DE VENDAS E ITENS
-- ==========================================
-- Venda simples (cliente 7, funcionário 6)
INSERT INTO Venda (datven, totven, fompagven, cupdscven, codfun, codcli)
VALUES (CURRENT_TIMESTAMP, 89.90, 'Crédito', NULL, 6, 7);

-- Itens da venda (produto 7)
INSERT INTO item_venda (qtditeven, vlruniteven, vlrtotiteven, codven, codpro)
VALUES (1, 89.90, 89.90, 4, 7);

-- Vendas múltiplas
INSERT INTO Venda (datven, totven, fompagven, cupdscven, codfun, codcli)
VALUES 
  (CURRENT_TIMESTAMP, 89.90, 'Crédito', NULL, 6, 11),
  (CURRENT_TIMESTAMP, 149.90, 'Pix', NULL, 7, 12),
  (CURRENT_TIMESTAMP, 200.90, 'Débito', NULL, 6, 13),
  (CURRENT_TIMESTAMP, 99.90, 'Dinheiro', NULL, 7, 9);

-- Itens das vendas
INSERT INTO item_venda (qtditeven, vlruniteven, vlrtotiteven, codven, codpro)
VALUES 
  (1, 89.90, 89.90, 13, 7),
  (1, 149.90, 149.90, 14, 12),
  (1, 200.90, 200.90, 15, 18),
  (1, 99.90, 99.90, 16, 12);

-- ==========================================
--  DESCONTOS
-- ==========================================
INSERT INTO Desconto (nomdsc, valdsc, caddsc, vlddsc, codven)
VALUES 
  ('Desconto Dia das Mães', 0.09, CURRENT_TIMESTAMP, CURRENT_DATE + INTERVAL '7 days', 4),
  ('Desconto Inverno', 0.05, CURRENT_TIMESTAMP, CURRENT_DATE + INTERVAL '10 days', 13),
  ('Cupom Fidelidade', 0.05, CURRENT_TIMESTAMP, CURRENT_DATE + INTERVAL '15 days', 13),
  ('Desconto Volta às Aulas', 0.02, CURRENT_TIMESTAMP, CURRENT_DATE + INTERVAL '5 days', 16);

-- ==========================================
--  CONDICIONAIS
-- ==========================================
INSERT INTO Condicional (nomitncon, datretitncon, datdevitncon, obsitncon, codcli)
VALUES 
  ('Vestido Floral', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '3 days', 'Cliente levará para provar em casa', 10),
  ('Conjunto de Inverno', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '5 days', 'Cliente pediu para experimentar em casa', 9),
  ('Camiseta Estampada', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '2 days', 'Cliente deseja mostrar à esposa', 7),
  ('Saia de Cetim', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '4 days', 'Cliente levou para combinar com blusa', 8);

-- ==========================================
--  ITENS DAS CONDICIONAIS
-- ==========================================
INSERT INTO item_condicional (qtditecon, codcnd, codpro)
VALUES 
  (1, 6, 17),
  (1, 7, 14),
  (2, 8, 7),
  (1, 9, 11);
