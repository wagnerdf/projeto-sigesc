package br.sigesc.servlets;


import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@WebServlet(urlPatterns = {"/principal/ServletCarregadorImagem", "/ServletCarregadorImagem" })
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 1,// 1 MB
		maxFileSize = 1024 * 1024 * 10,		//10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
)



public class ServletCarregadorImagem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 public ServletCarregadorImagem() {
	        
	    }
	
	 public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part filePart = request.getPart("file");
		String fileName = filePart.getSubmittedFileName();
		for(Part part : request.getParts()) {
			part.write("c:\\Temp\\"+ fileName);
		}
		String msg = "Arquivo salvo com sucesso";
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("/principal/principal.jsp").forward(request, response);
		
		
	}
}