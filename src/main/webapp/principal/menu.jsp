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
           		
           		 <li><a href="">Cadastrar Funcion�rio</a></li>                 
                 <li><a href="<%= request.getContextPath() %>/principal/usuarios.jsp">Cadastrar Usu�rios</a></li>
                 <li><a href="">Cadastrar Login</a></li>
                 <li><a href="">Pesquisar Funcion�rio</a></li>
                 <li><a href="">Pesquisar Usu�rios</a></li>
                 <li><a href="">Pesquisar Login</a></li>
        </ul>
     </li>   
    <li><a href="#">|&nbsp;Servi�os&nbsp;|</a>
       <ul> 
       		<li><a href="/boleto/samples/form.html" target="_Blank" >M�dulo Boleto</a></li>
            <li><a href="" >Cadastrar Fornecedor</a></li>
            <li><a href="">Agendar Sal�o de Festas</a></li>
             <li><a href="">Agendar Reuni�o Virtual</a></li>
            <li><a href="">Solicitar Manuten��o</a></li>
            <li><a href="">Upload de Arquivos</a></li>
       </ul>
    </li>
    <li><a href="#">|&nbsp;Consulta&nbsp;|</a>
          <ul>
          	<li><a href="">Comunicados</a></li>
           	<li><a href="">Comunicados</a></li>
            <li><a href="">Ata de Reuni�o</a></li>
            <li><a href="">Relat�rio Financeiro</a></li>
            <li><a href="">Normas e Regimentos</a></li>
             <li><a href="">Listar Agenda de Reuni�o</a></li>
            <li><a href="">Agenda Sal�o de Festas</a></li>
            <li><a href="">Rela��o de Fornecedores</a></li>
            <li><a href="">Rela��o de Manuten��o</a></li>
            
        </ul>
    </li>
    <li><a href="#">|&nbsp;Comunica��o&nbsp;|</a>
          <ul>
            <li><a href="<%= request.getContextPath() %>/principal/enquete.jsp">Enquete</a></li>
            <li><a href="<%= request.getContextPath() %>/principal/emailUsuarios.jsp">Mensagem</a></li>
            <li><a href="">Chat</a></li>
            <li><a href="">Sugest�o</a></li>
            <li><a href="">Reclama�ao</a></li>         
           </ul>
    </li>
    
    
    <li><a href="<%= request.getContextPath() %>/ServletLogin?acao=logout">|&nbsp;Sair&nbsp;|</a></li>
</ul>

</body>
</html>



