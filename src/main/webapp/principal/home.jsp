<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
	<head>
		<title>SIGESC</title>
	</head>
	
<body>
	<form>
	
	<div id="info-texto">
	<h4>Seja bem-vindo: <%= session.getAttribute("usuario")%></h4>	
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
			<h4>
			
						<span class="style1">Enquete:</span>
					</h4>
					
					<div>
					<br><h5>Como você usuário avalia o portal Sigesc 
					         adquirido para automatizar as operações realizadas diariamente no
							condomínio?</h5> 
					<br>		
					<input type="radio">Excelente<br>
				   	<input type="radio">Muito Bom<br>
				    <input type="radio">Bom<br>
					<input type="radio">Ruim<br> 
					<br>
					<input type="submit" name="Votar" value="Votar"> 
					<input type="button" name="Resultado" value="Resultado">
					</div>
			</div>
			</TD>
		</TR>
	</TABLE>
	</div>


	</form>
</body>
</html>