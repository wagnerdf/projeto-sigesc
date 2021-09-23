/*
	Constantes comuns utilizadas nos scripts
	Valores aqui DEVEM espelhar informações extraídas do PDS.
*/	
var MINUSCULAS	= "abcdefghijklmnopqrstuvwxyzáéíóúãõâêîôûàç";
var MAIUSCULAS	= MINUSCULAS.toUpperCase();
var NUMEROS		= "0123456789";
var ESPECIAIS	= " !$%*()-+=/\'\"\f\r\n.,<>:;?[]{}@";
var TECLAS_DE_CONTROLE = " 9 13 16 17 18 19 20 32 33 34 35 36 37 38 39 40 91 92 93 144 145 ";
var SEPARADOR	= "§";
var CONTEXT 	= "/mkt";

var mostra = false;

function mostraOculta(id, condicao){
	if (id != null && id != ""){
		if (condicao != null){
			if(condicao){
				mostra = true;
			}else{
				mostra = false;
			}
		}else{
			if(mostra){
				mostra = false;
			}else{
				mostra = true;
			}
		}
		document.getElementById(id).style.display = mostra ? '' : 'none';
	}
}

function imprimir() {
	window.print();
	window.close();
}

// Função.....: isAlfanumericoOuEspecial
// Objetivo...: Validar o conteúdo de um campo
// Entrada....: Valor a ser validado
// Exemplo....: isAlfanumericoOuEspecial(document.forms[0].campo.value);
// Autor......: Gustavo Rocha
// Scripts....:	validarCaracteres
function isAlfanumericoOuEspecial(valor) {
	return validarCaracteres(valor, MINUSCULAS + MAIUSCULAS + NUMEROS + ESPECIAIS);
}

// Função.....: isAlfanumerico
// Objetivo...: Validar o conteúdo de um campo
// Entrada....: Valor a ser validado
// Exemplo....: isAlfanumerico(document.forms[0].campo.value);
// Autor......: Gustavo Rocha
// Scripts....:	validarCaracteres
function isAlfanumerico(valor) {
	return validarCaracteres(valor, MINUSCULAS + MAIUSCULAS + NUMEROS);
}

// Função.....: isAlfanumericoOuEspaco
// Objetivo...: Validar o conteúdo de um campo
// Entrada....: Valor a ser validado
// Exemplo....: isAlfanumericoOuEspaco(document.forms[0].campo.value);
// Autor......: Gustavo Rocha
// Scripts....:	validarCaracteres
function isAlfanumericoOuEspaco(valor) {
	return validarCaracteres(valor, MINUSCULAS + MAIUSCULAS + NUMEROS + " ");
}

// Função.....: isAlfanumericoOuApostrofe
// Objetivo...: Validar o conteúdo de um campo
// Entrada....: Valor a ser validado
// Exemplo....: isAlfanumericoOuApostrofe(document.forms[0].campo.value);
// Autor......: Gustavo Rocha
// Scripts....:	validarCaracteres
function isAlfanumericoOuApostrofe(valor) {
	return validarCaracteres(valor, MINUSCULAS + MAIUSCULAS + NUMEROS + " \'");
}

// Função.....: isNumero
// Objetivo...: Validar o conteúdo de um campo
// Entrada....: Valor a ser validado
// Exemplo....: isNumero(document.forms[0].campo.value);
// Autor......: Gustavo Rocha
// Scripts....:	validarCaracteres
function isNumero(valor) {
	return validarCaracteres(valor, NUMEROS);
}

// Função.....: validarCaracteres
// Objetivo...: Verifica se existe no valor passado algum caractere diferente dos existentes no grupoCaracteres.
// Entrada....: valor  			 <- Valor a ser validado
//				grupoCaracteres  <- String contendo os caracteres aceitos pelo campo
// Retorno....: true - se não houverem, no valor, caracteres diferentes do grupo passado como parâmetro.
// Exemplo....: if (validarCaracteres(document.forms[0].campo.value))
// Autor......: Gustavo Rocha
function validarCaracteres(valor, grupoCaracteres) {
	for (var i = 0; i < valor.length; i++) {
		if (grupoCaracteres.indexOf(valor.charAt(i)) == -1) {
			return false;
		}
	}
	return true;
}

