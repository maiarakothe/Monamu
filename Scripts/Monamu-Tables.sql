CREATE database monamu;

CREATE TABLE Cliente (
  codcli    SERIAL NOT NULL, 
  nomcli    varchar(80) NOT NULL, 
  cpfcli    varchar(11) NOT NULL UNIQUE, 
  telcli    varchar(20), 
  emacli    varchar(80) UNIQUE, 
  ruacli    varchar(100), 
  cidcli    varchar(50) NOT NULL, 
  baicli    varchar(20), 
  datcadcli timestamp NOT NULL, 
  CONSTRAINT pkey_cliente 
    PRIMARY KEY (codcli));
COMMENT ON TABLE Cliente IS 'Cadastros de Clientes';
COMMENT ON COLUMN Cliente.codcli IS 'Código do Cliente';
COMMENT ON COLUMN Cliente.nomcli IS 'Nome do cliente';
COMMENT ON COLUMN Cliente.cpfcli IS 'CPF do Cliente';
COMMENT ON COLUMN Cliente.telcli IS 'Telefone do cliente';
COMMENT ON COLUMN Cliente.emacli IS 'Email do cliente';
COMMENT ON COLUMN Cliente.ruacli IS 'Rua do cliente';
COMMENT ON COLUMN Cliente.cidcli IS 'Cidade do Cliente';
COMMENT ON COLUMN Cliente.baicli IS 'Bairro do Cliente';
COMMENT ON COLUMN Cliente.datcadcli IS 'Data do cadastro do Cliente';

CREATE TABLE Condicional (
  codcnd       SERIAL NOT NULL, 
  nomitncon    varchar(40) NOT NULL, 
  datretitncon timestamp NOT NULL, 
  datdevitncon timestamp NOT NULL, 
  obsitncon    varchar(150), 
  codcli       int4 NOT NULL, 
  CONSTRAINT pkey_condicional 
    PRIMARY KEY (codcnd));
COMMENT ON TABLE Condicional IS 'Cadastros de itens levados no Condicional';
COMMENT ON COLUMN Condicional.codcnd IS 'Código do Condicional';
COMMENT ON COLUMN Condicional.nomitncon IS 'Nome dos itens levados no Condicional';
COMMENT ON COLUMN Condicional.datretitncon IS 'Data da retirada do item no condicional';
COMMENT ON COLUMN Condicional.datdevitncon IS 'Data da devolução do item no condicional';
COMMENT ON COLUMN Condicional.obsitncon IS 'Observações do condicional';

CREATE TABLE Desconto (
  coddsc SERIAL NOT NULL, 
  nomdsc varchar(40) NOT NULL, 
  valdsc numeric(1, 2) NOT NULL, 
  caddsc timestamp NOT NULL, 
  vlddsc date NOT NULL, 
  codven int4 NOT NULL, 
  CONSTRAINT pkey_desconto 
    PRIMARY KEY (coddsc));
COMMENT ON TABLE Desconto IS 'Cadastros de Descontos';
COMMENT ON COLUMN Desconto.coddsc IS 'Código do Desconto';
COMMENT ON COLUMN Desconto.nomdsc IS 'Nome do Desconto (Ex. Cupom de Páscoa)';
COMMENT ON COLUMN Desconto.valdsc IS 'Valor do Desconto em porcentagem';
COMMENT ON COLUMN Desconto.caddsc IS 'Data de inicio da validade do Desconto';
COMMENT ON COLUMN Desconto.vlddsc IS 'Validade do Desconto';
CREATE TABLE Fornecedor (
  codfor    SERIAL NOT NULL, 
  cnpfor    varchar(14) NOT NULL UNIQUE, 
  nomempfor varchar(80) NOT NULL, 
  emafor    varchar(80) NOT NULL UNIQUE, 
  telfor    varchar(20) NOT NULL, 
  ruafor    varchar(100) NOT NULL, 
  baifor    varchar(20) NOT NULL, 
  cidfor    varchar(50) NOT NULL, 
  CONSTRAINT pkey_fornecedor 
    PRIMARY KEY (codfor));
COMMENT ON TABLE Fornecedor IS 'Cadastro de Fornecedores';
COMMENT ON COLUMN Fornecedor.codfor IS 'Código do Fornecedor';
COMMENT ON COLUMN Fornecedor.cnpfor IS 'CNPJ do Fornecedor';
COMMENT ON COLUMN Fornecedor.nomempfor IS 'Nome da empresa do Fornecedor';
COMMENT ON COLUMN Fornecedor.emafor IS 'Email do Fornecedor';
COMMENT ON COLUMN Fornecedor.telfor IS 'Telefone do Fornecedor';
COMMENT ON COLUMN Fornecedor.ruafor IS 'Rua da empresa/fornecedor';
COMMENT ON COLUMN Fornecedor.baifor IS 'Bairro onde a empresa se localiza';
COMMENT ON COLUMN Fornecedor.cidfor IS 'Cidade do Fornecedor';

