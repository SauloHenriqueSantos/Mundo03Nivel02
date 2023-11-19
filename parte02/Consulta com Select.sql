
SELECT p.*, pf.cpf
FROM pessoa p
INNER JOIN pessoa_fisica pf ON p.id_pessoa = pf.id_pessoa;

SELECT p.*, pj.cnpj
FROM pessoa p
INNER JOIN pessoa_juridica pj ON p.id_pessoa = pj.id_pessoa;

SELECT m.*, p.nome as fornecedor, pr.nome as produto, m.quantidade, m.valor_unitario, (m.quantidade * m.valor_unitario) as valor_total
FROM movimento m
INNER JOIN pessoa p ON m.id_pessoa = p.id_pessoa
INNER JOIN produto pr ON m.id_produto = pr.id_produto
WHERE m.tipo = 'E';

SELECT m.*, p.nome as comprador, pr.nome as produto, m.quantidade, m.valor_unitario, (m.quantidade * m.valor_unitario) as valor_total
FROM movimento m
INNER JOIN pessoa p ON m.id_pessoa = p.id_pessoa
INNER JOIN produto pr ON m.id_produto = pr.id_produto
WHERE m.tipo = 'S';

SELECT pr.nome, SUM(m.quantidade * m.valor_unitario) as valor_total_entradas
FROM movimento m
INNER JOIN produto pr ON m.id_produto = pr.id_produto
WHERE m.tipo = 'E'
GROUP BY pr.nome;


SELECT pr.nome, SUM(m.quantidade * m.valor_unitario) as valor_total_saidas
FROM movimento m
INNER JOIN produto pr ON m.id_produto = pr.id_produto
WHERE m.tipo = 'S'
GROUP BY pr.nome;

SELECT u.*
FROM usuario u
LEFT JOIN movimento m ON u.id_usuario = m.id_usuario AND m.tipo = 'E'
WHERE m.id_movimento IS NULL;

SELECT u.login, SUM(m.valor_unitario * m.quantidade) as valor_total_entradas
FROM movimento m
INNER JOIN usuario u ON m.id_usuario = u.id_usuario
WHERE m.tipo = 'E'
GROUP BY u.login;

SELECT u.login, SUM(m.valor_unitario * m.quantidade) as valor_total_saidas
FROM movimento m
INNER JOIN usuario u ON m.id_usuario = u.id_usuario
WHERE m.tipo = 'S'
GROUP BY u.login;


SELECT pr.nome, SUM(m.valor_unitario * m.quantidade) / SUM(m.quantidade) as media_ponderada_venda
FROM movimento m
INNER JOIN produto pr ON m.id_produto = pr.id_produto
WHERE m.tipo = 'S'
GROUP BY pr.nome;


