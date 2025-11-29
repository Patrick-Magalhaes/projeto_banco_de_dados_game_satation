SELECT * FROM Produto;

SELECT v.data_venda, c.nome_cliente, f.nome_funcionario, v.valor_total
FROM Venda v
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN Funcionario f ON v.id_funcionario = f.id_funcionario;