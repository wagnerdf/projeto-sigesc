<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
	Date data = new Date();
	SimpleDateFormat data_formatada = new SimpleDateFormat("dd/MM/yyyy");
	String mostra_data = data_formatada.format(data);
%>

<form style="width: 138px; height: 136px">
	<br>
	<div id="info-imagen">
  	<img src="<%= request.getContextPath() %>/assets/imgs/user/wagner.jpg" width="83" height="95" hspace="15" vspace="5" border="2" style="height: 120px; width: 108px" />
	</div>
</form>
<br>
<div id="info-texto">
	<span class="info-texto-destaque">Usuário: </span><%= session.getAttribute("usuario")%><br/>
	<span class="info-texto-destaque">Data: </span><%=mostra_data%><br/>
	<div id="txt"></div>	
</div>

<div id="info-opcoes-tema-escolha">
<span class="style1">Opções de Temas</span>
</div>

<div id="info-opcoes-tema-escolha" align="center">
<input type="radio" name="choice" value="none" onClick="chooseStyle(this.value, 30)" checked="checked"> Tema padrão<br>
<input type="radio" name="choice" value="blue-theme" onClick="chooseStyle(this.value, 30)"> Tema Azul<br>
<input type="radio" name="choice" value="brown-theme" onClick="chooseStyle(this.value, 30)"> Tema Verde<br>
</div>


