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
   <li><a href="<%= request.getContextPath() %>/principal/principal.jsp">|&nbsp;Início&nbsp;|</a></li>
    
    <li><a href="#">|&nbsp;Usuários&nbsp;|</a>
      	<ul>
           		
           		 <li><a class="disabled" href=>Cadastrar Funcionário</a></li>
           		 <c:if test="${perfil == 'ADMIN'}">                 
                 	<li><a href="<%= request.getContextPath() %>/ServLetUsuarioController?acao=listarUser">Cadastrar Usuários</a></li>
                 </c:if>
                 <li><a href="<%= request.getContextPath() %>/principal/reluser.jsp">Relatório Usuário</a></li>
                 <li><a class="disabled" href=>Relatório Funcionário</a></li>
        </ul>
     </li>   
    <li><a href="#">|&nbsp;Serviços&nbsp;|</a>
       <ul> 
       		<li><a class="disabled" href=>Módulo Boleto</a></li>
            <li><a class="disabled" href=>Cadastrar Fornecedor</a></li>
            <li><a class="disabled" href=>Agendar Salão de Festas</a></li>
             <li><a class="disabled" href=>Agendar Reunião Virtual</a></li>
            <li><a class="disabled" href=>Solicitar Manutenção</a></li>
            <li><a class="disabled" href=>Upload de Arquivos</a></li>
       </ul>
    </li>
    <li><a href="#">|&nbsp;Consulta&nbsp;|</a>
          <ul>
          	<li><a class="disabled" href=>Comunicados</a></li>
            <li><a class="disabled" href=>Ata de Reunião</a></li>
            <li><a class="disabled" href=>Relatório Financeiro</a></li>
            <li><a class="disabled" href=>Normas e Regimentos</a></li>
            <li><a class="disabled" href=>Agendas de Reuniões</a></li>
            <li><a class="disabled" href=>Agenda Salão de Festas</a></li>
            <li><a class="disabled" href=>Relação de Fornecedores</a></li>
            <li><a class="disabled" href=>Relação de Manutenção</a></li>
            
        </ul>
    </li>
    <li><a href="#">|&nbsp;Comunicação&nbsp;|</a>
          <ul>
            <li><a href="<%= request.getContextPath() %>/principal/enquete.jsp">Enquete</a></li>
            <li><a href="<%= request.getContextPath() %>/principal/emailUsuarios.jsp">Mensagem</a></li>
            <li><a class="disabled" href=>Chat</a></li>
            <li><a class="disabled" href=>Sugestão</a></li>
            <li><a class="disabled" href=>Reclamaçao</a></li>         
           </ul>
    </li>
    
    
    <li><a href="<%= request.getContextPath() %>/ServletLogin?acao=logout">|&nbsp;Sair&nbsp;|</a></li>
</ul>

</body>
</html>



