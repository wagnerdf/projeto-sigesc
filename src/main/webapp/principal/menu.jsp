<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="<%= request.getContextPath() %>/assets/css/estilo.css" rel="stylesheet" type="text/css" />

</head>
<body>

<ul id="menu">
   <li><a href="<%= request.getContextPath() %>/principal/principal.jsp">|&nbsp;In�cio&nbsp;|</a></li>
    <li><a href="#">|&nbsp;Usu�rios&nbsp;|</a>
      	<ul>
           		
           		 <li><a href="frame.jsp?op=1">Cadastrar Funcion�rio</a></li>                 
                 <li><a href="<%= request.getContextPath() %>/principal/usuarios.jsp">Cadastrar Usu�rios</a></li>
                 <li><a href="frame.jsp?op=3">Cadastrar Login</a></li>
                 <li><a href="/Sigesc/ListarFuncionario.do">Pesquisar Funcion�rio</a></li>
                 <li><a href="/Sigesc/ListarUsuario.do">Pesquisar Usu�rios</a></li>
                 <li><a href="/Sigesc/ListarLogin.do">Pesquisar Login</a></li>
        </ul>
     </li>   
    <li><a href="#">|&nbsp;Servi�os&nbsp;|</a>
       <ul> 
       		<li><a href="/boleto/samples/form.html" target="_Blank" >M�dulo Boleto</a></li>
            <li><a href="frame.jsp?op=7" >Cadastrar Fornecedor</a></li>
            <li><a href="frame.jsp?op=8">Agendar Sal�o de Festas</a></li>
             <li><a href="frame.jsp?op=22">Agendar Reuni�o Virtual</a></li>
            <li><a href="frame.jsp?op=9">Solicitar Manuten��o</a></li>
            <li><a href="frame.jsp?op=23">Upload de Arquivos</a></li>
       </ul>
    </li>
    <li><a href="#">|&nbsp;Consulta&nbsp;|</a>
          <ul>
           	<li><a href="frame.jsp?op=10">Comunicados</a></li>
            <li><a href="frame.jsp?op=11">Ata de Reuni�o</a></li>
            <li><a href="frame.jsp?op=12">Relat�rio Financeiro</a></li>
            <li><a href="frame.jsp?op=13">Normas e Regimentos</a></li>
             <li><a href="/Sigesc/ListarReuniao.do">Listar Agenda de Reuni�o</a></li>
            <li><a href="/Sigesc/ListarLocacao.do">Agenda Sal�o de Festas</a></li>
            <li><a href="/Sigesc/ListarFornecedores.do">Rela��o de Fornecedores</a></li>
            <li><a href="/Sigesc/ListarReparos.do">Rela��o de Manuten��o</a></li>
            
        </ul>
    </li>
    <li><a href="#">|&nbsp;Comunica��o&nbsp;|</a>
          <ul>
            <li><a href="frame.jsp?op=14">Enquete</a></li>
            <li><a href="frame.jsp?op=15">Sugest�o</a></li>
            <li><a href="frame.jsp?op=16">Mensagem</a></li>
            <li><a href="frame.jsp?op=17">Reclama�ao</a></li>         
           </ul>
    </li>
    
    
    <li><a href="<%= request.getContextPath() %>/ServletLogin?acao=logout">|&nbsp;Sair&nbsp;|</a></li>
</ul>

</body>
</html>



