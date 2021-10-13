package br.sigesc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.sigesc.connection.SingleConnectionBanco;
import br.sigesc.model.ModelEnquete;

public class DAOEnqueteRepository {
	
	private Connection connection;
	
	public DAOEnqueteRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public ModelEnquete gravarEnquete(ModelEnquete objetoEnquete) throws Exception {
		
		if(objetoEnquete.isNovo()) {/*Gravar um novo*/
		
		String sql = "INSERT INTO enquete(pergunta, q1, q2, q3, q4, r1, r2, r3, r4, id_usuario) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
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
		preparedSql.setLong(10, objetoEnquete.getId_usuario());
		
		preparedSql.execute();
		connection.commit();
		
		}else {
			String sql = "UPDATE enquete SET pergunta=?, q1=?, q2=?, q3=?, q4=? WHERE id = "+objetoEnquete.getId()+";";
			
			PreparedStatement prepareSql = connection.prepareStatement(sql);
			
			prepareSql.setString(1, objetoEnquete.getPergunta());
			prepareSql.setString(2, objetoEnquete.getQ1());
			prepareSql.setString(3, objetoEnquete.getQ2());
			prepareSql.setString(4, objetoEnquete.getQ3());
			prepareSql.setString(5, objetoEnquete.getQ4());
			
			prepareSql.executeUpdate();
			
			connection.commit();
		}
	
		return this.consultaEnquete(objetoEnquete.getPergunta());
	
	}
		
	public List<ModelEnquete> consultaEnqueteList(String pergunta) throws Exception{
	
		List<ModelEnquete> retorno = new ArrayList<ModelEnquete>();
		
		String sql = "SELECT * FROM enquete where upper(pergunta) like upper(?)";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, "%" + pergunta + "%");
		
		ResultSet resultado = statement.executeQuery();
		
		while(resultado.next()) { /*Percorre as linhas de resultado do SQL*/
			ModelEnquete modelEnquete = new ModelEnquete();
			modelEnquete.setId(resultado.getLong("id"));
			modelEnquete.setPergunta(resultado.getString("pergunta"));
			modelEnquete.setQ1(resultado.getString("q1"));
			modelEnquete.setQ2(resultado.getString("q2"));
			modelEnquete.setQ3(resultado.getString("q3"));
			modelEnquete.setQ4(resultado.getString("q4"));
			
			retorno.add(modelEnquete);
			
			
		}
		
		
		return retorno;
	}
		
		
		
	
	
	public ModelEnquete consultaEnquete(String pergunta) throws Exception {
		
		ModelEnquete modelEnquete = new ModelEnquete();
		
		String sql = "SELECT * FROM enquete WHERE upper(pergunta) = Upper('"+pergunta+"')";
		
		PreparedStatement statement = connection.prepareStatement(sql);
				
		ResultSet resultado = statement.executeQuery();
		
		
		while(resultado.next()) {
			
			modelEnquete.setId(resultado.getLong("id"));
			modelEnquete.setPergunta(resultado.getString("pergunta"));
			modelEnquete.setQ1(resultado.getString("q1"));
			modelEnquete.setQ2(resultado.getString("q2"));
			modelEnquete.setQ3(resultado.getString("q3"));
			modelEnquete.setQ4(resultado.getString("q4"));
			modelEnquete.setR1(resultado.getInt("r1"));
			modelEnquete.setR2(resultado.getInt("r2"));
			modelEnquete.setR3(resultado.getInt("r3"));
			modelEnquete.setR4(resultado.getInt("r4"));
			modelEnquete.setId_usuario(resultado.getLong("id_usuario"));
			
		}
		
		return modelEnquete;
	}
	
	
	public ModelEnquete consultaEnqueteID(String id) throws Exception {
		
		ModelEnquete modelEnquete = new ModelEnquete();
		
		String sql = "SELECT * FROM enquete WHERE id = ? ";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, Long.parseLong(id));
		ResultSet resultado = statement.executeQuery();
		
		
		while(resultado.next()) {
			
			modelEnquete.setId(resultado.getLong("id"));
			modelEnquete.setPergunta(resultado.getString("pergunta"));
			modelEnquete.setQ1(resultado.getString("q1"));
			modelEnquete.setQ2(resultado.getString("q2"));
			modelEnquete.setQ3(resultado.getString("q3"));
			modelEnquete.setQ4(resultado.getString("q4"));
			modelEnquete.setR1(resultado.getInt("r1"));
			modelEnquete.setR2(resultado.getInt("r2"));
			modelEnquete.setR3(resultado.getInt("r3"));
			modelEnquete.setR4(resultado.getInt("r4"));
			modelEnquete.setId_usuario(resultado.getLong("id_usuario"));
			
		}
		
		return modelEnquete;
	}
	
	public void deletarEnquete(String idUser) throws Exception {
		String sql = "DELETE FROM enquete WHERE id = ?;";		
		PreparedStatement prepareSql = connection.prepareStatement(sql);
		prepareSql.setLong(1, Long.parseLong(idUser));
		prepareSql.executeUpdate();
		
		connection.commit();
	}


}












