create schema if not exists oficina;
use oficina;

create table cliente(
	id_cliente int auto_increment primary key,
    nome varchar(20) not null,
    cpf varchar(11) unique not null,
    endereco varchar(20),
    data_nascimento date not null,
    telefone varchar(15),
    constraint cpf_unique_cliente unique (cpf)
);

create table cliente_pj(
	id_cliente_pj int auto_increment primary key,
    razao_social varchar(30) not null,
    cnpj varchar(14) unique not null,
    endereco varchar(20),
    data_fundacao date,
    telefone varchar(15),
    constraint cnpj_unique_cliente_pj unique (cnpj)
);

create table oficina_mecanica(
	id_oficina int auto_increment primary key,
    razao_social varchar(30) not null,
    cnpj varchar(20) unique not null,
    data_fundacao date,
    constraint cnpj_unique_oficina unique (cnpj)
);

create table mecanico(
	id_mecanico int auto_increment primary key,
    id_oficina int,
    nome varchar(20) not null,
	cpf varchar(20) unique not null,
    data_nascimento date,
    telefone varchar(15) not null,
	especialidade varchar(20),
    foreign key (id_oficina) references oficina_mecanica (id_oficina)
);

create table servico(
	id_servico int auto_increment primary key,
    id_mecanico int,
    id_oficina int,
	tipo_servico enum('Manutenção', 'Revisão'),
    foreign key (id_mecanico) references mecanico (id_mecanico),
    foreign key (id_oficina) references oficina_mecanica(id_oficina)
);

create table estoque(
	id_peca int auto_increment primary key,
    descricao varchar(50) not null,
    quantidade int default 0,
    valor_peca float not null,
    data_fabricacao date,
    data_movimentacao datetime default current_timestamp
);

create table os_peca(
    id_os_servico int,
    id_peca int,
    quantidade_de_peca int not null,
    primary key (id_os_servico, id_peca),
    foreign key (id_os_servico) references os_de_servico (id_os_servico),
    foreign key (id_peca) references estoque (id_peca)
);

create table os_de_servico(
	id_os_servico int auto_increment primary key,
    id_servico int,
    data_emissao datetime not null default current_timestamp,
    valor_total float,
    status_servico enum ('Autorizado','Aguardando liberaçao','Cancelado'),
    foreign key (id_servico) references servico (id_servico)
);

create table status_servico(
	id_status_servico int auto_increment primary key,
	id_os_servico int,
    id_servico int,
    Status_servico enum ('Finalizado', 'Cancelado','Em andamento', 'Paralizado'),
    foreign key (id_os_servico) references os_de_servico (id_os_servico)
);
 show tables;
 select * from status_servico;
create table pagamento(
	id_pagamento int auto_increment primary key,
    id_status_servico int,
    id_os_servico int,
	tipo_de_pagamento enum ('Débito','Crédito','Boleto','Pix','Dinheiro'),
    foreign key (id_status_servico) references status_servico(id_status_de_servico),
    foreign key (id_os_servico) references os_de_servico (id_os_servico)
);