package br.sigesc.model;

import java.io.Serializable;

public class ModelEnquete implements Serializable{
		
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String pergunta;
	private String q1;
	private String q2;
	private String q3;
	private String q4;
	private int r1;
	private int r2;
	private int r3;
	private int r4;
	private Long id_usuario;
	
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
	public String getPergunta() {
		return pergunta;
	}
	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
	}
	public String getQ1() {
		return q1;
	}
	public void setQ1(String q1) {
		this.q1 = q1;
	}
	public String getQ2() {
		return q2;
	}
	public void setQ2(String q2) {
		this.q2 = q2;
	}
	public String getQ3() {
		return q3;
	}
	public void setQ3(String q3) {
		this.q3 = q3;
	}
	public String getQ4() {
		return q4;
	}
	public void setQ4(String q4) {
		this.q4 = q4;
	}
	public int getR1() {
		return r1;
	}
	public void setR1(int r1) {
		this.r1 = r1;
	}
	public int getR2() {
		return r2;
	}
	public void setR2(int r2) {
		this.r2 = r2;
	}
	public int getR3() {
		return r3;
	}
	public void setR3(int r3) {
		this.r3 = r3;
	}
	public int getR4() {
		return r4;
	}
	public void setR4(int r4) {
		this.r4 = r4;
	}


	public Long getId_usuario() {
		return id_usuario;
	}


	public void setId_usuario(Long id_usuario) {
		this.id_usuario = id_usuario;
	}
	
	
	
}
