<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
	
		<!-- Bootstrap CSS -->
    	<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/bootstrap.min.css"> 
		
	
	    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/sigesc01.css" />
		<link rel="alternate stylesheet" type="text/css" media="screen" title="blue-theme" href="<%= request.getContextPath() %>/assets/css/sigesc02.css"/>
		<link rel="alternate stylesheet" type="text/css" media="screen" title="brown-theme" href="<%= request.getContextPath() %>/assets/css/sigesc03.css"/>
	    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/foo.css"/> <!-- Somente para exemplo. -->
	    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/sigesc.css" type="text/css"/>

		<script src="<%= request.getContextPath() %>/assets/js/styleswitch.js" type="text/javascript"> 
		
		
		/***********************************************
		* Style Sheet Switcher v1.1- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
		* This notice MUST stay intact for legal use
		* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
		***********************************************/
		</script>
 
		<script type="text/javascript"> 
		window.onload=function(){
		var formref=document.getElementById("switchform")
		indicateSelected(formref.choice)
		indicateSelected(formref.switchcontrol)
		}
		</script>
	
	
	
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
		<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/foo.css"/> <!-- Somente para exemplo. -->

		<title>SIGESC - Um Portal de Transparência e Gestão para Condomínios</title>
</head>
	
	<body id="corpo" onload="time()">
		<div id="geral"> <!-- 0 -->
			<br>
    	  	<div id="topo"><%@ include file="/principal/topo.jsp" %></div> <!-- 1 -->
    	  	<div id="menu"><%@ include file="/principal/menu.jsp" %></div> <!-- 2 -->
      		
      		<div id="conteudo">
				<div id="esquerda"> <!-- 3 -->
					<div id="info"><%@ include file="/principal/info.jsp" %></div> <!-- 7 -->
					</div>
		
			<div id="sub-conteudo">

	
				<div class="w-100 p-2" id="menu-vertical"><!------------- Page-body start ------------------------->

				<div >
						<div id="info-texto">
							<h6>Envio de mensagem por E-mail</h6>
						</div>
					<form class="form-material" action="<%=request.getContextPath()%>/enviarEmail" method="post" id="formEmail">	
					<table class="w-100 p-3">
					
						<tr>
							<td align="center">
							<img src="<%= request.getContextPath() %>/assets/imgs/email.gif" id="email"/>
							</td>
					
							<td>
								<div class="w-100 p-3">
									<div class="mb-3">
										<label for="exampleFormControlInput1" class="form-label">Endereço Email</label>
										<input type="email" class="form-control" name="inputEmail" placeholder="name@example.com" required="required">
									</div>
									<div class="mb-3">
										<label for="exampleFormControlInput1" class="form-label">Titulo da Mensagem</label>
										<input type="text" class="form-control" name="inputTitulo" required="required">
									</div>
									<div class="mb-3">
										<label for="exampleFormControlTextarea1" class="form-label">Digite sua mensagem</label>
										<textarea class="form-control" name="inputMensagem" rows="3" name='mensagem' required></textarea>	
									</div>
										 <input type="hidden" name="nome" id="nome" value="<%= session.getAttribute("usuario")%>">
								</div>
							</td>
					
								
						</tr>
						
					</table>
					<div align="center">
					<button type="submit" class="btn btn-primary" >Enviar</button>
					</div>
					
					</form>
					
					<br/>
						<div class="msg">
							<span id="msg">${msg}</span>
					</div>

					</div>

			</div><!------------------------------------ Page-body end --------------------------------------->

			</div>
			<!-- 4 -->	   
	      		
				<div id="direita"> <!-- 5 -->
					<div id="top-aniversarios"><%@ include file="/principal/topMensagens.jsp" %></div> <!-- 8 -->
					<div id="top-arquivos"><%@ include file="/principal/topArquivos.jsp" %></div> <!-- 9 -->
				</div>
			</div>
			
	      	<div id="rodape"><%@ include file="/principal/rodape.jsp" %></div> <!-- 6 -->
    	</div>
</body>



<!-- Option 1: Bootstrap Bundle with Popper -->
	<script src="<%= request.getContextPath() %>/assets/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery.min.js"></script>



<script type="text/javascript">

	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict';

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation');

	  // Loop over them and prevent submission
	  Array.prototype.slice.call(forms).forEach((form) => {
	    form.addEventListener('submit', (event) => {
	      if (!form.checkValidity()) {
	        event.preventDefault();
	        event.stopPropagation();
	      }
	      form.classList.add('was-validated');
	    }, false);
	  });
	})();

	/*
	 * Colocamos dentro de um evento window.onload para que comece a execução
	 * somente após a página inteira carregar.
	 */
	window.onload = function() {
	    setTimeout(function(){
	        // nome da classe do objeto que deseja manipular
	        var e = "msg"; 

	        // obtém o objeto pelo nome da classe
	        var o = document.getElementsByClassName(e);                 

	       /* 
	        * Define a visibilidade como "none". 
	        * Dá o mesmo efeito visual de como se estivesse removido.
	        * Note que getElementsByClassName retornará uma lista de nós(NodeList).
	        * Portanto, para acessar o elemento desejado, é necessário especificar 
	        * qual a chave onde ele se encontra. 
	        * No exemplo é obviamente a chave 0 (zero) pois é único.
	        */
	 
	        o[0].style.display = 'none';
	        
	    }, 5000); // O tempo em milisegundos. 1 segundo = 1000 milisegundos.
	};	
	
</script>

</html>









