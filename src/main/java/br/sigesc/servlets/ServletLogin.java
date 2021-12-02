package br.sigesc.servlets;

import java.io.IOException;

import br.sigesc.dao.DAOLoginRepository;
import br.sigesc.dao.DAOUsuarioRepository;
import br.sigesc.model.ModelLogin;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




@WebServlet(urlPatterns = {"/principal/ServletLogin", "/ServletLogin"})/*Mapeamento de URL que vem da tela*/
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private DAOLoginRepository daoLoginRepository = new DAOLoginRepository();
	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();

    
    public ServletLogin() {
        
    }

	/*Recebe os dados pela URL em parametros*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		
		if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("logout")) {
			request.getSession().invalidate();//invalida a sessão
			RequestDispatcher redirecionar = request.getRequestDispatcher("/index.jsp");
			redirecionar.forward(request, response);
		}else {
		
			doPost(request, response);
			
		}
		
		
	}

	/*Recebe os dados enviados por um formulário*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String url = request.getParameter("url");
		String id_usuario;// = request.getParameter("idUser");
		//String nome_Foto = request.getParameter("nomeFoto");
		
			
		try {
		
			if (login != null && !login.isEmpty() && senha != null && !senha.isEmpty()) {
				
				ModelLogin modelLogin = new ModelLogin();
				modelLogin.setLogin(login);
				modelLogin.setSenha(senha);	
				
				if (daoLoginRepository.validarAutenticacao(modelLogin)) { /*Simulando login*/
					
					modelLogin = daoUsuarioRepository.consultarUsuarioLogado(login);
					
					request.getSession().setAttribute("usuario", modelLogin.getLogin());
					request.getSession().setAttribute("isAdmin", modelLogin.getUseradmin());
															
					if(url == null || url.equals("null")) {
						url = "principal/principal.jsp";
						
						ModelLogin modelId = new ModelLogin();
						id_usuario = login;
						modelId.setLogin(id_usuario);
						
						
						daoLoginRepository.pesquisarIdUsuario(modelId);
						
						request.getSession().setAttribute("nomeFoto", modelId.getNome_foto());
						request.getSession().setAttribute("idUser", modelId.getId());
						
						
					   
			}
					
					
					RequestDispatcher redirecionar = request.getRequestDispatcher(url);
					redirecionar.forward(request, response);
					
					
				}else {
					RequestDispatcher redirecionar = request.getRequestDispatcher("/index.jsp");
					request.setAttribute("msg", "Informe o login e senha corretamente!");
					redirecionar.forward(request, response);
				}
				
			}else {
			
				RequestDispatcher redirecionar = request.getRequestDispatcher("index.jsp");
				request.setAttribute("msg", "Informe o login e senha corretamente!");
				redirecionar.forward(request, response);
				
			}

		}catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
	}

}
