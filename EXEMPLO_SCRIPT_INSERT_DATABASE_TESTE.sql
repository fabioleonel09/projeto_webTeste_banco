-- Inserir dados de exemplo na tabela Paciente
INSERT INTO tabelaPacientes (cpf, nomePaciente, dataNascimento, examesRealizados, dataExameRealizado)
VALUES 
('12345678901', 'Ana Silva', '1985-07-10T00:00:00', 'Audiometria', '2024-08-01T10:00:00'),
('98765432109', 'Carlos Souza', '1990-03-22T00:00:00', 'Impedanciometria', '2024-08-02T09:15:00'),
('12312312399', 'Mariana Oliveira', '1975-11-15T00:00:00', 'Audiometria', '2024-08-05T11:30:00');

-- Inserir dados de exemplo na tabela Audiometria
INSERT INTO tabelaAudiometrias (cpfPaciente, dataExame, nomeExame)
VALUES
('12345678901', '2024-08-01T10:00:00', 'Audiometria'),
('12312312399', '2024-08-05T11:30:00', 'Audiometria');

-- Inserir dados de exemplo na tabela Impedanciometria
INSERT INTO tabelaImpedanciometrias (cpfPaciente, dataExame, nomeExame)
VALUES
('98765432109', '2024-08-02T09:15:00', 'Impedanciometria');