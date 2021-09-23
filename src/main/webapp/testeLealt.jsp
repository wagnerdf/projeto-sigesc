<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/sigesc.css" type="text/css"/>

</head>
<body>

	<div align="center">
	<TABLE border=1>

		<TR>
			<TD WIDTH=100>
			<div>
			<img src="<%=request.getContextPath()%>/assets/imgs/condominio.jpg" width="225" height="318">
			</div>
			</TD>
			<TD WIDTH=200>
			<div>
			<h4>
						<span class="style1">Enquete:</span>
					</h4>
					<br><h5>Como você usuário avalia o portal Sigesc 
					         adquirido para automatizar as operações realizadas diariamente no
							condomínio?</h5> 
							
					<input type="radio">Excelente<br>
				   	<input type="radio">Muito Bom<br>
				    <input type="radio">Bom<br>
					<input type="radio">Ruim<br> 
					<input type="submit" name="Votar" value="Votar"> 
					<input type="button" name="Resultado" value="Resultado">
					
			</div>
			</TD>
		</TR>
	</TABLE>
	</div>





	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>


<script type="text/javascript">

//Example starter JavaScript for disabling form submissions if there are invalid fields
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



</body>
</html>