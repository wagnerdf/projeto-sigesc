<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		
		
						<div id="info-texto">
							<h6>Seja bem-vindo:	<%=session.getAttribute("usuario")%></h6>
						</div>
		
						<br>
						
						
								
						<div align="center">
						<TABLE>
		
							<tr>
							<td width="33%">
										<div align="center">
											<img src="<%=request.getContextPath()%>/assets/imgs/condominio.jpg" width="225" height="318">
										</div>
							</td>
							<td width="33%">
									<div align="center">
										<h6><span class="style1">Enquete:</span></h6>
											<div align="left" class="bordertransparent">
												<br>
												<h6>&nbsp&nbsp&nbspComo você usuário avalia o portal SIGESC adquirido
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
												<div align="center">
													<button type="button" class="btn btn-primary" name="Votar" value="Votar">Votar</button>
													<button type="button" class="btn btn-warning" name="grafico" value="grafico" onclick="gerarGrafico();">Gerar Gráfico</button>
												</div>
											</div>
									</div>
							</td>
							<td width="33%">
								
								<div style="width: 265px; height: 332px;" >

									<form class="form-material"	action="<%=request.getContextPath()%>/ServLetUsuarioController"	method="get" id="formUser">
										<div align="center">
										<h6><span class="style1">Calcular media salarial</span></h6>
										</div>
										<input type="hidden" id="acaoRelatorioImprimirTipo"	name="acao" value="imprimirRelatorioUser">

										<div class="form-row align-items-center row">
										
											<div class="col-sm-6 center">
												<label class="sr-only" for="dataInicial">Data Inicial</label> 
												<input value="${dataInicial}" class="form-control" id="dataInicial" name="dataInicial">
											</div>

											<div class="col-sm-6 center">
												<label class="sr-only" for="dataFinal">Data Final</label>
												
													<input value="${dataFinal}" type="text"	class="form-control" id="dataFinal" name="dataFinal">
												
											</div>

										</div>
										<div class="col-auto my-3" >
											
												<button type="button" onclick="gerarGrafico();"	class="btn btn-primary" style="display: block; margin: 0 auto;">Gerar Gráfico</button>
													
										</div>
									</form>
									<div>
										<canvas id="myChart"></canvas>
									</div>

								</div>
							
							</td>
							</tr>
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


<!-- Option 1: Bootstrap Bundle with Popper -->
	<script src="<%= request.getContextPath() %>/assets/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery-ui.js"></script>

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
	 * Função para limpar mensagens do sistema apos 5 segundos
	 */
	window.onload = function() {
	    setTimeout(function(){
	       var e = "msg"; 

	        var o = document.getElementsByClassName(e);                 

	        o[0].style.display = 'none';
	        
	    }, 5000); 
	};	

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
	
	function limparForm(){
		var elementos = document.getElementById("formUser").elements; /*Retorna os elementos html dentro do form*/
		
		for (p = 0; p < elementos.length; p++){
			elementos[p].value = '';
		}
		
	}
	
	var myChart = new Chart(document.getElementById('myChart'));
		  
	function gerarGrafico(){
		
		
		var urlAction = document.getElementById('formUser').action;
		var dataInicial = document.getElementById('dataInicial').value;
		var dataFinal = document.getElementById('dataFinal').value;
		
		$.ajax({
			
			method: "get",
			url : urlAction,
			data : "dataInicial=" + dataInicial + '&dataFinal=' + dataFinal + '&acao=graficoSalario',
			success: function (response){
				
				var json = JSON.parse(response);
				
				myChart.destroy();
			
				 myChart = new Chart(
						document.getElementById('myChart'),
						{
						  type: 'line',
						  data: {
							  labels: json.perfils,
							  datasets: [{
							    label: 'Gráfico média salarial por tipo',
							    backgroundColor: 'rgb(255, 99, 132)',
							    borderColor: 'rgb(255, 99, 132)',
							    data: json.salarios,
							  }]
							},
						  options: {}
						}
					);
			
			}
			
		}).fail(function(xhr, status, errorThrown){
			alert('Erro ao buscar dados para o grafico: '+ xhr.responseText);
			
		});

	}
	
	$(function() {
		 $( "#dataInicial").datepicker({
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
		 $( "#dataFinal").datepicker({
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
	
</script>
</body>
</html>