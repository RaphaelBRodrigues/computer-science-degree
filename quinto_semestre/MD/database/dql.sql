SELECT * FROM fornecedor;

SELECT * FROM endereco_fornecedor LEFT JOIN fornecedor ON fornecedor.id_fornecedor = endereco_fornecedor.id_fornecedor;

SELECT nome FROM cliente WHERE nome LIKE '%Pris%';

SELECT nome from material;

SELECT numero FROM endereco_cliente WHERE numero > 500;

SELECT rua, nome FROM endereco_cliente INNER JOIN cliente WHERE endereco_cliente.id_cliente = cliente.id_cliente;

SELECT rua from endereco_fornecedor WHERE bairro LIKE '%centro%';

SELECT * FROM cliente;