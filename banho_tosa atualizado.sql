INSERT INTO clientes (id_cliente, nome, id_bairro, telefone, agendamentos)
VALUES
  (2, 'Antonio Lopes', 1, '123456789', '2023-12-13 10:00:00'),
  (3, 'Francisco Souza', 2, '987654321', '2023-12-14 15:30:00'),
  (4, 'Roberto Cruz', 3, '555111222', NULL),
  (5, 'Maria Silva', 4, '333444555', '2023-12-15 08:45:00'),
  (6, 'Carlos Oliveira', 5, '777888999', '2023-12-16 14:20:00');
  
-- Inserindo dados na tabela bairro
INSERT INTO bairro (id_bairro, id_cliente, valor_transporte)
VALUES
  (1, 2, 50.00),
  (2, 3, 30.00),
  (3, 4, 25.00),
  (4, 5, 40.00),
  (5, 6, 20.00);

-- É preciso atualizar dados na tabela clientes para adicionar o id_bairro correspondente
UPDATE clientes SET id_bairro = 1 WHERE id_cliente = 2;
UPDATE clientes SET id_bairro = 2 WHERE id_cliente = 3;
UPDATE clientes SET id_bairro = 3 WHERE id_cliente = 4;
UPDATE clientes SET id_bairro = 4 WHERE id_cliente = 5;
UPDATE clientes SET id_bairro = 5 WHERE id_cliente = 6;

--Inserindo dados relacionados na tabela residem
INSERT INTO residem (id_cliente, id_bairro)
VALUES
  (2, 1),
  (3, 2),
  (4, 3),
  (5, 4),
  (6, 5);
  
  ALTER TABLE petz
ADD COLUMN nome_pet VARCHAR(50); 

-- Inseririndo dados na tabela petz
INSERT INTO petz (id_pet, id_cliente, idade, genero, tipo_porte, nome_pet)
VALUES
  (1, 2, '2021-01-15', 'Macho', 'Pequeno', 'Buddy'),
  (2, 3, '2019-05-20', 'Fêmea', 'Médio', 'Luna'),
  (3, 4, '2020-10-08', 'Macho', 'Grande', 'Rocky'),
  (4, 5, '2018-03-12', 'Fêmea', 'Pequeno', 'Coco'),
  (5, 6, '2017-08-25', 'Macho', 'Médio', 'Max');
  
  -- Alterarei o tamanho do campo tipo_porte para acomodar valores maiores
ALTER TABLE petz
ALTER COLUMN tipo_porte TYPE VARCHAR(10);

INSERT INTO petz (id_pet, id_cliente, idade, genero, tipo_porte, nome_pet)
VALUES
  (1, 2, '2021-01-15', 'Macho', 'Pequeno', 'Buddy'),
  (2, 3, '2019-05-20', 'Fêmea', 'Médio', 'Luna'),
  (3, 4, '2020-10-08', 'Macho', 'Grande', 'Rocky'),
  (4, 5, '2018-03-12', 'Fêmea', 'Pequeno', 'Coco'),
  (5, 6, '2017-08-25', 'Macho', 'Médio', 'Max');
 
 
 -- Inseririndo dados na tabela funcionarios
INSERT INTO funcionarios (nome, telefone, id_bairro, valor_transporte)
VALUES
  ('João Silva', '987654321', 1, 50.00),
  ('Ana Santos', '123456789', 2, 30.00),
  ('Carlos Oliveira', '555111222', 3, 25.00),
  ('Mariana Lima', '333444555', 4, 40.00),
  ('Pedro Rocha', '777888999', 5, 20.00);
  

    -- Alterando tipo de dado na coluna tipo_plano para VARCHAR
ALTER TABLE tosa
ALTER COLUMN tipo_plano TYPE VARCHAR(10);

-- Inserindo dados na tabela tosa
INSERT INTO tosa (agendamentos, id_pet, id_cliente, id_funcionario, tipo_plano)
VALUES
  ('2023-12-18 10:00:00', 1, 2, 1, 'Básico'),
  ('2023-12-19 15:30:00', 2, 3, 2, 'Premium'),
  ('2023-12-20 14:00:00', 3, 4, 3, 'Standard'),
  ('2023-12-21 09:45:00', 4, 5, 4, 'Básico'),
  ('2023-12-22 13:20:00', 5, 6, 5, 'Premium');
  
  -- Alterar tipo de dado da coluna tipo_plano para VARCHAR
ALTER TABLE tosa
ALTER COLUMN tipo_plano TYPE VARCHAR(10); 

-- Inserindo dados na tabela tosa
INSERT INTO tosa (agendamentos, id_pet, id_cliente, id_funcionario, tipo_plano)
VALUES
  ('2023-12-18 10:00:00', 1, 2, 1, 'Básico'),
  ('2023-12-19 15:30:00', 2, 3, 2, 'Premium'),
  ('2023-12-20 14:00:00', 3, 4, 3, 'Standard'),
  ('2023-12-21 09:45:00', 4, 5, 4, 'Básico'),
  ('2023-12-22 13:20:00', 5, 6, 5, 'Premium');
  
-- Remover dados existentes na tabela tosa que causam conflito
DELETE FROM tosa
WHERE agendamentos = '2023-12-18 10:00:00' AND id_pet = 1 AND id_cliente = 2 AND id_funcionario = 1;
  
  -- Inserir dados na tabela tosa
