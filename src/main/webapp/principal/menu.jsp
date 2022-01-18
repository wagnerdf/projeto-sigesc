<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set scope="session" var="perfil" value='<%= request.getSession().getAttribute("perfil") %>'></c:set>

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
           		
           		 <li><a class="disabled" href=>Cadastrar Funcion�rio</a></li>
           		 <c:if test="${perfil == 'ADMIN'}">                 
                 	<li><a href="<%= request.getContextPath() %>/ServLetUsuarioController?acao=listarUser">Cadastrar Usu�rios</a></li>
                 </c:if>
                 <li><a href="<%= request.getContextPath() %>/principal/reluser.jsp">Relat�rio Usu�rio</a></li>
                 <li><a class="disabled" href=>Relat�rio Funcion�rio</a></li>
        </ul>
     </li>   
    <li><a href="#">|&nbsp;Servi�os&nbsp;|</a>
       <ul> 
       		<li><a class="disabled" href=>M�dulo Boleto</a></li>
            <li><a class="disabled" href=>Cadastrar Fornecedor</a></li>
            <li><a class="disabled" href=>Agendar Sal�o de Festas</a></li>
             <li><a class="disabled" href=>Agendar Reuni�o Virtual</a></li>
            <li><a class="disabled" href=>Solicitar Manuten��o</a></li>
            <li><a class="disabled" href=>Upload de Arquivos</a></li>
       </ul>
    </li>
    <li><a href="#">|&nbsp;Consulta&nbsp;|</a>
          <ul>
          	<li><a class="disabled" href=>Comunicados</a></li>
            <li><a class="disabled" href=>Ata de Reuni�o</a></li>
            <li><a class="disabled" href=>Relat�rio Financeiro</a></li>
            <li><a class="disabled" href=>Normas e Regimentos</a></li>
            <li><a class="disabled" href=>Agendas de Reuni�es</a></li>
            <li><a class="disabled" href=>Agenda Sal�o de Festas</a></li>
            <li><a class="disabled" href=>Rela��o de Fornecedores</a></li>
            <li><a class="disabled" href=>Rela��o de Manuten��o</a></li>
            
        </ul>
    </li>
    <li><a href="#">|&nbsp;Comunica��o&nbsp;|</a>
          <ul>
            <li><a href="<%= request.getContextPath() %>/principal/enquete.jsp">Enquete</a></li>
            <li><a href="<%= request.getContextPath() %>/principal/emailUsuarios.jsp">Mensagem</a></li>
            <li><a class="disabled" href=>Chat</a></li>
            <li><a class="disabled" href=>Sugest�o</a></li>
            <li><a class="disabled" href=>Reclama�ao</a></li>         
           </ul>
    </li>
    
    
    <li><a href="<%= request.getContextPath() %>/ServletLogin?acao=logout">|&nbsp;Sair&nbsp;|</a></li>
</ul>

</body>
</html>



