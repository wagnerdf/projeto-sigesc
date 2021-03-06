package br.sigesc.servlets;

import java.io.IOException;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;

import br.sigesc.dao.DAOEnqueteRepository;
import br.sigesc.model.ModelEnquete;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletEnquete")
public class ServletEnquete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private DAOEnqueteRepository daoEnqueteRepository = new DAOEnqueteRepository();
	
    public ServletEnquete() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String acao = request.getParameter("acao");
			
			if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarEnqueteAjax")) {
				
				String nomeBusca = request.getParameter("nomeBusca");
				
				
				List<ModelEnquete> dadosJsonUser = daoEnqueteRepository.consultaEnqueteList(nomeBusca);
				
				ObjectMapper mapper = new ObjectMapper();
				
				String json = mapper.writeValueAsString(dadosJsonUser);
								
				response.getWriter().write(json);
				
		}
			else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarEditarEnquete")) {
				String id = request.getParameter("id");
				ModelEnquete modelEnquete = daoEnqueteRepository.consultaEnqueteID(id); 
				
				request.setAttribute("msg", "Enquete em edição");
				request.setAttribute("modolEnquete", modelEnquete);
				request.getRequestDispatcher("principal/enquete.jsp").forward(request, response);
				
			}
			else if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletarenqueteajax")) {
				
				String idUser = request.getParameter("id");
				
				daoEnqueteRepository.deletarEnquete(idUser);
				
				response.getWriter().write("Excluido com sucesso!");
				
		}
			
		}catch(Exception e) {
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
		String pergunta = request.getParameter("pergunta");
		String q1 = request.getParameter("q1");
		String q2 = request.getParameter("q2");
		String q3 = request.getParameter("q3");
		String q4 = request.getParameter("q4");
		String r1 = request.getParameter("r1");
		String r2 = request.getParameter("r2");
		String r3 = request.getParameter("r3");
		String r4 = request.getParameter("r4");
		String id_usuario = request.getParameter("id_usuario");
		
		ModelEnquete modelEnquete = new ModelEnquete();
		
		modelEnquete.setId(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
		modelEnquete.setPergunta(pergunta);
		modelEnquete.setQ1(q1);
		modelEnquete.setQ2(q2);
		modelEnquete.setQ3(q3);
		modelEnquete.setQ4(q4);
		modelEnquete.setR1(Integer.parseInt(r1));
		modelEnquete.setR2(Integer.parseInt(r2));
		modelEnquete.setR3(Integer.parseInt(r3));
		modelEnquete.setR4(Integer.parseInt(r4));
		modelEnquete.setId_usuario(Long.parseLong(id_usuario));
		
		if (modelEnquete.isNovo()) {
			msg = "Gravado com sucesso!";
		}else {
			msg = "Atualizado com sucesso!";
		}	
		
		modelEnquete = daoEnqueteRepository.gravarEnquete(modelEnquete);
		
		request.setAttribute("msg", msg);
		request.setAttribute("modolEnquete", modelEnquete);
		request.getRequestDispatcher("principal/enquete.jsp").forward(request, response);
				
		}catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
		
	}

}