INSERT INTO tosa (agendamentos, id_pet, id_cliente, id_funcionario, tipo_plano)
VALUES
  ('2023-12-18 10:00:00', 1, 2, 1, 'Básico'),
  ('2023-12-19 15:30:00', 2, 3, 2, 'Premium'),
  ('2023-12-20 14:00:00', 3, 4, 3, 'Standard'),
  ('2023-12-21 09:45:00', 4, 5, 4, 'Básico'),
  ('2023-12-22 13:20:00', 5, 6, 5, 'Premium');
 
 DELETE FROM tosa
WHERE agendamentos = '2023-12-19 15:30:00' AND id_pet = 2 AND id_cliente = 3 AND id_funcionario = 2;

-- Inserir dados na tabela tosa
INSERT INTO tosa (agendamentos, id_pet, id_cliente, id_funcionario, tipo_plano)
VALUES
  ('2023-12-18 10:00:00', 1, 2, 1, 'Básico'),
  ('2023-12-19 15:30:00', 2, 3, 2, 'Premium'),
  ('2023-12-20 14:00:00', 3, 4, 3, 'Standard'),
  ('2023-12-21 09:45:00', 4, 5, 4, 'Básico'),
  ('2023-12-22 13:20:00', 5, 6, 5, 'Premium');

DELETE FROM tosa;

CREATE TABLE tosa (
  agendamentos TIMESTAMP NOT NULL,
  id_pet INTEGER NOT NULL,
  id_cliente INTEGER NOT NULL,
  id_funcionario INTEGER NOT NULL,
  tipo_plano VARCHAR(10) NOT NULL,
  PRIMARY KEY (agendamentos, id_pet, id_cliente, id_funcionario),
  FOREIGN KEY (id_pet) REFERENCES petz (id_pet),
  FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
  FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario)
);
INSERT INTO tosa (agendamentos, id_pet, id_cliente, id_funcionario, tipo_plano)
VALUES
  ('2023-12-18 10:00:00', 1, 2, 1, 'Básico'),
  ('2023-12-19 15:30:00', 2, 3, 2, 'Premium'),
  ('2023-12-20 14:00:00', 3, 4, 3, 'Standard'),
  ('2023-12-21 09:45:00', 4, 5, 4, 'Básico'),
  ('2023-12-22 13:20:00', 5, 6, 5, 'Premium');
  
  -- Inserindo dados na tabela agendamentos
INSERT INTO agendamentos (agendamentos, id_funcionario, id_pet, valor_transporte)
VALUES
  ('2023-12-23 11:30:00', 1, 1, 20.00),
  ('2023-12-24 14:45:00', 2, 2, 30.00),
  ('2023-12-25 09:00:00', 3, 3, 25.00),
  ('2023-12-26 13:15:00', 4, 4, 40.00),
  ('2023-12-27 16:30:00', 5, 5, 15.00);
  
  -- Inserindo dados na tabela transporte
INSERT INTO transporte (tipo_plano, id_funcionario, valor_transporte)
VALUES
  (1, 1, 20.00),
  (2, 2, 30.00),
  (3, 3, 25.00),
  (1, 4, 40.00),
  (2, 5, 15.00);
  
  -- Inserir na tabela planos se não existir
INSERT INTO planos (descricao)
VALUES 
  ('Plano Básico')
  ON CONFLICT (descricao) DO NOTHING;

-- Inserir dados na tabela transporte
INSERT INTO transporte (tipo_plano, id_funcionario, valor_transporte)
VALUES 
  ((SELECT tipo_plano FROM planos WHERE descricao = 'Plano Básico'), 1, 20.00),
  ((SELECT tipo_plano FROM planos WHERE descricao = 'Plano Premium'), 2, 30.00),
  ((SELECT tipo_plano FROM planos WHERE descricao = 'Plano Standard'), 3, 25.00),
  ((SELECT tipo_plano FROM planos WHERE descricao = 'Plano Básico'), 4, 40.00),
  ((SELECT tipo_plano FROM planos WHERE descricao = 'Plano Premium'), 5, 15.00);

INSERT INTO transporte (id_funcionario, valor_transporte, tipo_plano)
VALUES 
  (1, 20.00, 1),
  (2, 30.00, 2),
  (3, 25.00, 3),
  (4, 40.00, 1),
  (5, 15.00, 2);
 
 -- Adicionei uma coluna id_funcionario e categoria_plano na tabela planos
ALTER TABLE planos
ADD COLUMN id_funcionario INTEGER REFERENCES funcionarios (id_funcionario),
ADD COLUMN categoria_plano VARCHAR(30) UNIQUE;

-- Inserir dados na tabela planos
INSERT INTO planos (id_funcionario, categoria_plano)
VALUES 
  (1, 'Categoria1'),
  (2, 'Categoria2'),
  (3, 'Categoria3'); 
  
  UPDATE planos
SET categoria_plano = 
  CASE tipo_plano
    WHEN 1 THEN 'Básico'
    WHEN 2 THEN 'Intermediário'
    WHEN 3 THEN 'Completo'
	END;
	
	
-- Insert transportes
INSERT INTO transporte (tipo_plano_new, id_funcionario, valor_transporte)
VALUES 
  (1, 1, 100.00),
  (2, 2, 120.00),
  (3, 3, 150.00);
  
  INSERT INTO possuem (id_cliente, agendamentos_id, id_pet)
VALUES 
  (2, 1, 1),
  (3, 2, 2),
  (4, 3, 3);
  
  --Insert dados na tabela contem
INSERT INTO contem (tipo_plano)
VALUES 
  (1),
  (2),
  (3);

  -- Insert na tabela programacao
INSERT INTO programacao (id_funcionario, id_pet)
VALUES 
  (1, 1),
  (2, 2),
  (3, 3);
  