// Função.....: isVazio
// Objetivo...: Verificar se o valor passado é vazio, ou só tem espaços em branco.
// Entrada....: sString  <- String a ser analisada
// Exemplo....: alert(isVazio(" "));
// Autor......: Adriano Pamplona
// Alterado...: Rafael L. Sá
// Scripts....: Nenhum
function isVazio(sString)
{
	var regEspaco = /\s/g;
	sString = sString.replace(regEspaco, "");
	return (sString == "");
} 
 
// Função.....: completarComZerosEsquerda
// Objetivo...:	Completar com zeros a esquerda de uma string numérica.
// Entrada....: sString		<- Valor a ser formatado
//				iQtdCasas	<- Número que a string completa deve conter
// Exemplo....:	alert(completarComZerosEsquerda(22,4));
//				ou
//				alert(completarComZerosEsquerda("22",4));
// Alterado...:	Rafael L. Sá
// Scripts....: Nenhum
function completarComZerosEsquerda(sString, iQtdCasas)
{
	sString = sString.toString();
	while (sString.length < iQtdCasas)
	{
		sString = "0"+ sString;
	}
	return sString;
}

// Função.....: validarCNPJ
// Objetivo...: Retorna true se cnpj for válido e false se cnpj for inválido.
// Entrada....: strCNPJ	<- Uma string com o cnpj que será validado.
// Retorno....: true se cnpj válido ou false se cnpj inválido.
// Exemplo....: if (!validarCNPJ("11.111.111/1111-11")) alert("CNPJ inválido");
// Autor......: Desconhecido
function validarCNPJ(strCNPJ){
		
	if (strCNPJ == ""){
		return true;
	}

	x = strCNPJ;
	var temp = "";
	for(i=0;i<19;i++){
		if(x.substr(i,1) != "." && x.substr(i,1) != "/" && x.substr(i,1) != "-"){
			temp = temp + x.substr(i,1);
		}
	}
	strCNPJ = temp;
	
	if (isStringComRepeticaoRecursiva(strCNPJ)) {
		return false;
	}
	
	if (parseFloat(strCNPJ) > 0){
		var
			strDV = strCNPJ.substr(12, 2),
			intSoma,
			intDigito = 0,
			strControle = "",
			strMultiplicador = "543298765432";
		strCNPJ = strCNPJ.substr(0, 12);
		for(var j = 1; j <= 2; j++){
			intSoma = 0;
			for(var i = 0; i <= 11; i++){
				intSoma += (parseInt(strCNPJ.substr(i, 1), 10) * parseInt(strMultiplicador.substr(i, 1), 10))
			}
			if(j == 2){intSoma += (2 * intDigito)}
			intDigito = (intSoma * 10) % 11;
			if(intDigito == 10){intDigito = 0}
			strControle += intDigito.toString();
			strMultiplicador = "654329876543";
		}
		return(strControle == strDV);
	}
	else
		return false;
}

