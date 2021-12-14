<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

	<head>
		<link rel="shortcut icon" type="imagex/png" href="<%=request.getContextPath()%>/assets/imgs/sigesc.ico">
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



					<h6 align="center" class="sub-title">Enquete</h6>

					<form class="form-material" action="<%=request.getContextPath()%>/ServletEnquete"	method="post" id="formEnquete">
					
						<input type="hidden" name="acao" id="acao" value="">
						
											
						<table class="w-100 p-3">	
						<tr>
							<td>
								<br>
								
								<div class="form-group form-control-sm">
								<div class="form-floating">
								 <input type="text" name="id" id="id" class="form-control form-control-sm"  readOnly="readOnly" value="${modolEnquete.id}">
								 <label for="floatingInput">ID:</label>
								</div>
								</div>
								
								<br>
								<div class="mb-3">
								<label for="exampleFormControlTextarea1" class="form-label">Descreva uma questão para a enquete.</label>
								<textarea name="pergunta" class="form-control" id="pergunta" rows="5" autofocus required="required">${modolEnquete.pergunta}</textarea>
								</div>
								<br>
								<div class="msg">
								<span id="msg">${msg}</span>
								</div>
								
								
								
							
							
							</td>
							<td><div><h1>&nbsp;</h1></div></td>
							<td>
							
							
							<br>
							<div class="form-group form-default">
							<div class="form-floating">
							  <input type="text" name="q1" class="form-control inputstl" id="q1" placeholder="Informe a opção 1" required="required"  value="${modolEnquete.q1}">
							  <label for="floatingInput">1ª Opção:</label>
							</div>
							</div>
							
							
							<br>
							<div class="form-group form-default">
							<div class="form-floating">
							  <input type="text" name="q2" class="form-control inputstl" id="q2" placeholder="Informe a opção 2" autocomplete="off" required="required"  value="${modolEnquete.q2}">
							  <label for="floatingInput">2ª Opção:</label>
							</div>
							</div>
							
							<div class="form-check form-switch">
							  <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault3" onclick="habilitarq3(this.checked)">
							  <label class="form-check-label" for="flexSwitchCheckDefault">Adicionar 3ª Opção:</label>
							</div>
							
							<div class="form-group form-default">
							<div class="form-floating">
							  <input type="text" name="q3" class="form-control inputstl" id="q3" readOnly="readOnly" placeholder="Informe a opção 3" autocomplete="off" required="required"  value="${modolEnquete.q3}">
							  <label for="floatingInput">3ª Opção:</label>
							</div>
							</div>
								
							<div class="form-check form-switch">
							  <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault4" onclick="habilitarq4(this.checked)">
							  <label class="form-check-label" for="flexSwitchCheckDefault" >Adicionar 4ª Opção:</label>
							</div>	
								
							<div class="form-group form-default">
							<div class="form-floating">
							  <input type="text" name="q4" class="form-control inputstl" id="q4" readOnly="readOnly" placeholder="Informe a opção 4" autocomplete="off" required="required" value="${modolEnquete.q4}">
							  <label for="floatingInput">4ª Opção:</label>
							</div>
							</div>					
		
							<input type="hidden" name="r1" id="r1" value="0" value="${modolEnquete.r1}">
							<input type="hidden" name="r2" id="r2" value="0" value="${modolEnquete.r2}">
							<input type="hidden" name="r3" id="r3" value="0" value="${modolEnquete.r3}">
							<input type="hidden" name="r4" id="r4" value="0" value="${modolEnquete.r4}">
							
							<input type="hidden" name="id_usuario" id="id_usuario" value="<%= session.getAttribute("idUser")%>" value="${modolEnquete.id_usuario}">
							
							
							

					
							
							</td>
						
						
						</tr>
						</table>
						
						
						
										
							
							
						
						<h6>&nbsp;</h6>	
						<div align="center" >
							
							<button type="button" class="btn btn-primary waves-effect waves-light" onclick="limparForm();">Novo</button>
							<button type="submit" class="btn btn-success waves-effect waves-light">Salvar</button>
							<button type="button" class="btn btn-danger waves-effect waves-light" onclick="deleteEnqueteComAjax();">Excluir</button>
							<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModalEnquete">Pesquisar</button>

						</div>
							
										
					</form>
						



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



