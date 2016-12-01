<%-- 
    Document   : categoria
    Created on : 17/11/2016, 15:05:10
    Author     : Leonardo Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categoria</title>
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
       <h3 class="page-header">Cadastrar Categoria</h3>
       <br> <br> 
       <div>
       <form action="categoria" method="post">
           
           <b> <p>Categoria:
<select name="descricao"class="btn">
	<option value="midia"> Mídia</option>
	<option value="roupa"> Roupas</option>
	<option value="acessorio"> Acessórios</option>
        <option value="jogo"> jogos</option>
        <option value="livro"> Livro</option>
        <option value="eletronicos"> Eletrônicos</option>
</select>
               </p></b>
           <br> <br><br> <br><br> <br><br> <br><br><br> <br>
           
           <div class="row">
             <div class="form-group col-md-12">
           <a href="index.html" class="btn btn-primary">Cancelar</a> 
         <button type="submit" class="btn btn-success">Salvar</button> 
         
             </div>
           </div>
           
           
       </form>
       
       </div>
       
       
       
         <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
