<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<link rel="shortcut icon" type="imagex/png" href="<%=request.getContextPath()%>/assets/imgs/sigesc.ico">
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
	
	<body id="corpo">
		<div id="geral"> <!-- 0 -->
			<br>
    	  	<div id="topo"><%@ include file="/principal/topo.jsp" %></div> <!-- 1 -->
    	  	<div id="menu"><%@ include file="/principal/menu.jsp" %></div> <!-- 2 -->
      		
      		<div id="conteudo">
				<div id="esquerda"> <!-- 3 -->
					<div id="info"><%@ include file="/principal/info.jsp" %></div> <!-- 7 -->
					</div>
		
			<div id="sub-conteudo">

	
				<div class="w-100 p-2" id="menu-vertical"><!----------------------------- Page-body start ------------------------->

					<h6 align="center" class="sub-title">Cad. Telefone</h6>

					<form class="form-material"	action="<%=request.getContextPath()%>/ServletTelefone"	method="post" id="formFone" autocomplete="off">
					
					<table class="w-100 p-4">
							<tr>
								<td width="33%">
									<div class="form-group form-control-sm linhahorizontal ">
										<div class="form-floating">
											<input type="text" name="id" id="id"
												class="form-control form-control-sm" readonly="readonly"
												value="${modelLogin.id}"> <label for="floatingInput">ID
												User:</label>
										</div>
									</div>

									<div class="form-group form-default linhahorizontal">
										<div class="form-floating">
											<input readonly="readonly" type="text" name="nome" class="form-control inputstl"
												id="nome" placeholder="Seu nome aqui" required="required"
												value="${modelLogin.nome}"> <label
												for="floatingInput">Nome:</label>
										</div>
									</div>
									
									<div class="form-group form-default linhahorizontal">
										<div class="form-floating">
											<input type="text" name="numero" class="form-control inputstl"
												id="numero" placeholder="Seu nome aqui" required="required"> <label
												for="floatingInput">Numero:</label>
										</div>
									</div>

								</td>
							</tr>
						</table>
						
						<div align="center">
						<br/>
							<button type="submit" class="btn btn-success waves-effect waves-light">Salvar</button>
						</div>
					</form>
					<br/>
						<div class="msg">
							<span id="msg">${msg}</span>
						</div>
						
										<div style="height: 340px; overflow: scroll;">
						<table class="table" id="tabelaresultadosView">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Numero</th>
									<th scope="col">Excluir</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${modelTelefones}" var="f">
									<tr>
										<td><c:out value="${f.id}"></c:out></td>
										<td><c:out value="${f.numero}"></c:out></td>
										<td><a class="btn btn-danger waves-effect waves-light" href="<%=request.getContextPath()%>/ServletTelefone?acao=excluir&id=${f.id}&userpai=${modelLogin.id}">Excluir</a></td>
									</tr>
								</c:forEach>
							</tbody>

						</table>

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

	function time(){
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		
		if(h<10){
			h="0"+h;
		}
		if(m<10){
			m="0"+m;
		}
		if(s<10){
			s="0"+s;
		}
		
		var tempo_total = "<b>Hora: </b>"+ h + ":" + m + ":" + s;
		var tempo = window.document.getElementById('txt');
		tempo.innerHTML = tempo_total;
	}
	setInterval(time,500)
	
	
	
	/*
	 * Função para limpar mensagens do sistema apos 5 segundos
	 */
	window.onload = function() {
	    setTimeout(function(){
	       var e = "msg"; 

	        var o = document.getElementsByClassName(e);                 

	        o[0].style.display = 'none';
	        
	    }, 5000); 
	};	
	
	$("#numero").keypress(function (event){
		return /\d/.test(String.fromCharCode(event.keyCode));
	});
	
</script>
</body>
</html>









