CREATE VIEW vwPacienteExames AS
	SELECT 
		p.cpf,
		p.nomePaciente, 
		a.nomeExame AS exameRealizado,
		FORMAT(a.dataExame, 'dd/MM/yyyy') AS dataExameRealizado
	FROM 
		tabelaPaciente p
		JOIN 
			tabelaAudiometria a ON a.cpfPaciente = p.cpf

	UNION ALL

	SELECT 
		p.cpf,
		p.nomePaciente, 
		i.nomeExame AS exameRealizado,
		FORMAT(i.dataExame, 'dd/MM/yyyy') AS dataExameRealizado
	FROM 
		tabelaPaciente p
		JOIN 
			tabelaImpedanciometria i ON i.cpfPaciente = p.cpf;
