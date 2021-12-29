package br.sigesc.servlets;

import java.io.Serializable;



import br.sigesc.dao.DAOUsuarioRepository;
import br.sigesc.model.ModelLogin;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class ServletGenericUtil extends HttpServlet implements Serializable{

	private static final long serialVersionUID = 1L;

	
	
	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();
	
	
	public Long getUserLogado(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		
		String usuarioLogado = (String) session.getAttribute("usuario");
		
		return daoUsuarioRepository.consultarUsuarioLogado(usuarioLogado).getId();
	}
	
	public ModelLogin getUserLogadoObject(HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();

		String usuarioLogado = (String) session.getAttribute("usuario");

		return daoUsuarioRepository.consultarUsuarioLogado(usuarioLogado);
	}

}