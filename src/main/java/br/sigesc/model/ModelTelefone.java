package br.sigesc.model;

import java.io.Serializable;

public class ModelTelefone implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Long id;
	private String numero;
	
	private ModelLogin usuario_pai_id;
	private ModelLogin usuario_cad_id;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public ModelLogin getUsuario_pai_id() {
		return usuario_pai_id;
	}
	public void setUsuario_pai_id(ModelLogin usuario_pai_id) {
		this.usuario_pai_id = usuario_pai_id;
	}
	public ModelLogin getUsuario_cad_id() {
		return usuario_cad_id;
	}
	public void setUsuario_cad_id(ModelLogin usuario_cad_id) {
		this.usuario_cad_id = usuario_cad_id;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ModelTelefone other = (ModelTelefone) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
	
	
	

}
