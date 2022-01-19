package br.sigesc.servlets;


import java.io.File;
import java.io.IOException;

import br.sigesc.dao.DAOUsuarioRepository;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;  


@WebServlet(urlPatterns = {"/principal/ServletCarregadorImagem", "/ServletCarregadorImagem" })
@MultipartConfig( // indica que o formulário é multipart
		fileSizeThreshold = 1024 * 1024 * 1,// 1 MB
		maxFileSize = 1024 * 1024 * 3,		//3 MB
		maxRequestSize = 1024 * 1024 * 6 // 6 MB
)

public class ServletCarregadorImagem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 public ServletCarregadorImagem() {
	        
	    }
	
	 public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// obtendo o arquivo, semelhante ao getParameter
		Part filePart = request.getPart("file"); /*variável para armazena o arquivo enviado via formulário.*/
		String id_user = request.getParameter("id_usuario");
		String login_user = request.getParameter("usuario");
		String nomeCompletoArquivo = filePart.getSubmittedFileName();
		String extencaoArquivo = nomeCompletoArquivo.substring(nomeCompletoArquivo.length()-3);
		
		
		// salvando na pasta do servidor
		String msg = "Imagem salva com sucesso";
		String path = request.getServletContext().getRealPath("/assets/imgs/user");
		
		
		String nome_foto = id_user+"-"+login_user+"."+extencaoArquivo; //obtendo nome para o arquivo com id e user do usuario e extenção do arquivo escolhido
		
		try {
			// for para encontrar o elemento "file" enviado pelo formulário
			for(Part part : request.getParts()) {
				if(part.getName().equals("file"))
					part.write(path+File.separator+nome_foto);
			}
			
			/*Salvando no banco*/
			DAOUsuarioRepository dao = new DAOUsuarioRepository();
			try {
				dao.inserirFotoUsuario(nome_foto, id_user);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
			msg = "Erro ao salvar o arquivo";
		}
		
		request.setAttribute("msg", msg);
		request.getSession().setAttribute("nomeFoto", nome_foto);
		
		request.getRequestDispatcher("/principal/principal.jsp").forward(request, response);
		
		
	}
}