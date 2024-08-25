--SCRIPT GERAL DE CRIAÇÃO DA BASE DE DADOS E DE TODAS AS TABELAS DO SISCON PROJECTS
--Criação da data base
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'WEBTESTE')

BEGIN
	CREATE DATABASE WEBTESTE;
END
	
GO

--Usando a data base criada	
USE WEBTESTE;

-- Criação da tabela Paciente
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'tabelaPaciente')

BEGIN
	CREATE TABLE tabelaPaciente (
		cpf VARCHAR(11) PRIMARY KEY,
		nomePaciente VARCHAR(100) NOT NULL,
		dataNascimento DATETIME NOT NULL,
		examesRealizados VARCHAR(100),
		dataExameRealizado DATETIME
	);
END

-- Criação da tabela Audiometria
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'tabelaAudiometria')

BEGIN
	CREATE TABLE tabelaAudiometria (
		id INT IDENTITY(1,1) PRIMARY KEY,
		cpfPaciente VARCHAR(11),
		dataExame DATETIME NOT NULL,
		nomeExame VARCHAR(100) NOT NULL DEFAULT 'Audiometria',
		FOREIGN KEY (cpfPaciente) REFERENCES tabelaPaciente(cpf) ON DELETE CASCADE
	);
END

-- Criação da tabela Impedanciometria
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'tabelaImpedanciometria')

BEGIN
	CREATE TABLE tabelaImpedanciometria (
		id INT IDENTITY(1,1) PRIMARY KEY,
		cpfPaciente VARCHAR(11),
		dataExame DATETIME NOT NULL,
		nomeExame VARCHAR(100) NOT NULL DEFAULT 'Impedanciometria',
		FOREIGN KEY (cpfPaciente) REFERENCES tabelaPaciente(cpf) ON DELETE CASCADE
	);
END