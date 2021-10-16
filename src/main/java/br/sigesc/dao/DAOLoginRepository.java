package br.sigesc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.sigesc.connection.SingleConnectionBanco;
import br.sigesc.model.ModelLogin;

public class DAOLoginRepository {

	
	private Connection connection;
	
	public DAOLoginRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public boolean validarAutenticacao(ModelLogin modelLogin) throws Exception {
		
		String sql = "select * from model_login where upper(login) = upper(?) and upper(senha) = upper(?)";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		statement.setString(1, modelLogin.getLogin());
		statement.setString(2, modelLogin.getSenha());
		
		ResultSet resultSet = statement.executeQuery();
		
		if (resultSet.next()) {
			
			return true;/*Autenticado*/
			
		}
		
		return false;/*Não autenticado*/
	}
	
	public ModelLogin pesquisarIdUsuario(ModelLogin modelId)throws Exception{
		
		String sql = "SELECT id, nome_foto FROM model_login where login = ?";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		statement.setString(1, modelId.getLogin());
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) { /*Se tem resultado*/
			
			modelId.setId(resultado.getLong("id"));
			modelId.setNome_foto(resultado.getString("nome_foto"));
			
			
			
		}
		
		return modelId;
		
		
		
	}
	
}
