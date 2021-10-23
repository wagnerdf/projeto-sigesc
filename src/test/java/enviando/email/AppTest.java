package enviando.email;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import br.sigesc.email.ObjetoEnviarEmail;



public class AppTest {
	
	
	@org.junit.Test
	public void testeEmail() throws Exception {
		
		StringBuilder stringBuilderTextoEmail = new StringBuilder();
		
		stringBuilderTextoEmail.append("Olá, <br/><br/>");
		stringBuilderTextoEmail.append("Você esta recebendo o acesso ao portal SIGESC.<br/><br/>");
		stringBuilderTextoEmail.append("Para ter acesso clique no botão abaixo.<br/><br/>");
		
		stringBuilderTextoEmail.append("<b>Login:</b> wagnerandrade_df@hotmail.com<br/>");
		stringBuilderTextoEmail.append("<b>Senha:</b> 5165bsb<br/><br/><br/>");
		
		stringBuilderTextoEmail.append("<a target=\"_blank\" href=\"http://globo.com\" style=\"color:#2525a7; padding: 14px 25px; text-align:center; text-decoration: none; display:inline-block; border-radius:30px; font-size:20px; font-family:courier; border : 3px solid green; background-color:#99DA39;\">Acesso Portal SIGESC</a><br/><br/>");
		
		stringBuilderTextoEmail.append("<span style=\"font-size:12px\">Ass.: Wagner A. Andrade - Admin</span>");
		
		ObjetoEnviarEmail enviarEmail = 
				new ObjetoEnviarEmail("wagner.lorddf@gmail.com", 
										"SIGESC - Portal", 
										"Testando e-mail com Java", 
										stringBuilderTextoEmail.toString());
				
		enviarEmail.enviarEmailAnexo(true);/*Habilitado como true o texto vai em formato html*/		
				
				
		/*Caso o email não esteja sendo enviado então
		 * coloque um tempo de espera, mais isso só pode
		 * ser usado para testes.*/
		
		Thread.sleep(5000);
		
	
		
	}
	
	

}
