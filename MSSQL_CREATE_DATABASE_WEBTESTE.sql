--script de criação do banco de dados do sistema SISCON
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'WEBTESTE')

BEGIN
	CREATE DATABASE WEBTESTE;
END
	
GO