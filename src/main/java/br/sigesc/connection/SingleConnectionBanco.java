package br.sigesc.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {
	
	private static String banco = "jdbc:postgresql://ec2-3-216-113-109.compute-1.amazonaws.com:5432/d8vg9avfj3rhtr?autoReconnect=true";
	private static String user = "dlemogfvjuwyao";
	private static String senha = "e143a4e29fcc48903337685352f17a991c2a23dedc5c9e1e075e00318d117c9b";
	private static Connection connection = null;
	
	public static Connection getConnection() {
		return connection;
	}
	
	static {
		conectar();
	}
	
	public SingleConnectionBanco() {/*quando tiver uma instancia vai conectar*/
		conectar();
	}
	
	private static void conectar() {
		
		try {
			
			if(connection == null) {
				Class.forName("org.postgresql.Driver");/*Carrega o drive de conexão do banco*/
				connection = DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false);/*para não efetuar alterações no banco sem nosso comando*/
			}
			
		}catch (Exception e) {
			e.printStackTrace();/*Mostrar qualquer erro no momento de connectar*/
		}
		
		
		
		
		
	}

}