<!-- Modal -->
<div class="modal fade" id="exampleModalEnquete" tabindex="-1" aria-labelledby="exampleModalEnquete" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalEnquete">Pesquisa de Enquete</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Texto" aria-label="Texto" id="nomeBusca" aria-describedby="button-addon2">
						
				<button class="btn btn-primary waves-effect waves-light" type="button" id="button-addon2" onclick="buscarEnquete();">Buscar</button>
			</div>
		<div style="height: 300px;overflow: scroll;">
			<table class="table" id="tabelaresultados">
			  <thead>
			    <tr>
			      <th scope="col">ID</th>
			      <th scope="col">Texto</th>
			      <th scope="col">Ver</th>
			    </tr>
			  </thead>
			  
			  <tbody>
			  </tbody>
			  
			</table>
			
		</div>
		<span id="totalResultados"></span>
			</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
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
	
	function limparForm(){
		var elementos = document.getElementById("formEnquete").elements; /*Retorna os elementos html dentro do form*/
		
		for (p = 0; p < elementos.length; p++){
			elementos[p].value = '';
		}
		
		document.getElementById('r1').value = "0";
		document.getElementById('r2').value = "0";
		document.getElementById('r3').value = "0";
		document.getElementById('r4').value = "0";
		document.getElementById('id_usuario').value = "<%= session.getAttribute("idUser")%>";

		
		document.getElementById('msg').textContent = "Campos limpos";
	}
	 
	
		
	function habilitarq3(selecionado) {
		
		if(document.getElementById('flexSwitchCheckDefault3').checked != false || document.getElementById('flexSwitchCheckDefault3').checked != true && document.getElementById('flexSwitchCheckDefault4').checked != true){
	    
			if(document.getElementById('q3').checked != selecionado){
				
				document.getElementById('q3').readOnly = false;
				
	
			}
			else{
				document.getElementById('q3').checked = false;
				document.getElementById('q3').readOnly = true;
				document.getElementById('q3').value = "";
	
			}
		
		}else{
			alert("Seleção não permitida, opção 3ª e 4ª serão desabilitadas");
			document.getElementById('flexSwitchCheckDefault4').checked = false;
			document.getElementById('q4').readOnly = true;
			document.getElementById('q4').value = "";
			document.getElementById('q3').readOnly = true;
			document.getElementById('q3').value = "";
		}
	}
	
	function habilitarq4(selecionado) {
		
		if(document.getElementById('flexSwitchCheckDefault3').checked != false){
		
	    
			if(document.getElementById('q4').checked != selecionado){
				
				document.getElementById('q4').readOnly = false;
	
			}
			else{
				document.getElementById('q4').checked = false;
				document.getElementById('q4').readOnly = true;
				document.getElementById('q4').value = "";
			}
		
		}else{
			
			alert("Seleção não permitida, habilite a 3ª opção para proceguir.");
			document.getElementById('flexSwitchCheckDefault4').checked = false;
			document.getElementById('q4').readOnly = true;
			document.getElementById('q4').value = "";
		}
	}
	
	function buscarEnquete(){
		var nomeBusca = document.getElementById('nomeBusca').value;
		if(nomeBusca != null && nomeBusca != '' && nomeBusca.trim() != ''){/*Validando que tem que ter valor pra buscar no banco*/
		
			var urlAction = document.getElementById('formEnquete').action;
			
			$.ajax({
				
				method: "get",
				url : urlAction,
				data : "nomeBusca=" + nomeBusca + '&acao=buscarEnqueteAjax',
				success: function (response){
					
				var json = JSON.parse(response);
				
				$('#tabelaresultados > tbody > tr').remove;
				
				
					for(var p = 0; p <json.length; p++){
						$('#tabelaresultados > tbody').append('<tr><td>'+json[p].id+'</td><td>'+json[p].pergunta+'</td><td><button onclick="verEditarEnquete('+json[p].id+')" type="button" class="btn btn-info">Ver</button></td></tr>')
						
					}
				  document.getElementById('totalResultados').textContent = 'Resultados: ' + json.length;
				}
				
			}).fail(function(xhr, status, errorThrown){
				alert('Erro ao buscar enquete por nome: '+ xhr.responseText);
				
			});
			
		}
	}
	
	function verEditarEnquete(id){
		
		var urlAction = document.getElementById('formEnquete').action;
		
		window.location.href = urlAction + '?acao=buscarEditarEnquete&id='+id;
	}
	
	function deleteEnqueteComAjax(){
		if(document.getElementById("id").value == ""){
			alert('Por favor, carregue uma enquete para deletar');
			document.getElementById("pergunta").focus();
			return false	
		}else{
			if(confirm("Deseja realmente excluir os dados?")){
				
				
				var urlAction = document.getElementById('formEnquete').action;
				var idUser = document.getElementById('id').value;
				
				$.ajax({
				
				method: "get",
				url : urlAction,
				data : "id=" + idUser + '&acao=deletarenqueteajax',
				success: function (response){
					
					limparForm();
					document.getElementById('msg').textContent = response;
				}
				
				}).fail(function(xhr, status, errorThrown){
					alert('Erro ao deletar usuário por id: '+ xhr.responseText);
					
				});
				
			}
		}
	}
	
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

</script>
</body>
</html>