CREATE TABLE Funcionario (
  codfun    SERIAL NOT NULL, 
  nomfun    varchar(80) NOT NULL, 
  cpffun    varchar(11) NOT NULL UNIQUE, 
  carfun    varchar(40) NOT NULL, 
  datadmfun timestamp NOT NULL, 
  telfun    varchar(20) NOT NULL, 
  emafun    varchar(80) UNIQUE, 
  ruafun    varchar(100) NOT NULL, 
  cidfun    varchar(40) NOT NULL, 
  baifun    varchar(40) NOT NULL, 
  logfun    varchar(40) UNIQUE, 
  senfun    varchar(255) NOT NULL, 
  codloj    int4 NOT NULL, 
  CONSTRAINT pkey_funcionario 
    PRIMARY KEY (codfun));
COMMENT ON TABLE Funcionario IS 'Cadastros de Funcionarios';
COMMENT ON COLUMN Funcionario.codfun IS 'Código do Funcionario';
COMMENT ON COLUMN Funcionario.nomfun IS 'Nome do Funcionario';
COMMENT ON COLUMN Funcionario.cpffun IS 'CPF do Funcionario';
COMMENT ON COLUMN Funcionario.carfun IS 'Cargo do Funcionario';
COMMENT ON COLUMN Funcionario.datadmfun IS 'Data de admissão do Funcionairo, ela será feita juntamente com o cadastro do mesmo';
COMMENT ON COLUMN Funcionario.telfun IS 'Telefone do Funcionario';
COMMENT ON COLUMN Funcionario.emafun IS 'Email do Funcionario';
COMMENT ON COLUMN Funcionario.ruafun IS 'Rua do Funcionario';
COMMENT ON COLUMN Funcionario.cidfun IS 'Cidade onde o Funcionario reside';
COMMENT ON COLUMN Funcionario.baifun IS 'Bairro do Funcionario';
COMMENT ON COLUMN Funcionario.logfun IS 'Login do funcionário';
COMMENT ON COLUMN Funcionario.senfun IS 'Senha do funcionário';

CREATE TABLE item_condicional (
  coditecon SERIAL NOT NULL, 
  qtditecon int4 NOT NULL, 
  codcnd    int4 NOT NULL, 
  codpro    int4 NOT NULL, 
  CONSTRAINT pkey_item_condicional 
    PRIMARY KEY (coditecon));
COMMENT ON COLUMN item_condicional.coditecon IS 'Código do item no condicional';
COMMENT ON COLUMN item_condicional.qtditecon IS 'Quantidade de item no condicional';

CREATE TABLE item_venda (
  coditeven    SERIAL NOT NULL, 
  qtditeven    int4 NOT NULL, 
  vlruniteven  numeric(6, 2) NOT NULL, 
  vlrtotiteven numeric(6, 2) NOT NULL, 
  codven       int4 NOT NULL, 
  codpro       int4 NOT NULL, 
  CONSTRAINT pkey_item_venda 
    PRIMARY KEY (coditeven));
COMMENT ON TABLE item_venda IS 'Item com a venda';
COMMENT ON COLUMN item_venda.coditeven IS 'Código do item venda';
COMMENT ON COLUMN item_venda.qtditeven IS 'Quantidade de item por venda';
COMMENT ON COLUMN item_venda.vlruniteven IS 'Preço unitário na venda';
COMMENT ON COLUMN item_venda.vlrtotiteven IS 'Valor total dos itens por venda';

CREATE TABLE Loja (
  codloj SERIAL NOT NULL, 
  nomloj varchar(80) NOT NULL, 
  rualoj varchar(100) NOT NULL, 
  bailoj varchar(40) NOT NULL, 
  cidloj varchar(40) NOT NULL, 
  telloj varchar(20) NOT NULL, 
  cnploj varchar(14) NOT NULL UNIQUE, 
  CONSTRAINT pkey_loja 
    PRIMARY KEY (codloj));
COMMENT ON TABLE Loja IS 'Cadastro de lojas';
COMMENT ON COLUMN Loja.codloj IS 'Código da loja';
COMMENT ON COLUMN Loja.nomloj IS 'Nome da loja';
COMMENT ON COLUMN Loja.rualoj IS 'Rua do endereço da loja';
COMMENT ON COLUMN Loja.bailoj IS 'Bairro do endereço da loja';
COMMENT ON COLUMN Loja.cidloj IS 'Cidade onde a loja está localizada';
COMMENT ON COLUMN Loja.telloj IS 'Telefone da loja';
COMMENT ON COLUMN Loja.cnploj IS 'CNPJ da loja';

