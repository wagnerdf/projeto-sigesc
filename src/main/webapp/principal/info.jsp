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
  	<img src="<%= request.getContextPath() %>/assets/imgs/user/<%= session.getAttribute("nomeFoto")%>" width="83" height="95" hspace="15" vspace="5" border="3" class="aligncenter" style="height: 130px; width: 115px" class="NO-CACHE"/>
	</div>
</form>
<br>
<div id="info-texto">
	<span class="info-texto-destaque">Usuário: </span><%= session.getAttribute("usuario")%><br/>
	<span class="info-texto-destaque">Data: </span><%=mostra_data%><br/>
	<span id="txt"></span>
</div>
	
<div>
<br>
<div id="info-texto">
<span class="info-texto-destaque">Opções de Temas</span>
</div>

<div class="w-auto p-2" align="center" id="info-texto">
 
  <select class="form-control form-control-sm" aria-label="Default select example" onchange="chooseStyle(this.value, 30)" >
  <optgroup label="Cores">
  <option class="padraoText" value="padrao-theme" selected value="none">Padrão</option>
  <option class="azulText" value="blue-theme">Azul</option>
  <option class="verdeText" value="brown-theme">Verde</option>
  </optgroup> 	
</select>

<br>

<!-- Button trigger modal -->


<button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Alterar foto</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Alterar foto</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
        
        
         <form method="post" action="ServletCarregadorImagem" enctype="multipart/form-data" id="main-contact-form">
         	<input type="hidden" name="id_usuario" value="<%= session.getAttribute("idUser")%>">
         	
         	<input type="hidden" value="<%=session.getAttribute("usuario")%>" name="usuario">
       		<div>
       		<br/>
       		<img id="image-preview"  style="height:120px; width:108px;" src="<%= request.getContextPath() %>/assets/imgs/alterarfoto.jpg">
     	    </div>
     	    
     		<div>
     		<br/>
     	    <input style="display:none" id="input-image-hidden" name="file" onchange="document.getElementById('image-preview').src = window.URL.createObjectURL(this.files[0])" type="file" required accept="image/jpeg, image/png">
     		</div>
     		
     		<div>	
     		<br/>
     		<button type="submit" class="btn btn-success" value="Upload" id="btalterarfoto" onclick="return alterarFoto()">Alterar foto</button>
     	 	</div>
     	 </form>	

		<button  class="btn btn-warning" onclick="HandleBrowseClick('input-image-hidden')" >Escolher imagem</button>
		        
        <div>
        	
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
      </div>
    </div>
  </div>
</div>



</div>
</div>

<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery.min.js"></script>
<script type="text/javascript">
function HandleBrowseClick(input_image)
{
    var fileinput = document.getElementById(input_image);
    fileinput.click();
}     

  async function uploadFile(){
	let formData = new FormData();
	formData.append("file", ajaxfile.files[0]);
	await fetch('servletcarregadorimagem', {
		method: "POST",
		body: formData
	});
	alert("O upload do arquivo foi um sucesso");
  } 


  function alterarFoto(){
	  
	  if(!$('input[name="file"]').val()){
        alert("Escolha uma imagem para anexar" );
        
     }else if(confirm("Deseja realmente alterar sua foto?")){
		return true;
	 }
		return false;
  }

  $(document).ready(function(){
	    $("#btalterarfoto").on('change',function(){
	    	var btn = document.getElementById('btalterarfoto');
	        btn.disabled = false;

	    });
	});
  
</script>





