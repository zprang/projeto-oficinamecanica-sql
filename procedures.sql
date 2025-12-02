USE oficina_lp4x4;

-- Procedure: Cadastrar cliente + veículo
DELIMITER $$
CREATE PROCEDURE CadastrarClienteComVeiculo(
    IN p_Nome VARCHAR(100),
    IN p_Telefone VARCHAR(15),
    IN p_Email VARCHAR(100),
    IN p_Placa VARCHAR(10),
    IN p_Modelo VARCHAR(50),
    IN p_Quilometragem INT
)
BEGIN
    DECLARE v_id_cliente INT;
    
    INSERT INTO CLIENTE (Nome, Telefone, Email) 
    VALUES (p_Nome, p_Telefone, p_Email);
    
    SET v_id_cliente = LAST_INSERT_ID();
    
    INSERT INTO VEICULO (Placa, Modelo, Quilometragem, ID_CLIENTE)
    VALUES (p_Placa, p_Modelo, p_Quilometragem, v_id_cliente);
    
    SELECT 'Cliente e veículo cadastrados com sucesso!' AS Mensagem,
           v_id_cliente AS ID_Cliente_Criado;
END$$
DELIMITER ;

-- Procedure: Buscar cliente por nome, telefone ou placa
DELIMITER $$
CREATE PROCEDURE BuscarCliente(IN termo VARCHAR(100))
BEGIN
    SELECT 
        c.ID_CLIENTE,
        c.Nome AS Cliente,
        c.Telefone,
        c.Email,
        v.Placa,
        v.Modelo,
        v.Quilometragem
    FROM CLIENTE c
    LEFT JOIN VEICULO v ON c.ID_CLIENTE = v.ID_CLIENTE
    WHERE c.Nome LIKE CONCAT('%', termo, '%')
       OR c.Telefone LIKE CONCAT('%', termo, '%')
       OR v.Placa LIKE CONCAT('%', termo, '%')
    ORDER BY c.Nome;
END$$
DELIMITER ;