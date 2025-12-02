USE oficina_lp4x4;

-- 1. Veículos com mais de 100.000 km
SELECT * FROM VEICULO WHERE Quilometragem > 100000;

-- 2. Valor médio das ordens por cliente
SELECT c.Nome, AVG(os.Valor_Total) AS Media_Valor
FROM CLIENTE c
JOIN ORDEM_SERVICO os ON c.ID_CLIENTE = os.ID_CLIENTE
GROUP BY c.Nome;

-- 3. Detalhes completos da OS 1
SELECT os.ID_OS, c.Nome AS Cliente, v.Placa, v.Modelo, m.Nome AS Mecanico,
       s.Descricao, s.Valor AS Valor_Servico
FROM ORDEM_SERVICO os
JOIN CLIENTE c ON os.ID_CLIENTE = c.ID_CLIENTE
JOIN VEICULO v ON os.ID_VEICULO = v.ID_VEICULO
JOIN MECANICO m ON os.ID_MECANICO = m.ID_MECANICO
JOIN SERVICO s ON os.ID_OS = s.ID_OS
WHERE os.ID_OS = 1;

-- 4. Ranking de clientes por número de ordens
SELECT c.Nome, COUNT(os.ID_OS) AS Total_Ordens
FROM CLIENTE c
JOIN ORDEM_SERVICO os ON c.ID_CLIENTE = os.ID_CLIENTE
GROUP BY c.Nome
ORDER BY Total_Ordens DESC;

-- 5. Peças mais utilizadas
SELECT pe.Nome_Peca, SUM(io.Quantidade_Usada) AS Total_Usado
FROM PECA_ESTOQUE pe
JOIN ITENS_OS io ON pe.ID_PECA = io.ID_PECA
GROUP BY pe.Nome_Peca
ORDER BY Total_Usado DESC;
