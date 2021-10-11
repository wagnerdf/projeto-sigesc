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

<div>
<br>
<div id="info-texto">
<span class="info-texto-destaque">Opções de Temas</span>
</div>

<div class="w-auto p-2" align="center" id="info-texto">
 
  <select class="form-control form-control-sm" aria-label="Default select example" onchange="chooseStyle(this.value, 30)" >
  <optgroup label="Cores">
  <option class="padraoText" selected value="none">Padrão</option>
  <option class="azulText" value="blue-theme">Azul</option>
  <option class="verdeText" value="brown-theme">Verde</option>
  </optgroup> 	
</select>

</div>
</div>
