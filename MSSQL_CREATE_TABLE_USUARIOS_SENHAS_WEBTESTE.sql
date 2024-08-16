--script de criação da tabela de usuários e senhas
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'USUARIOS_SENHAS')

BEGIN
	CREATE TABLE USUARIOS_SENHAS (
	  UsuariosSenhasId INT  IDENTITY(1,1) PRIMARY KEY,
	  Usuario VARCHAR(100) CHECK (LEN(Usario) <= 100),
	  Senha VARCHAR(100) CHECK (LEN(Senha) <= 100),
	  Competencia VARCHAR(100) CHECK (LEN(Competencia) <= 100)
	);
END