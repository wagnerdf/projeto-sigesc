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
	
	<body id="corpo" onload="time();">
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



					<h6 align="center" class="sub-title">Cadastro de Usuário</h6>

					<form class="form-material"	action="<%=request.getContextPath()%>/ServLetUsuarioController"	method="post" id="formUser" autocomplete="off">
					
						<input type="hidden" name="acao" id="acao" value="">
					
						<div class="form-group form-control-sm">
																
								<div class="form-floating">
								 <input type="text" name="id" id="id" class="form-control form-control-sm"  readonly="readonly" value="${modolLogin.id}">
								 <label for="floatingInput">ID:</label>
								</div>

						</div>
						<div class="form-group form-default">

						<div class="form-floating">
						  <input type="text" name="nome" class="form-control inputstl" id="nome" placeholder="Seu nome aqui" required="required"  value="${modolLogin.nome}">
						  <label for="floatingInput">Nome:</label>
						</div>

						</div>
						<div class="form-group form-default">
													
							<div class="form-floating">
							<input type="email" name="email" id="email" class="form-control inputstl" required="required" placeholder="seu@email.com" autocomplete="off"  value="${modolLogin.email}">
							<label for="floatingInput">Email</label>
							</div>
							

						</div>
						<div class="form-group form-default">
														
							<div class="form-floating">
							  <input type="text" name="login" class="form-control inputstl" id="login" placeholder="Seu login aqui" autocomplete="off" required="required"  value="${modolLogin.login}">
							  <label for="floatingInput">Login:</label>
							  
							</div>

						</div>
						<div>
							
						<div class="form-floating">
							<input type="password" name="senha" id="senha" class="form-control inputstl" required="required" placeholder="Sua senha aqui" autocomplete="new-password"  value="${modolLogin.senha}">
							<label for="floatingPassword">Senha:</label>
						</div>							
							
							
						</div>
						<h6>&nbsp;</h6>	
						<div align="center" >
							
							<button type="button" class="btn btn-primary waves-effect waves-light" onclick="limparForm();">Novo</button>
							<button type="submit" class="btn btn-success waves-effect waves-light">Salvar</button>
							<button type="button" class="btn btn-danger waves-effect waves-light" onclick="deleteComAjax();">Excluir</button>
							<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModalUsuario">Pesquisar</button>

						</div>
							<h6>&nbsp;</h6>	
										
					</form>
						<div class="msg">
							<span id="msg">${msg}</span>
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

<!-- Modal -->
<div class="modal fade" id="exampleModalUsuario" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Pesquisa de Usuário</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Nome" aria-label="nome" id="nomeBusca" aria-describedby="button-addon2">
						
				<button class="btn btn-primary waves-effect waves-light" type="button" id="button-addon2" onclick="buscarUsuario();">Buscar</button>
			</div>
		<div style="height: 300px;overflow: scroll;">
			<table class="table" id="tabelaresultados">
			  <thead>
			    <tr>
			      <th scope="col">ID</th>
			      <th scope="col">Nome</th>
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

<!-- End Modal -->

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
	
	function limparForm(){
		var elementos = document.getElementById("formUser").elements; /*Retorna os elementos html dentro do form*/
		
		for (p = 0; p < elementos.length; p++){
			elementos[p].value = '';
		}
		
	}
	 
	
	function criarDelete(){
		
		if(confirm('Deseja realmente excluir o Usuário?')){
		
		document.getElementById("formUser").method = 'get';
		document.getElementById("acao").value = 'deletar';
		document.getElementById("formUser").submit();
		}
	}
	
	function deleteComAjax(){
		
		if(document.getElementById("id").value == ""){
			alert('Por favor, carregue um usuario para deletar');
			document.getElementById("id").focus();
			return false	
		}else{
				if(confirm("Deseja realmente excluir os dados?")){
					
					
					var urlAction = document.getElementById('formUser').action;
					var idUser = document.getElementById('id').value;
					
					$.ajax({
						
						method: "get",
						url : urlAction,
						data : "id=" + idUser + '&acao=deletarajax',
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
	
	function buscarUsuario(){
		var nomeBusca = document.getElementById('nomeBusca').value;
		
		if(nomeBusca != null && nomeBusca != '' && nomeBusca.trim() != ''){/*Validando que tem que ter valor pra buscar no banco*/
			
			var urlAction = document.getElementById('formUser').action;
			
			$.ajax({
				
				method: "get",
				url : urlAction,
				data : "nomeBusca=" + nomeBusca + '&acao=buscarUserAjax',
				success: function (response){
					
				var json = JSON.parse(response);
				
				// console.info(json); /*informa internamente no navegador a lista (CONTROL+SHIFT+J) para mostrar*/
					
				$('#tabelaresultados > tbody > tr').remove();
				
				for(var p = 0; p < json.length; p++){
					
					$('#tabelaresultados > tbody').append('<tr> <td>'+json[p].id+'</td><td> '+json[p].nome+' </td> <td> <button onclick="verEditar('+json[p].id+')" type="button" class="btn btn-info">Ver</button> </td> </tr>');
				}
				
				document.getElementById('totalResultados').textContent = 'Resultados: ' + json.length;
				
				}
				
			}).fail(function(xhr, status, errorThrown){
				alert('Erro ao buscar usuário por nome: '+ xhr.responseText);
				
			});
			
		
		}
		
	}
	
	function verEditar(id){
		
		var urlAction = document.getElementById('formUser').action;
		
		window.location.href = urlAction + '?acao=buscarEditar&id='+id;
		  	
		
	}
	
</script>

</html>









