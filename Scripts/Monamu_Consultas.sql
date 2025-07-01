--Liste o nome do produto, categoria, tamanho, preço de venda 
-- e quantidade em estoque de todos os produtos disponíveis para venda. 
-- Ordene os resultados por nome do produto.
update venda v set datven = '2025-07-24 21:51:52.970'
where codven = 10;

select 
nompro "Nome do Produto", 
tipro "Tipo", 
tampro "Tamanho", 
vendpro "Preço de Venda", 
qtdestpro "Quantidade em Estoque"
from 
produto p 
order by 
nompro;


--Liste o nome do cliente, a data da compra, os produtos comprados e o valor total de cada compra. 
--Exiba apenas as compras do cliente selecionado. 
--Ordene pela data da compra, da mais recente para a mais antiga.
select 
nomcli "Nome do Cliente", 
datven "Data da Venda", 
nompro "Nome do Produto", 
vlrtotiteven "Valor total da Venda"
from 
cliente c
inner join venda v on c.codcli  = v.codcli
inner join item_venda iv on v.codven  = iv.codven
inner join produto p on iv.codpro = p.codpro
where 
c.codcli = '1'
order by 
datven desc;


--Liste o nome do funcionário, a data da venda, os produtos vendidos 
-- e o valor total de cada venda realizada em um período definido. 
--Ordene por nome do funcionário e, dentro do funcionário, por data da venda.
select 
nomfun "Nome do Funcionário", 
datven "Data da Venda", 
nompro "Nome do Produto", 
vlrtotiteven "Valor Total da Venda"
from 
funcionario f 
inner join venda v on f.codfun = v.codfun
inner join item_venda iv on v.codven = iv.codven
inner join produto p on iv.codpro = p.codpro
where v.datven between '01/01/2025' and '02/07/2025'
order by 
f.nomfun, 
v.datven desc;


--Mostre, para cada categoria de produto, 
-- a quantidade total vendida
-- e o valor total faturado em um período definido. 
--Liste apenas as categorias com vendas registradas
-- e ordene pelo maior valor faturado.
insert into venda values(14, '25/04/2025 21:51:52.970', 5 , 'Pix', null ,  7, 7);
insert into item_venda values(10, 1, 5 , 5 , 14, 21);

select 
p.tipro "Tipo",
sum(qtditeven) "Quantidade vendida",
sum (vlrtotiteven ) "Faturamento Total"
from produto p 
inner join item_venda iv  on p.codpro = iv.codpro
inner join venda v on iv.codven = v.codven
where v.datven between '01/01/2024' and '31/12/2025'
group by tipro
order by 3 desc;


