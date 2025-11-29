INSERT INTO Cliente (nome_cliente, cpf, email, data_nascimento) VALUES
('João da Silva', '111.222.333-44', 'joao@email.com', '1990-05-15'),
('Maria Oliveira', '222.333.444-55', 'maria@email.com', '1985-10-20'),
('Pedro Santos', '333.444.555-66', 'pedro@email.com', '2000-01-30');

INSERT INTO Funcionario (nome_funcionario, matricula, cargo) VALUES
('Carlos Vendedor', 'F001', 'Vendedor'),
('Ana Gerente', 'G001', 'Gerente'),
('Roberto Estoque', 'E001', 'Estoquista');

INSERT INTO Produto (nome, categoria, preco_venda, qtd_estoque) VALUES
('PlayStation 5', 'Console', 4500.00, 10),
('God of War Ragnarok', 'Jogo', 299.90, 50),
('Controle DualSense', 'Periférico', 450.00, 30),
('Nintendo Switch', 'Console', 2200.00, 15),
('Mario Kart 8', 'Jogo', 250.00, 40);

INSERT INTO Venda (valor_total, id_cliente, id_funcionario) VALUES (4799.90, 1, 1);
INSERT INTO Venda (valor_total, id_cliente, id_funcionario) VALUES (250.00, 2, 1);

INSERT INTO Item_Venda (preco_unitario, quantidade, id_venda, id_produto) VALUES
(4500.00, 1, 1, 1), -- PS5 na Venda 1
(299.90, 1, 1, 2);  -- Jogo na Venda 1

INSERT INTO Item_Venda (preco_unitario, quantidade, id_venda, id_produto) VALUES
(250.00, 1, 2, 5); -- Mario Kart na Venda 2