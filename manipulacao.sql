USE oficina_lp4x4;

-- Atualizar status
UPDATE ORDEM_SERVICO SET Status = 'Finalizada', Data_Saida = '2025-11-15' WHERE ID_OS = 2;

-- Teste: excluir cliente (agora funciona!)
DELETE FROM CLIENTE WHERE ID_CLIENTE = 3;  -- Exclui cliente, veículo e OS em cascata

-- Teste: cadastrar novo cliente com procedure
CALL CadastrarClienteComVeiculo('Lucas Pereira', '(47) 99123-4567', 'lucas@email.com',
                               'NEW-2025', 'Chevrolet S10', 35000);

-- Teste: buscar cliente
CALL BuscarCliente('Lucas');
CALL BuscarCliente('S10');