// Função.....: validarCPF
// Objetivo...: Verifica se o cpf digitado é Valido
// Entrada....: oObjeto	<- Campo de formulário a ser validado
// Exemplo....: if (!validarCPF("111.111.111-11")) alert("CPF inválido");
// Autor......: Adriano Pamplona
function validarCPF(cpf) {
	cpf = f_Replace(cpf, "[.-]", "");
	
	if (isStringComRepeticaoRecursiva(cpf)) {
		return false;
	}
	
	cpf1 = cpf.substr(0,9); //rcpf1
	cpf2 = cpf.substr(9,2); //rcpf2

    d1 = 0;
    for (i = 0; i < 9; i++) {
	    d1 += cpf1.charAt(i)*(10-i);
	}
    d1 = 11 - (d1 % 11);
    if (d1 > 9) {
    	d1 = 0;
    }
    if (cpf2.charAt(0) != d1){
		return false;
    }
    d1 *= 2;
    for (i = 0; i < 9; i++){
        d1 += cpf1.charAt(i) * (11 - i);
	}
    d1 = 11 - (d1 % 11);
    if (d1 > 9) {
    	d1 = 0;
    }
    if (cpf2.charAt(1) != d1){
		return false;
    }
    return true;
}

// Função.....: isStringComRepeticaoRecursiva
// Objetivo...: Verificar se a string passada como parâmetro possui todos os caracteres iguais.
// Exemplo....: isStringComRepeticaoRecursiva("1111111111111")
// Autor......: Gustavo Rocha
function isStringComRepeticaoRecursiva(string) {
	var retorno = true;
	if (string != null && string.length > 0) {
		var primeiroCaractere = string.charAt(0);
		for (i = 1; i < string.length; i++) {
			if (primeiroCaractere != string.charAt(i)) {
				retorno = false;
			}
		}
	} else {
		retorno = false;
	}
	return retorno;
}

// Função.....: bloquearTeclaMovimentacao
// Objetivo...: Bloquear as teclas de movimentação, setas, pagUp e home.
// Exemplo....: onkeyDown = bloquearTeclaMovimentacao;
// Autor......: Adriano Pamplona
function bloquearTeclaMovimentacao(){
	var sTeclaBloqueada = new String(" 33 36 37 38 39 40 ");
	var sTeclaCaptada = new String(" "+ event.keyCode +" ");
	if (sTeclaBloqueada.indexOf(sTeclaCaptada) != -1){
		event.keyCode = 0;
		return false;
	}
}

// função para validar limite de TEXTAREA
// retorn true/false ; mensagem ("Quantidade de caracteres superior a 100")
// EX.: limitarTextarea(form.campo,100)
function limitarTextarea(oObjeto, iQtdLetra) {
    var iQtdLetrasObj = oObjeto.value.length;
 	if (iQtdLetrasObj >= iQtdLetra)	{
		oObjeto.value = oObjeto.value.substr(0, iQtdLetra);
		
	}
}

// Função.....: isDataValida
// Objetivo...: Verificar se a o valor digitado é uma data válida.
// Entrada....: valor	<- Data a ser validada.
// Exemplo....: if (!isDataValida("30/02/2000")) alert("Data inválida");
function isDataValida(valor){
	var vDia, vMes, vAno, vNDia, vNMes, vNAno, vNData;

	if (valor.length==0){return true;}
	if (valor.length == 7){
		valor = "01/"+ valor;
	}
	if (valor.length!=10){return false;}
	if (valor.charAt(2) != "/" || valor.charAt(5) != "/"){
		return false;
	}
	vDia = valor.substr(0,2);
	vMes = valor.substr(3,2);
	vAno = valor.substr(6,4);
	vDia = parseInt(vDia, 10);
	vMes = parseInt(vMes, 10);
	vAno = parseInt(vAno, 10);

	vNData = new Date()
	vNData.setFullYear(vAno,vMes-1,vDia);
	vNDia = vNData.getDate();
	vNMes = vNData.getMonth()+1;
	vNAno = vNData.getFullYear();
	vNDia = parseInt(vNDia, 10);
	vNMes = parseInt(vNMes, 10);
	vNAno = parseInt(vNAno, 10);				
	return ((vDia==vNDia) && (vMes==vNMes) && (vAno==vNAno));
}

