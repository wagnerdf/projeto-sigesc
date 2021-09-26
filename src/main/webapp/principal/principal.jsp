<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
	
		<!-- Bootstrap CSS -->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"> 
		
	
	    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/sigesc01.css" />
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
												<br> <input type="radio">Excelente<br> <input
													type="radio">Muito Bom<br> <input type="radio">Bom<br>
												<input type="radio">Ruim<br> <br> <input
													type="submit" name="Votar" value="Votar"> <input
													type="button" name="Resultado" value="Resultado">
											</div>
									</div>
							</TD>
							</TR>
					</TABLE>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"	crossorigin="anonymous"></script>


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

	function time(){
		today = new Date();
		h = today.getHours();
		m = today.getMinutes();
		s = today.getSeconds();
		
		if(h<10){
			h="0"+h;
		}
		if(m<10){
			m="0"+m;
		}
		if(s<10){
			s="0"+s;
		}
		
		document.getElementById('txt').innerHTML = "<b>Hora: </b>"+ h + ":" + m + ":" + s;
		setTimeout('time()',500);
		}
	
</script>

</html>