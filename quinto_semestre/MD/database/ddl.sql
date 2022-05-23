CREATE DATABASE IF NOT EXISTS musical_store;
USE musical_store;
# DROP DATABASE musical_store;
# Loja 

CREATE TABLE loja(
	id_loja int NOT NULL,
    razao_social varchar(90),
    cnpj varchar(90),
    PRIMARY KEY (id_loja) 
);

CREATE TABLE pdv(
	id_pdv int NOT NULL PRIMARY KEY,
    nome varchar(90),
    id_loja int,
    FOREIGN KEY (id_loja) REFERENCES loja(id_loja)
);

CREATE TABLE endereco_pdv(
	id_pdv int NOT NULL,
    rua varchar(90),
    numero integer,
    complemento varchar(90),
    bairro varchar(90),
    FOREIGN KEY(id_pdv) REFERENCES pdv(id_pdv)
);

CREATE TABLE telefones_pdv(
	id_pdv int NOT NULL,
    numero varchar(90),
    FOREIGN KEY(id_pdv) REFERENCES pdv(id_pdv)
);

# Cliente

CREATE TABLE cliente(
	id_cliente int NOT NULL,
    nome varchar(90),
    email varchar(120),
    cpf varchar(16),
    PRIMARY KEY(id_cliente)
);

CREATE TABLE telefones_cliente(
	id_cliente int NOT NULL,
    numero varchar(90),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE endereco_cliente(
	id_cliente int NOT NULL,
    rua varchar(90),
    numero integer,
    complemento varchar(90),
    bairro varchar(90),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

# Vendedor

CREATE TABLE vendedor(
	id_vendedor int NOT NULL,
    nome varchar(90),
    email varchar(120),
    cpf varchar(16),
    PRIMARY KEY(id_vendedor)
);

CREATE TABLE telefones_vendedor(
	id_vendedor int NOT NULL,
    numero varchar(90),
    FOREIGN KEY(id_vendedor) REFERENCES vendedor(id_vendedor)
);

CREATE TABLE endereco_vendedor(
	id_vendedor int NOT NULL,
    rua varchar(90),
    numero integer,
    complemento varchar(90),
    bairro varchar(90),
    FOREIGN KEY(id_vendedor) REFERENCES vendedor(id_vendedor)
);

# Fornecedor

CREATE TABLE fornecedor(
	id_fornecedor int NOT NULL,
    nome varchar(90) UNIQUE,
    email varchar(120),
    cnpj varchar(25),
    PRIMARY KEY(id_fornecedor)
);

CREATE TABLE telefones_fornecedor(
	id_fornecedor int NOT NULL,
    numero varchar(90),
    FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

CREATE TABLE endereco_fornecedor(
	id_fornecedor int NOT NULL,
    numero integer,
    complemento varchar(90),
    bairro varchar(90),
    FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

# Instrumento

CREATE TABLE categoria(
	id_categoria int NOT NULL,
    nome varchar(90),
    PRIMARY KEY(id_categoria)
);

CREATE TABLE material(
	id_material int NOT NULL,
    nome varchar(90),
    colocaracao varchar(90),
    PRIMARY KEY(id_material)
);


CREATE TABLE instrumento(
	id_instrumento int NOT NULL,
    modelo varchar(90),
    preco double,
    id_categoria int,
    PRIMARY KEY(id_instrumento),
	FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE materiais_instrumento(
	id_instrumento int NOT NULL,
    id_material int NOT NULL,
	FOREIGN KEY(id_instrumento) REFERENCES instrumento(id_instrumento),
	FOREIGN KEY(id_material) REFERENCES material(id_material)
);

CREATE TABLE estoque(
	id_instrumento int NOT NULL,
    quantidade int NOT NULL,
    id_fornecedor int,
	FOREIGN KEY(id_instrumento) REFERENCES instrumento(id_instrumento),
    FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

# Compra

CREATE TABLE compra(
	id_compra int NOT NULL,
    id_vendedor int NOT NULL,
    id_cliente int NOT NULL,
    id_pdv int NOT NULL,
    data_da_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    preco double,
	PRIMARY KEY(id_compra),
    FOREIGN KEY(id_vendedor) REFERENCES vendedor(id_vendedor),
	FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente),
	FOREIGN KEY(id_pdv) REFERENCES pdv(id_pdv)
);


CREATE TABLE instrumento_vendido(
	id_instrumento int NOT NULL,
    id_compra int NOT NULL,
	FOREIGN KEY(id_instrumento) REFERENCES instrumento(id_instrumento),
    FOREIGN KEY(id_compra) REFERENCES compra(id_compra)
);



# Alter

ALTER TABLE endereco_fornecedor ADD COLUMN rua varchar(90);
ALTER TABLE estoque MODIFY id_fornecedor int NOT NULL;
ALTER TABLE compra DROP COLUMN preco;
ALTER TABLE cliente ADD INDEX(cpf);
