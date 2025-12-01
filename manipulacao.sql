USE oficina_lp4x4;

-- Atualizar status da ordem 2
UPDATE ORDEM_SERVICO
SET Status = 'Finalizada'
WHERE ID_OS = 2;

-- Atualizar preço da peça
UPDATE PECA_ESTOQUE
SET Preco_Unitario = 55.00
WHERE ID_PECA = 1;

-- Deletar cliente teste
INSERT INTO CLIENTE (Nome, Telefone, Email) VALUES ('Teste', '(00) 00000-0000', 'teste@teste.com');
DELETE FROM CLIENTE WHERE Nome = 'Teste';

-- Cancelar ordem 2
DELETE FROM ORDEM_SERVICO WHERE ID_OS = 2;