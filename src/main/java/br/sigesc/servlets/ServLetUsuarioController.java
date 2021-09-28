package br.sigesc.servlets;

import java.io.IOException;

import br.sigesc.dao.DAOUsuarioRepository;
import br.sigesc.model.ModelLogin;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ServLetUsuarioController")
public class ServLetUsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();
	
   
    public ServLetUsuarioController() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String acao = request.getParameter("acao");
			
			if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletar")) {
				
				String idUser = request.getParameter("id");
				
				daoUsuarioRepository.deletarUser(idUser);
				
				request.setAttribute("msg", "Excluido com sucesso!");
				request.getRequestDispatcher("principal/usuarios.jsp").forward(request, response);
				
			}
			else if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletarajax")) {
					
					String idUser = request.getParameter("id");
					
					daoUsuarioRepository.deletarUser(idUser);
					
					request.setAttribute("msg", "Excluido com sucesso!");	
					
					response.getWriter().write("Excluido com sucesso!");
					
			}else {
				request.getRequestDispatcher("principal/usuarios.jsp").forward(request, response);
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
		String msg = "Operação realizada com sucesso!";	
			
		String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		ModelLogin modelLogin = new ModelLogin();
		
		modelLogin.setId(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
		modelLogin.setNome(nome);
		modelLogin.setEmail(email);
		modelLogin.setLogin(login);
		modelLogin.setSenha(senha);
		
		if (daoUsuarioRepository.validaLogin(modelLogin.getLogin()) && modelLogin.getId() == null) {
			msg = "Já existe usuário com o mesmo login, informa outro login;";
			
		}else {
			modelLogin = daoUsuarioRepository.gravarUsuario(modelLogin);
		}
		
		
		
		request.setAttribute("msg", msg);
		request.setAttribute("modolLogin", modelLogin);
		request.getRequestDispatcher("principal/usuarios.jsp").forward(request, response);
		
		}catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
	}

}