// Função.....: isHoraValida
// Objetivo...: Verifica se a hora digitada é Valida
// Entrada....: hora	<- Hora a ser validada.
// Exemplo....: if (!isHoraValida("18:00")) alert("Hora inválida");
// Autor......: Adriano Pamplona
function isHoraValida(hora){
	bHoraValida = true;
	if (hora != ""){
		if (hora.length != 5){
			bHoraValida = false;
		}
		hora = hora.split(":");
		if (hora[0] > 23 || hora[1] > 59){
			bHoraValida = false;
		}
	}
	return bHoraValida;
}

// Função.....: isEmailValido
// Objetivo...: Verificar se um e-mail é válido
// Entrada....: email - E-mail a ser verificado
// Retorno....: true - se o e-mail for válido
// Exemplo....: isEmailValido(email@a.ser.validado)
function isEmailValido(email) {	
	
	if (email.length < 5) {
		// Possui menos de 5 caracteres
		return false;
	}
	if (email.indexOf("@") == -1) {
		// Não possui "@"
		return false;
	}
	if (email.indexOf(".") == -1) {
		// Não possui "."
		return false;
	}
	if (email.indexOf(" ") != -1) {
		// Possui " "
		return false;
	}
	if (email.indexOf("@.") != -1) {
		// Possui "@."
		return false;
	}
	if (email.indexOf(".@") != -1) {
		// Possui ".@"
		return false;
	}
	if (email.indexOf("..") != -1) {
		// Possui ".."
		return false;
	}
	if (email.indexOf("@") == 0) {
		// Possui "@" na primeira posição
		return false;
	}
	if (email.indexOf(".") == 0) {
		// Possui "." na primeira posição
		return false;
	}
	if (email.indexOf("@") == email.length - 1) {
		// Possui "@" na última posição
		return false;
	}
	if (email.indexOf(".") == email.length - 1) {
		// Possui "." na última posição
		return false;
	}
	if (email.indexOf("@") != email.lastIndexOf("@")) {
		// Possui mais de uma "@"
		return false;
	}
	return true;
}

// Função.....: validarVariosEmails
// Objetivo...: Verificar se vários e-mails são válidos
// Entrada....: emails - E-mails a serem verificados separados por ";"
// Retorno....: true - se todos os e-mails forem válidos
// Exemplo....: validarVariosEmails(email@a.ser.validado1;email@a.ser.validado2;email@a.ser.validado3)
// Autor......: Gustavo Rocha
function validarVariosEmails(emails) {
	var emailsArray = emails.split(";");
	for (i = 0; i < emailsArray.length; i++) {
		if (!isEmailValido(emailsArray[i])) {
			return false;
		}
	}
	return true;
}

// Função.....: abrirPopup
// Objetivo...: Abrir uma página em uma janela separada.
// Entrada....: caminhoJsp - O caminho relativo da jsp a ser aberta
// Exemplo....: abrirPopup('jsp/manterdemanda/poupupSelecionarTipoDemanda.jsp');
// Autor......: Gustavo Rocha
function abrirPopup(caminhoJsp, largura, altura) {
	newwindow = window.open(caminhoJsp,'_blank','width=' + largura + ',height=' + altura + ',top=100,left=100,scrollbars=yes,resizable=no');
	if (window.focus) {newwindow.focus()}
	return false;

}

// Função.....: abrirPopupSemScrollbars
// Objetivo...: Abrir uma página em uma janela separada.
// Entrada....: caminhoJsp - O caminho relativo da jsp a ser aberta
// Exemplo....: abrirPopupSemScrollbars('jsp/manterdemanda/poupupSelecionarTipoDemanda.jsp');
// Autor......: Gustavo Rocha
function abrirPopupSemScrollbars(caminhoJsp, largura, altura) {
   	window.open(caminhoJsp,'_blank','width=' + largura + ',height=' + altura + ',top=100,left=100,scrollbars=no,resizable=no');
}

