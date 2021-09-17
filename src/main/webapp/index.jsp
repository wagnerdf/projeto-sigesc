<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


 		

<html>
<head>
	
	<link rel="stylesheet" type="text/css" href="principal/css/sigesc.css"/>



	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	

<title>SIGESC - Um Portal de Transparência e Gestão para Condomínios</title>
<style type="text/css">
<!--
body {
	background-color: #F8CEBA;
}

.style1 {
	font-size: 18px;
	font-weight: bold;
}

-->
</style>
</head>
<body>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p align="center">
		<img src="principal/imgs/sigesc03.jpg" width="336" height="136" />
	</p>
	<form action="<%=request.getContextPath() %>/serveletLogin" method="post" class="row g-3 needs-validation" novalidate>

<input type="hidden" value="<%=request.getParameter("url")%>" name="url">

	<div class="mb-3">	
		<label class="form-label" for="login">Login</label>
		<input class="form-control" id="login" name="login" type="text" required>
		<div class="invalid-feedback">
      			Obrigatório
    	</div>
    	<div class="valid-feedback">
      			OK
    	</div>
		
	</div>
	
	<div class="mb-3">
		<label class="form-label" for="senha">Senha</label>
		<input class="form-control" id="senha" name="senha" type="password" required>
		 <div class="invalid-feedback">
      			Obrigatório
    	</div>
    	 <div class="valid-feedback">
      			OK
    	</div>
	</div>	
	
		<input type="submit" value="Acessar" class="btn btn-primary">
	



</form>

<h5 class="msg">${msg}</h5>

 <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>


<script type="text/javascript">

//Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()

</script>
	
</body>
</html>