<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="<%= request.getContextPath() %>/assets/css/estilo.css" rel="stylesheet" type="text/css" />

<!--[if IE 6]>
<link href="menui6.css" rel="stylesheet" type="text/css" />
<![endif]-->

</head>
<body>

<ul id="menu">
   <li><a href="/Sigesc/frame.jsp">|Início|</a></li>
    <li><a href="#">|Usuários|</a>
      	<ul>
           		
           		 <li><a href="frame.jsp?op=1">Cadastrar Funcionário</a></li>                 
                 <li><a href="frame.jsp?op=2">Cadastrar Usuários</a></li>
                 <li><a href="frame.jsp?op=3">Cadastrar Login</a></li>
                 <li><a href="/Sigesc/ListarFuncionario.do">Pesquisar Funcionário</a></li>
                 <li><a href="/Sigesc/ListarUsuario.do">Pesquisar Usuários</a></li>
                 <li><a href="/Sigesc/ListarLogin.do">Pesquisar Login</a></li>
        </ul>
     </li>   
    <li><a href="#">|Serviços|</a>
       <ul> 
       		<li><a href="/boleto/samples/form.html" target="_Blank" >Módulo Boleto</a></li>
            <li><a href="frame.jsp?op=7" >Cadastrar Fornecedor</a></li>
            <li><a href="frame.jsp?op=8">Agendar Salão de Festas</a></li>
             <li><a href="frame.jsp?op=22">Agendar Reunião Virtual</a></li>
            <li><a href="frame.jsp?op=9">Solicitar Manutenção</a></li>
            <li><a href="frame.jsp?op=23">Upload de Arquivos</a></li>
       </ul>
    </li>
    <li><a href="#">|Consulta|</a>
          <ul>
           	<li><a href="frame.jsp?op=10">Comunicados</a></li>
            <li><a href="frame.jsp?op=11">Ata de Reunião</a></li>
            <li><a href="frame.jsp?op=12">Relatório Financeiro</a></li>
            <li><a href="frame.jsp?op=13">Normas e Regimentos</a></li>
             <li><a href="/Sigesc/ListarReuniao.do">Listar Agenda de Reunião</a></li>
            <li><a href="/Sigesc/ListarLocacao.do">Agenda Salão de Festas</a></li>
            <li><a href="/Sigesc/ListarFornecedores.do">Relação de Fornecedores</a></li>
            <li><a href="/Sigesc/ListarReparos.do">Relação de Manutenção</a></li>
            
        </ul>
    </li>
    <li><a href="#">|Comunicação|</a>
          <ul>
            <li><a href="frame.jsp?op=14">Enquete</a></li>
            <li><a href="frame.jsp?op=15">Sugestão</a></li>
            <li><a href="frame.jsp?op=16">Mensagem</a></li>
            <li><a href="frame.jsp?op=17">Reclamaçao</a></li>         
           </ul>
    </li>
    
    
    <li><a href="/Sigesc/index.jsp">|Sair|</a></li>
</ul>

</body>
</html>



