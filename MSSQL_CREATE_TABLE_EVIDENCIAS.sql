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