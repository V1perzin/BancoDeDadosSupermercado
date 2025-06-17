-- Criação do esquema
create schema supermercado;


-- Criar a estrutura do banco de dados, ou seja, as tabelas.

Create table fornecedor(
id_fornecedor int primary key,
nome varchar(100) not null,
cnpj int,
endereço text,
telefone varchar(11)
);

create table transacao(
id_transacao int primary key,
valor_total int,
valor_recebido int,
produtos text,
data varchar(10) not null,
troco int
);

create table categoria(
id_categoria int primary key,
nome varchar(100) not null,
descricao varchar(100)
);

-- Nessa tabela fizemos a chave estrangeira
create table produto(
id_produto int primary key,
fornecedor_id int,
categoria_id int,
nome varchar(100) not null,
descricao varchar(100),
valor int,
foreign key (fornecedor_id) references fornecedor(id_fornecedor),
foreign key (categoria_id) references categoria(id_categoria)
);

create table movimentacao(
id_movimentacao int primary key,
produto_id int,
data int,
valor_total int,
quantidade_de_produtos int,
tipo varchar(100),
foreign key (produto_id) references produto(id_produto)
);

create table movimentacao_produto(
id_produto int,
id_movimentacao int,
primary key (id_produto, id_movimentacao)
);

create table transacao_produto(
id_produto int,
id_transacao int,
quantidade_de_produto int,
primary key (id_produto, id_transacao)
);