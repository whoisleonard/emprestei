<%-- 
    Document   : emprestimo
    Created on : 17/11/2016, 19:34:58
    Author     : Leonardo Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Data</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
         <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
   <div class="navbar-header">
   
    <a class="navbar-brand" href="#"> Sistema Emprestei</a>
   </div>
  </div>
       </nav>
       <br> <br>
       <h3 class="page-header">Cadastrar Data</h3>
       
       <div>
           <form action="emprestimo" method="post">
              <div class="row">
                      <div class="form-group col-md-2">   
                          <label> Data de Emprestimo:</label>
                           <input type="text" class=" form-control" name="dataEmprestimo"placeholder="dd/mm/aaaa"/>
                           
                      </div>
                   <div class="form-group col-md-2">   
                          <label> Data de Devolução:</label>
                           <input type="text" class=" form-control" name="dataDevolucao"placeholder="dd/mm/aaaa"/>
                           
                      </div>
              </div>
               
               
               
          <a href="index.html" class="btn btn-default">Cancelar</a> 
         <button type="submit" class="btn btn-primary">Salvar</button> 
           </form>
           
       </div>
       
       
       
        
        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
