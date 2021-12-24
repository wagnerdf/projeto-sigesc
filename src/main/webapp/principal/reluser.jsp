<%@page import="br.sigesc.model.ModelLogin"%>
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
	    
	    <link rel="stylesheet" href="https://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />

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

	
				<div class="w-100 p-3" id="menu-vertical"><!----------------------------- Page-body start ------------------------->
					<div id="info-texto">
						<h6 align="center" class="sub-title">Relatório Usuário</h6>
					</div>
				
				
				
					
				<form class="form-material"	action="<%=request.getContextPath()%>/ServLetUsuarioController"	method="get" id="formUser" autocomplete="off">
						
						<input type="hidden" id="acaoRelatorioImprimirTipo" name="acao" value="imprimirRelatorioUser">
						
						<div class="form-row align-items-center row">
							
							<div class="col-sm-3 my-1">
								<label class="sr-only" for="dataInicial">Data Inicial</label> 
								<input value="${dataInicial}" class="form-control mb-3" id="dataInicial" name="dataInicial">
							</div>
							
							<div class="col-sm-3 my-1">
								<label class="sr-only" for="dataFinal">Data Final</label>
								<div class="input-group mb-3">
									<input value="${dataFinal}" type="text" class="form-control"	id="dataFinal" name="dataFinal">
								</div>
							</div>
		
							<div class="col-auto my-1">
								<button type="button" onclick="imprimirHtml();" class="btn btn-primary mb-1">Imprimir Relatório</button>
								<button type="button" onclick="imprimirPdf();" class="btn btn-primary mb-1">Imprimir PDF</button>
							</div>
							
						</div>
					</form>	
					
					<div style="height: 340px; overflow: scroll;">
						<table class="table" id="tabelaresultadosView">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Nome</th>
									<th scope="col">Perfil</th>
									<th scope="col">Login</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listaUser}" var="ml">
									<tr>
										<td><c:out value="${ml.id}"></c:out></td>
										<td><c:out value="${ml.nome}"></c:out></td>
										<td><c:out value="${ml.perfil}"></c:out></td>
										<td><c:out value="${ml.login}"></c:out></td>
									</tr>
									
									<c:forEach items="${ml.telefones}" var="fone">
										<tr>
											<td/>
												<td style="font-size: 10px"><c:out value="${fone.numero}"></c:out></td>
										</tr>
									</c:forEach>	
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

	<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery.maskMoney.js"></script>

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
	
	 $(function() {
		 $( "#dataInicial" ).datepicker({
			 dateFormat: 'dd/mm/yy',
			    dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
			    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
			    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
			    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
			    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
			    nextText: 'Próximo',
			    prevText: 'Anterior',
			    changeMonth: true,
		        changeYear: true,    
		 });
	 });
	 
	 $(function() {
		 $( "#dataFinal" ).datepicker({
			 dateFormat: 'dd/mm/yy',
			    dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
			    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
			    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
			    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
			    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
			    nextText: 'Próximo',
			    prevText: 'Anterior',
			    changeMonth: true,
		        changeYear: true,    
		 });
	 });
	
	 
	 function imprimirHtml(){
		 document.getElementById("acaoRelatorioImprimirTipo").value = 'imprimirRelatorioUser';
		 $("#formUser").submit();
	 }
	 
	 function imprimirPdf(){
		 document.getElementById("acaoRelatorioImprimirTipo").value = 'imprimirRelatorioPDF';
		 $("#formUser").submit(); 
		 return false;
	 }
	 
	 
</script>
</body>
</html>









