<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


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
           		
           		 <li><a href="">Cadastrar Funcionário</a></li>                 
                 <li><a href="<%= request.getContextPath() %>/principal/usuarios.jsp">Cadastrar Usuários</a></li>
                 <li><a href="">Cadastrar Login</a></li>
                 <li><a href="">Pesquisar Funcionário</a></li>
                 <li><a href="">Pesquisar Usuários</a></li>
                 <li><a href="">Pesquisar Login</a></li>
        </ul>
     </li>   
    <li><a href="#">|&nbsp;Serviços&nbsp;|</a>
       <ul> 
       		<li><a href="/boleto/samples/form.html" target="_Blank" >Módulo Boleto</a></li>
            <li><a href="" >Cadastrar Fornecedor</a></li>
            <li><a href="">Agendar Salão de Festas</a></li>
             <li><a href="">Agendar Reunião Virtual</a></li>
            <li><a href="">Solicitar Manutenção</a></li>
            <li><a href="">Upload de Arquivos</a></li>
       </ul>
    </li>
    <li><a href="#">|&nbsp;Consulta&nbsp;|</a>
          <ul>
          	<li><a href="">Comunicados</a></li>
           	<li><a href="">Comunicados</a></li>
            <li><a href="">Ata de Reunião</a></li>
            <li><a href="">Relatório Financeiro</a></li>
            <li><a href="">Normas e Regimentos</a></li>
             <li><a href="">Listar Agenda de Reunião</a></li>
            <li><a href="">Agenda Salão de Festas</a></li>
            <li><a href="">Relação de Fornecedores</a></li>
            <li><a href="">Relação de Manutenção</a></li>
            
        </ul>
    </li>
    <li><a href="#">|&nbsp;Comunicação&nbsp;|</a>
          <ul>
            <li><a href="<%= request.getContextPath() %>/principal/enquete.jsp">Enquete</a></li>
            <li><a href="<%= request.getContextPath() %>/principal/emailUsuarios.jsp">Mensagem</a></li>
            <li><a href="">Chat</a></li>
            <li><a href="">Sugestão</a></li>
            <li><a href="">Reclamaçao</a></li>         
           </ul>
    </li>
    
    
    <li><a href="<%= request.getContextPath() %>/ServletLogin?acao=logout">|&nbsp;Sair&nbsp;|</a></li>
</ul>

</body>
</html>



