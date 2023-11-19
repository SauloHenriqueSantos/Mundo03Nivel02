
INSERT INTO usuario (login, senha)
VALUES ('op1', 'op1'), ('op2', 'op2');

INSERT INTO produto (nome, quantidade, precoVenda)
VALUES ('Melancia', 100, 5.00), ('Kiwi', 500, 2.00), ('Tomate', 800, 4.00);

INSERT INTO pessoa (nome, endereco, cidade, estado, telefone, email)
VALUES
('Saulo Henrique', 'Rua John Keneddy', 'Salvador', 'SP', '66677788810', 'saulo.henrique@email.com'),
('Lais Farias', 'Av. Nicolau', 'Fortaleza', 'CE', '55544499910', 'laisfaris@email.com'),
('cacambas', 'Rua Itu', 'Sao Paulo', 'SP', '11223344000156', 'cacambas@email.com');

INSERT INTO pessoa_fisica (id_pessoa, cpf)
VALUES (1, '11122233344'), (2, '44433322211');

INSERT INTO pessoa_juridica (id_pessoa, cnpj)
VALUES (3, '11223344000155');

INSERT INTO movimento (id_pessoa, id_produto, id_usuario, quantidade, tipo, valor_unitario)
VALUES
(1, 1, 1, 10, 'E', 15.50), 
(1, 2, 1, 5, 'S', 45.00); 



