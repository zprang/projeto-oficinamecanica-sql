USE oficina_lp4x4;

INSERT INTO CLIENTE (Nome, Telefone, Email) VALUES
('João Silva', '(47) 99999-1111', 'joao@lp4x4.com'),
('Maria Souza', '(47) 98888-2222', 'maria@lp4x4.com');

INSERT INTO VEICULO (Placa, Modelo, Quilometragem, ID_CLIENTE) VALUES
('ABC1234', 'Toyota Hilux', 120000, 1),
('XYZ5678', 'Jeep Renegade', 80000, 2);

INSERT INTO MECANICO (Nome, Especialidade) VALUES
('Carlos Mendes', 'Suspensão'),
('Fernanda Lima', 'Motor');

INSERT INTO ORDEM_SERVICO (Data_Entrada, Data_Saida, Status, Valor_Total, ID_CLIENTE, ID_VEICULO, ID_MECANICO) VALUES
('2025-11-01', '2025-11-03', 'Finalizada', 0.00, 1, 1, 1),
('2025-11-05', NULL, 'Em andamento', 0.00, 2, 2, 2);

INSERT INTO SERVICO (Descricao, Valor, ID_OS) VALUES
('Troca de óleo', 150.00, 1),
('Revisão geral', 300.00, 2);

INSERT INTO PECA_ESTOQUE (Nome_Peca, Quantidade, Preco_Unitario) VALUES
('Filtro de óleo', 20, 50.00),
('Pastilha de freio', 15, 120.00);

INSERT INTO ITENS_OS (ID_OS, ID_PECA, Quantidade_Usada, Valor_Unitario) VALUES
(1, 1, 1, 50.00),
(2, 2, 2, 120.00);

UPDATE ORDEM_SERVICO SET Valor_Total = 200.00 WHERE ID_OS = 1;
UPDATE ORDEM_SERVICO SET Valor_Total = 540.00 WHERE ID_OS = 2;