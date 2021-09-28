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

	
				<div class="w-100 p-3"><!----------------------------- Page-body start ------------------------->



					<h5 align="center" class="sub-title">Cadastro de Usuário</h5>

					<form class="form-material"	action="<%=request.getContextPath()%>/ServLetUsuarioController"	method="post" id="formUser">
					
						<input type="hidden" name="acao" id="acao" value="">
					
						<div class="form-group form-default">
								<label class="float-label">ID:</label>
								<input type="text" name="id" id="id" class="form-control" readonly="readonly" value="${modolLogin.id}">
								<span class="form-bar"></span>

						</div>
						<div class="form-group form-default">
							<label class="float-label">Nome:</label> 
							<input type="text"	name="nome" id="nome" class="form-control" required="required" value="${modolLogin.nome}"> 
							<span class="form-bar"></span>

						</div>
						<div class="form-group form-default">
							<label class="float-label">Email:</label> 
							<input type="email" name="email" id="email" class="form-control" required="required" autocomplete="off" value="${modolLogin.email}"> 
							<span class="form-bar"></span>

						</div>
						<div class="form-group form-default">
							<label class="float-label">login:</label> 
							<input type="text" name="login" id="login" class="form-control" required="required" autocomplete="off" value="${modolLogin.login}"> 
							<span class="form-bar"></span>

						</div>
						<div>
							<label class="float-label">Password:</label> 
							<input type="password" name="senha" id="senha" class="form-control"	required="required" autocomplete="off"	value="${modolLogin.senha}"> 
							<span class="form-bar"></span>
							<br />
						</div>
						<div align="center">
							<button type="button" class="btn btn-primary waves-effect waves-light" onclick="limparForm();">Novo</button>
							<button type="submit" class="btn btn-success waves-effect waves-light">Salvar</button>
							<button type="button" class="btn btn-danger waves-effect waves-light" onclick="criarDelete();">Excluir</button>
						<div>	
							<br>
							
						</div>	
						</div>
							
					</form>
						<h4 class="msg" align="center">${msg}</h4>



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
	
	function limparForm(){
		var elementos = document.getElementById("formUser").elements; /*Retorna os elementos html dentro do form*/
		
		for (p = 0; p < elementos.length; p++){
			elementos[p].value = '';
		}
	}
	
	function criarDelete(){
		document.getElementById("formUser").method = 'get';
		document.getElementById("acao").value = 'deletar';
		document.getElementById("formUser").submit();
	}
	
</script>

</html>