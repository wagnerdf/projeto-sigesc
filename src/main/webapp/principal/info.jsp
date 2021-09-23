
<form style="width: 138px; height: 136px">
	<br>
	<div id="info-imagen">
  	<img src="<%= request.getContextPath() %>/assets/imgs/user/wagner.jpg" width="83" height="95" hspace="15" vspace="5" border="2" style="height: 120px; width: 108px" />
	</div>
</form>
<br>
<div id="info-texto">
	<span class="info-texto-destaque">Perfil</span>: Síndico<br/>
	<span class="info-texto-destaque">Cadastro</span>: 23/09/21	
</div>

<div id="info-opcoes-tema">
<span class="style1">Opções de Temas</span>
</div>

<div id="info-opcoes-tema-escolha" align="center">
<input type="radio" name="choice" value="none" onClick="chooseStyle(this.value, 30)" checked="checked">Tema padrão<br>
<input type="radio" name="choice" value="blue-theme" onClick="chooseStyle(this.value, 30)">Tema Azul<br>
<input type="radio" name="choice" value="brown-theme" onClick="chooseStyle(this.value, 30)">Tema Verde<br>
</div>


