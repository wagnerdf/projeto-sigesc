package br.sigesc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;


import br.sigesc.connection.SingleConnectionBanco;
import br.sigesc.model.ModelEnquete;

public class DAOEnqueteRepository {
	
	private Connection connection;
	
	public DAOEnqueteRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public void gravarEnquete(ModelEnquete objetoEnquete) throws Exception {
		
		String sql = "INSERT INTO enquete(pergunta, q1, q2, q3, q4, r1, r2, r3, r4) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";
		PreparedStatement preparedSql = connection.prepareStatement(sql);
		
		preparedSql.setString(1, objetoEnquete.getPergunta());
		preparedSql.setString(2, objetoEnquete.getQ1());
		preparedSql.setString(3, objetoEnquete.getQ2());
		preparedSql.setString(4, objetoEnquete.getQ3());
		preparedSql.setString(5, objetoEnquete.getQ4());
		preparedSql.setInt(6, objetoEnquete.getR1());
		preparedSql.setInt(7, objetoEnquete.getR2());
		preparedSql.setInt(8, objetoEnquete.getR3());
		preparedSql.setInt(9, objetoEnquete.getR4());
		
		preparedSql.execute();
		connection.commit();
	
		
	}


}
