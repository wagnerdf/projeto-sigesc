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
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
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
		
		daoUsuarioRepository.gravarUsuario(modelLogin);
		
		request.setAttribute("msg", "Operação realizada com sucesso!");
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







