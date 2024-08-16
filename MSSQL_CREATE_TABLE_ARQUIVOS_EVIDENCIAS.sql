--script de criação da tabela de arquivos evidencias
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ARQUIVOS_EVIDENCIAS')

BEGIN
	CREATE TABLE ARQUIVOS_EVIDENCIAS (
	  ArquivoEvidenciaId INT  IDENTITY(1,1) PRIMARY KEY,
	  NomeEvidencia VARCHAR(255) CHECK (LEN(NomeEvidencia) <= 255),
	  ArquivoEvidencia IMAGE
	);
END