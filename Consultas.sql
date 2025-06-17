-- Consultar atos registrados
select * from categoria;
select * from fornecedor;
select * from movimentacao;
select * from movimentacao_produto;
select * from produto;
select * from transacao;
select * from transacao_produto;

-- Inner join para saber os produtos vendidos em uma transação exata

select tp.id_produto, tp.id_transacao, tp.quantidade_de_produtos from transacao_produto tp
	inner join transacao t on tp.id_transacao = t.id_transacao
		where t.id_transacao = 4;

-- O inner Join seleciona os campos id_produto, id_transacao e quantidade_de_produtos da tabela transacao_produto (apelidada como tp).
-- Faz um INNER JOIN com a tabela transacao (apelidada como t) para garantir que só traga registros de transações válidas.
-- O filtro where t.id_transacao = 4 garante que só serão exibidos os produtos da transação de id 4.
-- Em resumo: Mostra quais produtos e quantas unidades de cada produto foram vendidos/comprados na transação de id 4.