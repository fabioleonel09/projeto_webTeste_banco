--SCRIPT GERAL DE CRIAÇÃO DA BASE DE DADOS E DE TODAS AS TABELAS DO SISCON PROJECTS
--Criação da data base
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'WEBTESTE')

BEGIN
	CREATE DATABASE WEBTESTE;
END
	
GO

--Usando a data base criada	
USE WEBTESTE;

--script de criação da tabela de usuários e senhas
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'USUARIOS_SENHAS')

BEGIN
	CREATE TABLE USUARIOS_SENHAS (
	  UsuariosSenhasId INT  IDENTITY(1,1) PRIMARY KEY,
	  Usuario VARCHAR(100) CHECK (LEN(Usuario) <= 100),
	  Senha VARCHAR(100) CHECK (LEN(Senha) <= 100),
	  Competencia VARCHAR(100) CHECK (LEN(Competencia) <= 100)
	);
END

--script de criação da tabela de documentos gerais
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'DOCUMENTOS_GERAIS')

BEGIN
	CREATE TABLE DOCUMENTOS_GERAIS (
	  DocumentosGeraisId INT  IDENTITY(1,1) PRIMARY KEY,
	  NomeDocumento VARCHAR(200),
	  DescricaoDocumento VARCHAR(1000),
	  DataInclusao DATETIME,
	  TipoDocumento VARCHAR(100)
	);
END

--script de criação da tabela de arquivos documentos gerais
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ARQUIVOS_DOCS_GERAIS')

BEGIN
	CREATE TABLE ARQUIVOS_DOCS_GERAIS (
	  ArquivoDocsGeraisId INT  IDENTITY(1,1) PRIMARY KEY,
	  NomeDocGeral VARCHAR(255) CHECK (LEN(NomeDocGeral) <= 255),
	  ArquivoDocGeral IMAGE
	);
END

--script de criação da tabela de documentos de evidências
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'EVIDENCIAS')

BEGIN
	CREATE TABLE EVIDENCIAS (
	  EvidenciasId INT  IDENTITY(1,1) PRIMARY KEY,
	  NomeEvidencia VARCHAR(200),
	  DescricaoEvidencia VARCHAR(1000),
	  DesenvolvedorEvidencia VARCHAR(100),
	  DataInclusao DATETIME,
	  TipoDocumento VARCHAR(100)
	);
END

--script de criação da tabela de arquivos evidencias
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ARQUIVOS_EVIDENCIAS')

BEGIN
	CREATE TABLE ARQUIVOS_EVIDENCIAS (
	  ArquivoEvidenciaId INT  IDENTITY(1,1) PRIMARY KEY,
	  NomeEvidencia VARCHAR(255) CHECK (LEN(NomeEvidencia) <= 255),
	  ArquivoEvidencia IMAGE
	);
END

--script de criação da tabela de lançamento de horários
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'LANCAMENTO_HORARIOS')

BEGIN
	CREATE TABLE LANCAMENTO_HORARIOS (
	  LancamentoHorarioId INT  IDENTITY(1,1) PRIMARY KEY,
	  DataLancamento DATETIME,
	  TipoLancamento VARCHAR(100),
	  NumeroEvidencia int,
	  ClienteLancamento VARCHAR(100),
	  ObservacaoLancamento VARCHAR(200),
	  HorasLancamento DATETIME,
	  nomeDesenvolvedor VARCHAR(200)
	);
END