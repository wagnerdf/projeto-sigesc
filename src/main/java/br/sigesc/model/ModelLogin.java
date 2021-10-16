package br.sigesc.model;

import java.io.Serializable;

public class ModelLogin implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String nome;
	private String email;
	private String login;
	private String senha;
	private String nome_foto;
	
	public boolean isNovo() {
		
		if (this.id == null) {
			return true; /*Inserir novo*/
		}else if (this.id != null && this.id > 0) {
			return false; /*Atualizar*/
		}
		return id == null;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome_foto() {
		return nome_foto;
	}

	public void setNome_foto(String nome_foto) {
		this.nome_foto = nome_foto;
	}
	
	

}
