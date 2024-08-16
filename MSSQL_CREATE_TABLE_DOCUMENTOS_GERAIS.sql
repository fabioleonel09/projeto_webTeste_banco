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