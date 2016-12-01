<%-- 
    Document   : cadastrarobjeto
    Created on : 07/11/2016, 12:51:12
    Author     : Leonardo Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
       
        <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Objeto</title>
         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>

      <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
   <div class="navbar-header">
   
    <a class="navbar-brand" href="#"> Sistema Emprestei</a>
   </div>
          <div id="navbar" class="navbar-collapse collapse">
    <ul class="nav navbar-nav navbar-right">
     <li><a href="index.html">Inicio</a></li>
     <li><a href="listaUsuario.jsp">Lista</a></li>
    </ul>
   </div>
  </div>
       </nav>
       <br> <br>
       <h3 class="page-header">Cadastrar Objeto</h3>
       <br> <br> 
       <div>
            <form action="cadastrarobjeto" method="post">
                


                           <br><br>   
                 <div class="row">
                      <div class="form-group col-md-2">   
                          <label> Data de Emprestimo:</label>
                          <input type="date" class=" form-control" name="dataEmprestimo"placeholder="dd/mm/aaaa"/>
                         
                      </div>
                   <div class="form-group col-md-2">   
                          <label> Data de Devolução:</label>
                           <input type="date" class=" form-control" name="dataDevolucao"placeholder="dd/mm/aaaa"/>
                           
                      </div>
              </div>
                  <br><br>
                
                <p><b>Descrição:</b></p>
                <textarea name="descricao" cols="26" rows="7" placeholder="Descreva aqui objeto"></textarea>
                
             
                 <br><br>
                
                
                 <a href="index.html" class="btn btn-default">Cancelar</a> 
         <button type="submit" class="btn btn-primary">Salvar</button> 
         <button type="reset" class="btn btn-primary">Limpar</button>
         
            </form>
            
        </div>
        
        
        
                   <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
    </body>
</html>