CREATE TABLE Produto (
  codpro    SERIAL NOT NULL, 
  nompro    varchar(100) NOT NULL UNIQUE, 
  tampro    varchar(10) NOT NULL, 
  corpro    varchar(40) NOT NULL, 
  tipro     varchar(40) NOT NULL, 
  custpro   numeric(4, 2) NOT NULL, 
  vendpro   numeric(4, 2) NOT NULL, 
  qtdestpro int4 NOT NULL, 
  datcadpro timestamp NOT NULL, 
  despro    text, 
  atipro    bool DEFAULT 'TRUE' NOT NULL CHECK(atipro in (TRUE, FALSE)), 
  codfor    int4 NOT NULL, 
  codloj    int4 NOT NULL, 
  CONSTRAINT pkey_produto 
    PRIMARY KEY (codpro));
COMMENT ON TABLE Produto IS 'Cadastro dos produtos';
COMMENT ON COLUMN Produto.nompro IS 'Nome do produto';
COMMENT ON COLUMN Produto.tampro IS 'Tamanho do produto. P, M, G ou medidas';
COMMENT ON COLUMN Produto.corpro IS 'Cor do produto';
COMMENT ON COLUMN Produto.tipro IS 'Tipo do produto.';
COMMENT ON COLUMN Produto.custpro IS 'Preço de custo do produto';
COMMENT ON COLUMN Produto.vendpro IS 'Preço de venda do produto';
COMMENT ON COLUMN Produto.qtdestpro IS 'Quantidade em estoque do produto';
COMMENT ON COLUMN Produto.datcadpro IS 'Data do cadastro do produto';
COMMENT ON COLUMN Produto.despro IS 'Descrição do produto';
COMMENT ON COLUMN Produto.atipro IS 'TRUE: produto ativo e FALSE: produto inativo';

CREATE TABLE Venda (
  codven    SERIAL NOT NULL, 
  datven    timestamp NOT NULL, 
  totven    numeric(6, 2) NOT NULL, 
  fompagven varchar(20) NOT NULL, 
  cupdscven numeric(2, 2), 
  codfun    int4 NOT NULL, 
  codcli    int4 NOT NULL, 
  CONSTRAINT pkey_venda 
    PRIMARY KEY (codven));
COMMENT ON TABLE Venda IS 'Cadastro de Vendas';
COMMENT ON COLUMN Venda.codven IS 'Código da Venda';
COMMENT ON COLUMN Venda.datven IS 'Data da Venda';
COMMENT ON COLUMN Venda.totven IS 'Valor total da Venda';
COMMENT ON COLUMN Venda.fompagven IS 'Forma de pagamento da Venda.
(Dinheiro, Crédito, Débito, Pix)';
COMMENT ON COLUMN Venda.cupdscven IS 'Cupom de desconto da Venda para clientes cadastrados';
ALTER TABLE Condicional ADD CONSTRAINT condicional_ccodcli_fkey_001 FOREIGN KEY (codcli) REFERENCES Cliente (codcli);
ALTER TABLE Desconto ADD CONSTRAINT desconto_codven_fkey_001 FOREIGN KEY (codven) REFERENCES Venda (codven);
ALTER TABLE Funcionario ADD CONSTRAINT funcionario_codloj_fkey_001 FOREIGN KEY (codloj) REFERENCES Loja (codloj);
ALTER TABLE item_condicional ADD CONSTRAINT "item_condicional_codcnd_fkey_002
" FOREIGN KEY (codcnd) REFERENCES Condicional (codcnd);
ALTER TABLE item_condicional ADD CONSTRAINT "item_condicional_codpro_fkey_001
" FOREIGN KEY (codpro) REFERENCES Produto (codpro);
ALTER TABLE item_venda ADD CONSTRAINT item_venda_codpro_fkey_001 FOREIGN KEY (codpro) REFERENCES Produto (codpro);
ALTER TABLE item_venda ADD CONSTRAINT item_venda_codven_fkey_002 FOREIGN KEY (codven) REFERENCES Venda (codven);
ALTER TABLE Produto ADD CONSTRAINT produto_codfor_fkey_001 FOREIGN KEY (codfor) REFERENCES Fornecedor (codfor);
ALTER TABLE Produto ADD CONSTRAINT produto_coloj_fkey_002 FOREIGN KEY (codloj) REFERENCES Loja (codloj);
ALTER TABLE Venda ADD CONSTRAINT venda_codcli_fkey_002 FOREIGN KEY (codcli) REFERENCES Cliente (codcli);
ALTER TABLE Venda ADD CONSTRAINT venda_codfun_fkey_001 FOREIGN KEY (codfun) REFERENCES Funcionario (codfun);
