CREATE TABLE Cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome_cliente VARCHAR(100),
    cpf VARCHAR(14),
    email VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE Funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    matricula VARCHAR(20),
    cargo VARCHAR(50)
);

CREATE TABLE Produto (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco_venda DECIMAL(10,2),
    qtd_estoque INT
);

CREATE TABLE Venda (
    id_venda SERIAL PRIMARY KEY,
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    valor_total DECIMAL(10,2),
    id_cliente INT,
    id_funcionario INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Item_Venda (
    id_item SERIAL PRIMARY KEY,
    preco_unitario DECIMAL(10,2),
    quantidade INT,
    id_venda INT,
    id_produto INT,
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);