// Função.....: existeElementoSelecionado
// Objetivo...: Verificar se existe algum elemento selecionado em uma lista de checkbox ou radiobutton.
// Entrada....: objeto - Objeto do formulario que representa o array de checkbox ou radiobutton.
// Retorno....: true - se existir algum elemento selecionado.
// Exemplo....: if (existeElementoSelecionado(document.manterDemandaForm.codigoDependencia))
// Autor......: Gustavo Rocha
function existeElementoSelecionado(objeto) {
	if (objeto) {
		if (objeto.length == null) {
			if (objeto.checked) {				
				return true;
			}
		} else {
			for (var i = 0; i < objeto.length; i++) {			
				if (objeto[i].checked) {				
					return true;
				}
			}					
		}			
	}
	return false;
}

function replaceAll(str, from, to) {
    var idx = str.indexOf(from);

    while (idx > -1) {
        str = str.replace(from, to); 
        idx = str.indexOf(from);
    }

    return str;
}

	/**
	* Verifica se a data eh menor que a data atual.
	*/	
	function checkDateMenor(fieldStart){
		var vDia, vMes, vAno, vNDia, vNMes, vNAno;
		var dateStart = toDate(fieldStart.value);
		var dateEnd = new Date();

		if (fieldStart.value != "") {
			vDia = dateStart.getDate();
			if (vDia < 10){	vDia = '0' + vDia; }
			vMes = dateStart.getMonth()+1;
			if (vMes < 10){	vMes = '0' + vMes; }
			vAno = dateStart.getFullYear();
			var dataInformada = vAno +''+ vMes +''+ vDia;
		
			vNDia = dateEnd.getDate();
			if (vNDia < 10){ vNDia = '0' + vNDia; }
			vNMes = dateEnd.getMonth()+1;
			if (vNMes < 10){ vNMes = '0' + vNMes; }
			vNAno = dateEnd.getFullYear();
			var dataAtual = vNAno +''+ vNMes +''+ vNDia;

			if ( parseInt(dataInformada) < parseInt(dataAtual) ) {
				fieldStart.focus();
				fieldStart.select();
				return false;
			}
		}
		return true;
	}

	/**
	* Verifica se a data eh maior que a data atual.
	*/	
	function checkDateMaior(fieldStart){

		if (fieldStart.value != "") {
	
			var dateStart = toDate(fieldStart.value);
			var dateEnd = new Date();
		
			dateStart.setHours(0);
			dateStart.setMinutes(0);
			dateStart.setSeconds(0);
			dateEnd.setHours(0);
			dateEnd.setMinutes(0);
			dateEnd.setSeconds(0);

			if ( dateStart > dateEnd ) {
				fieldStart.focus();
				fieldStart.select();
				return false;
			}
		
			return true;
		}
		return true;
	}
		 
	
	/**
 	* Converte uma data no formato dd/MM/yyyy para um objeto Date
 	*/
	function toDate(txtDate) {
		var changeFormatDate = txtDate.substring(3, 5) 
			+ "/" + txtDate.substring(0, 2) 
			+ "/" + txtDate.substring(6, 10);
		return new Date(changeFormatDate);
	}

	/**
 	* Valida Campo CPF e CNPJ
 	*/
 	function validarCpfCnpj(numero) {
		var g1,g2,g3,g4,digito = "";
		if(numero.length <= 14){
			g1 = numero.substring(0,3); 
			g2 = numero.substring(4,7); 
			g3 = numero.substring(8,11); 	
			digito = numero.substring(12,14);
			numeroSemFormatacao = g1+g2+g3+digito;
			if (isStringComRepeticaoRecursiva(numeroSemFormatacao)) {
				return false;
			}
			numero1 = numeroSemFormatacao.substr(0,9); //rcpf1
			numero2 = numeroSemFormatacao.substr(9,2); //rcpf2
		    d1 = 0;
		   
		    for (i = 0; i < 9; i++) {
			    d1 += numero1.charAt(i)*(10-i);
			}
		    d1 = 11 - (d1 % 11);
		    if (d1 > 9) {
		    	d1 = 0;
		    }
		    if (numero2.charAt(0) != d1){
				return false;
		    }
		    d1 *= 2;
		    for (i = 0; i < 9; i++){
		        d1 += numero1.charAt(i) * (11 - i);
			}
		    d1 = 11 - (d1 % 11);
		    if (d1 > 9) {
		    	d1 = 0;
		    }
		    if (numero2.charAt(1) != d1){
				return false;
		    }
		    return true;
	   }else {
	   	   	if (numero == ""){
				return true;
			}
			x = numero;
			var temp = "";
			for(i=0;i<19;i++){
				if(x.substr(i,1) != "." && x.substr(i,1) != "/" && x.substr(i,1) != "-"){
					temp = temp + x.substr(i,1);
				}
			}
			numero = temp;
			if (isStringComRepeticaoRecursiva(numero)) {
				return false;
			}
			if (parseFloat(numero) > 0){
				var
					strDV = numero.substr(12, 2),
					intSoma,
					intDigito = 0,
					strControle = "",
					strMultiplicador = "543298765432";
				numero = numero.substr(0, 12);
				for(var j = 1; j <= 2; j++){
					intSoma = 0;
					for(var i = 0; i <= 11; i++){
						intSoma += (parseInt(numero.substr(i, 1), 10) * parseInt(strMultiplicador.substr(i, 1), 10))
					}
					if(j == 2){intSoma += (2 * intDigito)}
					intDigito = (intSoma * 10) % 11;
					if(intDigito == 10){intDigito = 0}
					strControle += intDigito.toString();
					strMultiplicador = "654329876543";
				}
				return(strControle == strDV);
			} else
				return false;
		}
	  	return true;
	}
	
	/**
 	* Função TRIM
 	** Retira os espeços em branco à direita e à esquerda de uma string
 	* 
 	* Uso: 'string'.trim()
 	*/
	String.prototype.trim = function() {
		return this.replace(/^\s+|\s+$/g,"");
	}
	
	/**
 	* Função LTRIM
 	* * Retira os espeços em branco à esquerda de uma string
 	* 
 	* Uso: 'string'.ltrim()
 	*/
	String.prototype.ltrim = function() {
		return this.replace(/^\s+/g,"");
	}
	
	/**
 	* Função RTRIM
 	* * Retira os espeços em branco à direita de uma string
 	* 
 	* Uso: 'string'.rtrim()
 	*/
	String.prototype.rtrim = function() {
		return this.replace(/\s+$/g,"");
	}
	
	function addLoadEvent(func) {
	  var oldonload = window.onload;
	  if (typeof window.onload != 'function') {
	    window.onload = func;
	  } else {
	    window.onload = function() {
	      oldonload();
	      func();
	    }
	  }
	}
	 
	function prepareInputsForHints() {
	  //var inputs = document.getElementsByTagName("input");
	  var inputs = getForm().getElementsByTagName("input");
	  for (var i=0; i<inputs.length; i++){
	    inputs[i].onfocus = function () {
	      this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
	    }
	    inputs[i].onblur = function () {
	      this.parentNode.getElementsByTagName("span")[0].style.display = "none";
	    }
	  }
	  var selects = getForm().getElementsByTagName("select");
	  for (var k=0; k<selects.length; k++){
	    selects[k].onfocus = function () {
	      this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
	    }
	    selects[k].onblur = function () {
	      this.parentNode.getElementsByTagName("span")[0].style.display = "none";
	    }
	  }
	  var textareas = getForm().getElementsByTagName("textarea");
	  for (var j=0; j<textareas.length; j++){
	    textareas[j].onfocus = function () {
	      this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
	    }
	    textareas[j].onblur = function () {
	      this.parentNode.getElementsByTagName("span")[0].style.display = "none";
	    }
	  }	  
	}
	