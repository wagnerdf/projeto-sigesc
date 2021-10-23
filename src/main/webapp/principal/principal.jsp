<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
		<meta charset="ISO-8859-1">
	
		<!-- Bootstrap CSS -->
    	<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/bootstrap.min.css"> 
		
	
	    <link rel="stylesheet" media="screen" title="padrao-theme" type="text/css" href="<%= request.getContextPath() %>/assets/css/sigesc01.css" />
		<link rel="alternate stylesheet" type="text/css" media="screen" title="blue-theme" href="<%= request.getContextPath() %>/assets/css/sigesc02.css"/>
		<link rel="alternate stylesheet" type="text/css" media="screen" title="brown-theme" href="<%= request.getContextPath() %>/assets/css/sigesc03.css"/>
	    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/foo.css"/> <!-- Somente para exemplo. -->

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
		
						<div id="info-texto">
							<h6>Seja bem-vindo:	<%=session.getAttribute("usuario")%></h6>
						</div>
		
						<br>
		
						<div align="center">
						<TABLE>
		
							<TR>
							<TD WIDTH=50%>
										<div align="center">
											<img src="<%=request.getContextPath()%>/assets/imgs/condominio.jpg" width="225" height="318">
										</div>
							</TD>
							<TD WIDTH=50%>
									<div align="left">
										<h6><span class="style1">Enquete:</span></h6>
											<div>
												<br>
												<h6>Como você usuário avalia o portal Sigesc adquirido
													para automatizar as operações realizadas diariamente no
													condomínio?</h6>
												<br> 
												
												  	<div class="form-check">
													  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
													  <label class="form-check-label" for="flexRadioDefault1">Excelente</label>
													</div>
													<div class="form-check">
													  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
													  <label class="form-check-label" for="flexRadioDefault2">Muito bom</label>
													</div>
													<div class="form-check">
													  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
													  <label class="form-check-label" for="flexRadioDefault3">Bom</label>
													</div>
													<div class="form-check">
													  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault4">
													  <label class="form-check-label" for="flexRadioDefault4">Ruim</label>
													</div>
												
												<br>
												<br> 
												<button type="button" class="btn btn-primary" name="Votar" value="Votar">Votar</button>
												<button type="button" class="btn btn-warning" name="Resultado" value="Resultado">Resultado</button>
											</div>
									</div>
							</TD>
							</TR>
					</TABLE>
					
					<table>
						<tr>
						<td>
						<div>
							<br/>
							<br/>
							<br/>
							<div class="msg" align="center">
								
								<span id="msg">${msg}</span>
							</div>
						</div>	
						</td>
						</tr>
					</table>
					
					
				</div>
					

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


	
</script>

</html>