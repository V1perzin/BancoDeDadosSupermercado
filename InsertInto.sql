-- Insert nas tabelas

insert into categoria (id_categoria, nome, descricao) values (1, 'Alimentos frescos', 'Frutas, carnes e outros');
insert into categoria (id_categoria, nome, descricao) values (2, 'Alimentos processados', 'Enlatados, congelados e outros');
insert into categoria (id_categoria, nome, descricao) values (3, 'Grãos e cereais', 'Arroz, Feijão e outros');

insert into fornecedor (id_fornecedor, nome, cnpj, endereço, telefone) values (1, 'Fernando', '01.234.567/0001-89', 'Rua do vendedor Fernando', '11223456789');
insert into fornecedor (id_fornecedor, nome, cnpj, endereço, telefone) values (2, 'Luiz', '02.345.678/0001-01', 'Rua do vendedor Luiz', '83345456872');
insert into fornecedor (id_fornecedor, nome, cnpj, endereço, telefone) values (3, 'Pedro', '01.546.598/0001-35', 'Rua do vendedor Pedro', '88145686789');

insert into produto(id_produto, fornecedor_id, categoria_id, nome, descricao, valor) values (1, 1, 1, 'Uva', 'Alimentos Frescos', 10);
insert into produto(id_produto, fornecedor_id, categoria_id, nome, descricao, valor) values (2, 3, 3, 'Arroz', 'Grãos e Cereais', 6);
insert into produto(id_produto, fornecedor_id, categoria_id, nome, descricao, valor) values (3, 2, 2, 'Pizza', 'Alimentos Processados', 15);
insert into produto(id_produto, fornecedor_id, categoria_id, nome, descricao, valor) values (4, 3, 3, 'Feijão', 'Grãos e Cereais', 8);

insert into transacao(id_transacao, valor_total, valor_recebido, produtos, data, troco) values (1, 12, 15, '2 unidades de Arroz', '22/09/2024', 3);
insert into transacao(id_transacao, valor_total, valor_recebido, produtos, data, troco) values (2, 24, 30, '3 unidades de Feijão', '22/09/2024',6);
insert into transacao(id_transacao, valor_total, valor_recebido, produtos, data, troco) values (3, 15, 15, '1 unidade pizza', '22/09/2024', 0);
insert into transacao(id_transacao, valor_total, valor_recebido, produtos, data, troco) values (4, 90, 100, '5 unidades de Arroz, 3 unidades de Uva, 2 unidades de pizza', '25/09/2024', 10);

insert into movimentacao(id_movimentacao, produto_id, data, valor_total, quantidade_de_produtos, tipo) values (1, 3, '22/09/2024', 12, 2, 'Grãos e cereais');
insert into movimentacao(id_movimentacao, produto_id, data, valor_total, quantidade_de_produtos, tipo) values (2, 3, '22/09/2024', 24, 3, 'Grãos e cereais');
insert into movimentacao(id_movimentacao, produto_id, data, valor_total, quantidade_de_produtos, tipo) values (3, 2, '22/09/2024', 15, 1, 'Alimentos processados');
insert into movimentacao(id_movimentacao, produto_id, data, valor_total, quantidade_de_produtos, tipo) values (4, 3, '25/09/2024', 90, 10, 'Alimentos frescos, Alimentos processados e Grãos e cereais');

insert into movimentacao_produto(id_produto, id_movimentacao) values (3,1);
insert into movimentacao_produto(id_produto, id_movimentacao) values (3,2);
insert into movimentacao_produto(id_produto, id_movimentacao) values (2,3);

insert into transacao_produto(id_produto, id_transacao, quantidade_de_produtos) values (2, 1, 2);
insert into transacao_produto(id_produto, id_transacao, quantidade_de_produtos) values (4, 2, 3);
insert into transacao_produto(id_produto, id_transacao, quantidade_de_produtos) values (3, 3, 1);
insert into transacao_produto(id_produto, id_transacao, quantidade_de_produtos) values (2, 4, 5);
insert into transacao_produto(id_produto, id_transacao, quantidade_de_produtos) values (1, 4, 3);
insert into transacao_produto(id_produto, id_transacao, quantidade_de_produtos) values (3, 4, 2);