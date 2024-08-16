--script de criação da tabela de arquivos documentos gerais
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ARQUIVOS_DOCS_GERAIS')

BEGIN
	CREATE TABLE ARQUIVOS_DOCS_GERAIS (
	  ArquivoDocsGeraisId INT  IDENTITY(1,1) PRIMARY KEY,
	  NomeDocGeral VARCHAR(255) CHECK (LEN(NomeDocGeral) <= 255),
	  ArquivoDocGeral IMAGE
	);
END