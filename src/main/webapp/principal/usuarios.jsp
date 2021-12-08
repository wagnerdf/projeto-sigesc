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



					<h6 align="center" class="sub-title">Cadastro de Usuário</h6>

					<form class="form-material"	enctype="multipart/form-data" action="<%=request.getContextPath()%>/ServLetUsuarioController"	method="post" id="formUser" autocomplete="off">
					
							<input type="hidden" name="acao" id="acao" value="">
						
					<table class="w-100 p-4">
					<tr>	
						<td width="33%">	
							<div class="form-group form-control-sm linhahorizontal ">									
									<div class="form-floating"> 
									 <input type="text" name="id" id="id" class="form-control form-control-sm"  readonly="readonly" value="${modolLogin.id}">
									  <label for="floatingInput">ID:</label>
									</div>
							</div>
							
							<div class="form-group form-default linhahorizontal form-control-md">
							<div class="form-floating">
							  <input type="text" name="nome" class="form-control inputstl" id="nome" placeholder="Seu nome aqui" required="required"  value="${modolLogin.nome}">
							  <label for="floatingInput">Nome:</label>
							</div>
							</div>
							
							<div>
								<div align="center">
									<label for="floatingInput linhahorizontal"><b>Sexo: </b></label>
									
									<input type="radio" name="sexo" checked="checked" value="MASCULINO"<%
								
										ModelLogin modelLogin = (ModelLogin) request.getAttribute("modolLogin");
									
										if (modelLogin != null && modelLogin.getSexo().equals("MASCULINO")){
											out.print(" ");
												out.print("checked=\"checked\"");
											out.print(" ");
										}
										
								%>>Masculino</>
								<input type="radio" name="sexo" value="FEMININO"<% 
									
										modelLogin = (ModelLogin) request.getAttribute("modolLogin");
									
										if (modelLogin != null && modelLogin.getSexo().equals("FEMININO")){
											out.print(" ");
												out.print("checked=\"checked\"");
											out.print(" ");
										}
										
								%>>Feminino</>
									
								</div>
								
							
							</div>
							<div class="linhahorizontal">
							<div class="form-floating">
								<select class="form-control inputstl" required="required" name="perfil">
									<option disabled="disabled">[Selecione o Perfil]</option>
									
									<option value="ADMIN" <%
									
									modelLogin = (ModelLogin) request.getAttribute("modolLogin");
									
									if (modelLogin != null && modelLogin.getPerfil().equals("ADMIN")){
										out.print(" ");
											out.print("selected=\"selected\"");
										out.print(" ");
									} %> >Admin</option>
									
									<option value="SINDICO" <% 
									
									modelLogin = (ModelLogin) request.getAttribute("modolLogin");
									
									if (modelLogin != null && modelLogin.getPerfil().equals("SINDICO")){
										out.print(" ");
											out.print("selected=\"selected\"");
										out.print(" ");
									} %>>Síndico</option>
									
									<option value="CONDOMINO" <%
									
									modelLogin = (ModelLogin) request.getAttribute("modolLogin");
									
									if (modelLogin != null && modelLogin.getPerfil().equals("CONDOMINO")){
										out.print(" ");
											out.print("selected=\"selected\"");
										out.print(" ");
									} %>>Condômino</option>
									<option value="INQUILINO" <% 
									
									modelLogin = (ModelLogin) request.getAttribute("modolLogin");
									
									if (modelLogin != null && modelLogin.getPerfil().equals("INQUILINO")){
										out.print(" ");
											out.print("selected=\"selected\"");
										out.print(" ");
									} %>>Inquilino</option>
								</select>
								<span class="form-bar"></span>
									<label class="float-label">Perfil:</label>
							</div>
							</div>
							
								<div class="form-group form-default linhahorizontal">				
								<div class="form-floating">
								<input type="email" name="email" id="email" class="form-control inputstl" required="required" placeholder="seu@email.com" autocomplete="off"  value="${modolLogin.email}">
								<label for="floatingInput">Email:</label>
								</div>
							</div>
							
						</td>	
						
						<td width="33%">	
							
							<div class="form-group form-default linhahorizontal">					
							     <div class="form-floating">
							     <input type="text" name="loginUser" class="form-control inputstl" id="loginUser" placeholder="Seu login aqui" autocomplete="off" required="required"  value="${modolLogin.login}">
								 <label for="floatingInput">Login:</label>
								 </div>
							</div>
							
							<div class="form-group form-default linhahorizontal">
								<div class="form-floating">
								<input type="password" name="senha" id="senha" class="form-control inputstl" required="required" placeholder="Sua senha aqui" autocomplete="new-password"  value="${modolLogin.senha}">
								<label for="floatingPassword">Senha:</label>
								</div>								
							</div>
							
							<div class="form-group form-defalt mb-4">
								<div class="input-group-prepend">
									<c:if test="${modolLogin.fotouser != '' && modolLogin.fotouser != null }">
										<a href="<%= request.getContextPath()%>/ServLetUsuarioController?acao=downLoadFoto&id=${modolLogin.id}">
										<img alt="Imagem User" id="fotoembase64" src="${modolLogin.fotouser}" width="110" height="130" hspace="15" vspace="5" border="3" class="aligncenter" >
										</a>
									</c:if>
									<c:if test="${modolLogin.fotouser == '' || modolLogin.fotouser == null }">
										<img alt="Imagem User" id="fotoembase64" src="assets/imgs/user/user.jpg" width="110" height="130" hspace="15" vspace="5" border="3" class="aligncenter">
									</c:if>
									
								</div>
								
								  	<input type="file" id="fileFoto" name="fileFoto" accept="image/*" value="Escolher imagem" onchange="visualizarImg('fotoembase64', 'fileFoto')" class="form-control-file" style="margin-top: 3px; margin-left: 10px">
						
							</div>
							
						</td>
						<td width="33%">
								<div class="form-group form-default linhahorizontal2 form-control-md">
									<div class="form-floating">
								  	<input onblur="pesquisaCep()" type="text" name="cep" class="form-control inputstl" id="cep" placeholder="Seu CEP aqui" required="required"  value="${modolLogin.cep}">
								  	<label for="floatingInput">Cep:</label>
								</div>
								</div>
								
								<div class="form-group form-default linhahorizontal2 form-control-md">
									<div class="form-floating">
								  	<input type="text" name="logradouro" class="form-control inputstl" id="logradouro" placeholder="Seu endereço aqui" required="required"  value="${modolLogin.logradouro}">
								  	<label for="floatingInput">Endereço:</label>
								</div>
								</div>
								
								<div class="form-group form-default linhahorizontal2 form-control-md">
									<div class="form-floating">
								  	<input type="text" name="numero" class="form-control inputstl" id="numero" placeholder="Seu número aqui" required="required"  value="${modolLogin.numero}">
								  	<label for="floatingInput">Número:</label>
								</div>
								</div>
								
								<div class="form-group form-default linhahorizontal2 form-control-md">
									<div class="form-floating">
								  	<input type="text" name="bairro" class="form-control inputstl" id="bairro" placeholder="Seu bairro aqui" required="required"  value="${modolLogin.bairro}">
								  	<label for="floatingInput">Bairro:</label>
								</div>
								</div>
								
								<table>
									<tr>
									<td width="75%">
										<div class="form-group form-default linhahorizontal2 form-control-md">
											<div class="form-floating">
										  	<input type="text" name="localidade" class="form-control inputstl" id="localidade" placeholder="Sua localidade aqui" required="required"  value="${modolLogin.localidade}">
										  	<label for="floatingInput">Localidade:</label>
										  	
										  	
										</div>
										</div>
									</td>
									<td>
										<div class="form-group form-default linhahorizontal2 form-control-md">
											<div class="form-floating">
										  	<input type="text" name="uf" class="form-control inputstl" id="uf" placeholder="Seu UF aqui" required="required"  value="${modolLogin.uf}">
										  	<label for="floatingInput">UF:</label>
										
										</div>
										</div>
									</td>
									</tr>
								</table>
						</td>
						
					</tr>		
					</table>			
							<div align="center" class="linhahorizontal">
								
								<button type="button" class="btn btn-primary waves-effect waves-light btn-sm" onclick="limparForm();">Novo</button>
								<button type="submit" class="btn btn-success waves-effect waves-light btn-sm">Salvar</button>
								<button type="button" class="btn btn-danger waves-effect waves-light btn-sm" onclick="deleteComAjax();">Excluir</button>
								<button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModalUsuario">Pesquisar</button>
	
							</div>
				
										
					</form>
						<div class="msg">
							<span id="msg">${msg}</span>
						</div>
					<div style="height: 340px; overflow: scroll;">
						<table class="table" id="tabelaresultadosView">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Nome</th>
									<th scope="col">Perfil</th>
									<th scope="col">Login</th>
									<th scope="col">Ver</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${modelLogins}" var="ml">
									<tr>
										<td><c:out value="${ml.id}"></c:out></td>
										<td><c:out value="${ml.nome}"></c:out></td>
										<td><c:out value="${ml.perfil}"></c:out></td>
										<td><c:out value="${ml.login}"></c:out></td>
										<td><a class="btn btn-primary waves-effect waves-light" href="<%=request.getContextPath()%>/ServLetUsuarioController?acao=buscarEditar&id=${ml.id}">Ver</a></td>
									</tr>
								</c:forEach>
							</tbody>

						</table>

					</div>

					<div align="right">
					<nav aria-label="Page navigation example">
					  <ul class="pagination">
						
						<%
							int totalPaginas = (int) request.getAttribute("totalPaginas");
							
							for(int p = 0; p < totalPaginas; p++){
								String url = request.getContextPath() + "/ServLetUsuarioController?acao=paginar&pagina=" + (p * 5);
								out.print("<li class=\"page-item\"><a class=\"page-link\" href=\""+ url +"\">"+(p + 1)+"</a></li>");
							}
						
						
						%>

					  </ul>
					</nav>
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
		
		<nav aria-label="Page navigation example">
		  <ul class="pagination" id="ulPaginacaoUserAjax">
		  
		  </ul>
		</nav>
		
		
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
	
	function buscaUserPagAjax(url){
		
		var urlAction = document.getElementById('formUser').action;
		var nomeBusca = document.getElementById('nomeBusca').value;
		
		$.ajax({
			
			method: "get",
			url : urlAction,
			data : url,
			success: function (response, textStatus, xhr){
				
			var json = JSON.parse(response);
			
			// console.info(json); /*informa internamente no navegador a lista (CONTROL+SHIFT+J) para mostrar*/
				
			$('#tabelaresultados > tbody > tr').remove();
			$("#ulPaginacaoUserAjax > li").remove();
			
			for(var p = 0; p < json.length; p++){
				
				$('#tabelaresultados > tbody').append('<tr> <td>'+json[p].id+'</td><td> '+json[p].nome+' </td> <td> <button onclick="verEditar('+json[p].id+')" type="button" class="btn btn-info">Ver</button> </td> </tr>');
			}
			
			document.getElementById('totalResultados').textContent = 'Resultados: ' + json.length;
			
				var totalPagina = xhr.getResponseHeader("totalPagina");
				
				for (var p = 0; p < totalPagina; p++){
										
					var url = 'nomeBusca='+ nomeBusca + '&acao=buscarUserAjaxPage&pagina='+ (p * 5);
					
					$("#ulPaginacaoUserAjax").append('<li class="page-item"><a class="page-link" href="#" onclick="buscaUserPagAjax(\''+url+'\')">'+ (p + 1) +'</a></li>');
				}
			
			}
			
		}).fail(function(xhr, status, errorThrown){
			alert('Erro ao buscar usuário por nome: '+ xhr.responseText);
			
		});
	}
	
	
	function buscarUsuario(){
		var nomeBusca = document.getElementById('nomeBusca').value;
		
		if(nomeBusca != null && nomeBusca != '' && nomeBusca.trim() != ''){/*Validando que tem que ter valor pra buscar no banco*/
			
			var urlAction = document.getElementById('formUser').action;
			
			$.ajax({
				
				method: "get",
				url : urlAction,
				data : "nomeBusca=" + nomeBusca + '&acao=buscarUserAjax',
				success: function (response, textStatus, xhr){
					
				var json = JSON.parse(response);
				
				// console.info(json); /*informa internamente no navegador a lista (CONTROL+SHIFT+J) para mostrar*/
					
				$('#tabelaresultados > tbody > tr').remove();
				$("#ulPaginacaoUserAjax > li").remove();
				
				for(var p = 0; p < json.length; p++){
					
					$('#tabelaresultados > tbody').append('<tr> <td>'+json[p].id+'</td><td> '+json[p].nome+' </td> <td> <button onclick="verEditar('+json[p].id+')" type="button" class="btn btn-info">Ver</button> </td> </tr>');
				}
				
				document.getElementById('totalResultados').textContent = 'Resultados: ' + json.length;
				
					var totalPagina = xhr.getResponseHeader("totalPagina");
					
					for (var p = 0; p < totalPagina; p++){
						
						var url = 'nomeBusca='+ nomeBusca + '&acao=buscarUserAjaxPage&pagina='+ (p * 5);
						
						
						$("#ulPaginacaoUserAjax").append('<li class="page-item"><a class="page-link" href="#" onclick="buscaUserPagAjax(\''+url+'\')">'+ (p + 1) +'</a></li>');
					}
				
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
	
	function visualizarImg(fotoembase64, filefoto){
		
		var preview = document.getElementById(fotoembase64);//campo IMG html
		var fileUser = document.getElementById(filefoto).files[0];
		var reader = new FileReader();
		
		reader.onloadend = function(){
			preview.src = reader.result; /*Carrega a foto na tela*/
		};
		
		if(fileUser){
			reader.readAsDataURL(fileUser); /*Preview da imagem*/
		}else{
			preview.src= '';
		}
		
	}
	
	function pesquisaCep(){
		var cep = $("#cep").val();
		
		$.getJSON("https://viacep.com.br/ws/"+ cep + "/json/?callback=?", function(dados){
			
		if(!("erro" in dados)){
				$("#cep").val(dados.cep);
				$("#logradouro").val(dados.logradouro);
				$("#bairro").val(dados.bairro);
				$("#localidade").val(dados.localidade);
				$("#uf").val(dados.uf);
								
			}//end if.
			else{
				//CEP pesquisado não foi encontrado
				alert("CEP não encontrado");
			}
		});
	}
	
</script>

</html>









