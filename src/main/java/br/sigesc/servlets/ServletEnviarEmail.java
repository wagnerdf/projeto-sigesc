package br.sigesc.servlets;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/enviarEmail")
public class ServletEnviarEmail extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userName = "sigesc.portal@gmail.com";
		String senha = "testeteste";
		
		String listaDestinatario = req.getParameter("inputEmail");
		String nomeRemetente = req.getParameter("nome");
		nomeRemetente = "SIGESC - Portal (Usuario: "+nomeRemetente+")";
		String assuntoEmail = req.getParameter("inputTitulo");
		String textoEmail = req.getParameter("inputMensagem");

		
		try {
			enviarEmail(false, userName, senha, listaDestinatario, nomeRemetente, assuntoEmail, textoEmail);
		} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("msg", "Erro ao enviar à mensagem");
				req.getRequestDispatcher("principal/emailUsuarios.jsp").forward(req, resp);
		}

		req.setAttribute("msg", "Sua mensagem foi enviada");
		req.getRequestDispatcher("principal/emailUsuarios.jsp").forward(req, resp);
			
		
		
	}
	
	public void enviarEmail(boolean envioHtml, String userName, String senha, String listaDestinatario, String nomeRemetente, String assuntoEmail, String textoEmail) throws Exception {

		Properties properties = new Properties();

		properties.put("mail.smtp.ssl.trust", "*");
		properties.put("mail.smtp.auth", "true");/* Autorização */
		properties.put("mail.smtp.starttls", "true");/* Autenticação */
		properties.put("mail.smtp.host", "smtp.gmail.com");/* Servidor gmail Google */
		properties.put("mail.smtp.port", "465");/* Porta do servidor */
		properties.put("mail.smtp.socketFactory.port", "465"); /* Expecifica a porta a ser conectado pelo socket */
		properties.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");/* Classe socket de conexão ao SMTP */

		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {

				return new PasswordAuthentication(userName, senha);
			}
		});

		Address[] toUser = InternetAddress.parse(listaDestinatario);

		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress(userName, nomeRemetente));/* Quem esta enviando */
		message.setRecipients(Message.RecipientType.TO, toUser);/* Email de destino */
		message.setSubject(assuntoEmail);/* Assunto do e-mail */
		message.setText(textoEmail);

		if (envioHtml) {
			message.setContent(textoEmail, "text/html; charset=utf-8");
		} else {
			message.setText(textoEmail);
		}

		Transport.send(message);

	}
	
	
}
