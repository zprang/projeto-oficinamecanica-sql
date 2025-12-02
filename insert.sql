USE oficina_lp4x4;

INSERT INTO CLIENTE (Nome, Telefone, Email) VALUES
('João Silva', '(47) 99999-1111', 'joao@lp4x4.com'),
('Maria Souza', '(47) 98888-2222', 'maria@lp4x4.com'),
('Pedro Oliveira', '(47) 97777-3333', 'pedro@lp4x4.com');

INSERT INTO VEICULO (Placa, Modelo, Quilometragem, ID_CLIENTE) VALUES
('ABC-1234', 'Toyota Hilux', 120000, 1),
('XYZ-5678', 'Jeep Renegade', 80000, 2),
('LP4-0001', 'Mitsubishi L200', 45000, 3);

INSERT INTO MECANICO (Nome, Especialidade) VALUES
('Carlos Mendes', 'Suspensão'),
('Fernanda Lima', 'Motor'),
('Roberto Santos', 'Elétrica');

INSERT INTO ORDEM_SERVICO (Data_Entrada, Data_Saida, Status, ID_CLIENTE, ID_VEICULO, ID_MECANICO) VALUES
('2025-11-01', '2025-11-03', 'Finalizada', 1, 1, 1),
('2025-11-05', NULL, 'Em andamento', 2, 2, 2),
('2025-11-10', NULL, 'Em andamento', 3, 3, 3);

INSERT INTO SERVICO (Descricao, Valor, ID_OS) VALUES
('Troca de óleo e filtro', 180.00, 1),
('Alinhamento e balanceamento', 220.00, 1),
('Revisão geral', 450.00, 2);

INSERT INTO PECA_ESTOQUE (Nome_Peca, Quantidade, Preco_Unitario) VALUES
('Filtro de óleo', 25, 55.00),
('Pastilha de freio dianteira', 18, 180.00),
('Óleo 5W30 sintético (1L)', 12, 48.00);

INSERT INTO ITENS_OS (ID_OS, ID_PECA, Quantidade_Usada, Valor_Unitario) VALUES
(1, 1, 1, 55.00),
(1, 3, 5, 48.00),
(2, 2, 2, 180.00);
