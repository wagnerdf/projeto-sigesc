package br.sigesc.servlets;


import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FilenameUtils;
import org.apache.tomcat.jakartaee.commons.compress.utils.FileNameUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@WebServlet(urlPatterns = {"/principal/ServletCarregadorImagem", "/ServletCarregadorImagem" })
@MultipartConfig( // indica que o formulário é multipart
		fileSizeThreshold = 1024 * 1024 * 1,// 1 MB
		maxFileSize = 1024 * 1024 * 2,		//2 MB
		maxRequestSize = 1024 * 1024 * 3 // 3 MB
)

public class ServletCarregadorImagem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 public ServletCarregadorImagem() {
	        
	    }
	
	 public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// obtendo o arquivo, semelhante ao getParameter
		Part filePart = request.getPart("file");
		String id_user = request.getParameter("id_usuario");
		String login_user = request.getParameter("login");
		String nomeCompletoArquivo = filePart.getSubmittedFileName();
		String extencaoArquivo = FileNameUtils.getExtension(nomeCompletoArquivo);
		
		// salvando na pasta do servidor
		String msg = "Arquivo salvo com sucesso";
		String path = request.getServletContext().getRealPath("/assets/imgs/user");
		String nome = id_user+login_user+"."+extencaoArquivo; //obtendo nome para o arquivo com id e user do usuario e extenção do arquivo escolhido
	
		try {
			// for para encontrar o elemento "file" enviado pelo formulário
			for(Part part : request.getParts()) {
				if(part.getName().equals("file"))
					part.write(path+File.separator+nome);
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
			msg = "Erro ao salvar o arquivo";
		}
		
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("/principal/principal.jsp").forward(request, response);
		
		
	}
}