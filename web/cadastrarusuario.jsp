<%-- 
    Document   : cadastrarusuario
    Created on : 03/11/2016, 15:23:58
    Author     : Leonardo Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        
	<meta http-equiv="X-UA-Compatible" content="IE-edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Usuario</title>
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
            
 <h3 class="page-header">Cadastrar Usuario</h3>
           
        <br> <br> 
    <center>
        <div>
            <form action="cadastrarUsuario" method="post">
                <table>
                          <tr>
                              <td><b>Login:</b></td>
                        <td>
                            <input type="text"  class=" form-control" name="login" placeholder="informe seu login"size="43"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><b>Senha:</b> </td>
                        <td>
                            <input type="password"  class=" form-control" name="senha" placeholder="Digite sua senha" size="43"/>
                        </td>
                    </tr>
                </table>
                </center>
    
        <br> <br>
                   <div class="row">
                       <div class="form-group col-md-6">
                           <label>Nome:</label>
                            <input type="text"  class=" form-control" name="nome" placeholder="informe seu nome"size="43"/>
                       </div>
                       
                      <div class="form-group col-md-5">
                          <label>  Endereço:</label>
                            <input type="text" class=" form-control" name="endereco"placeholder="informe seu endereço"size="43"/>
                      </div>
                   </div>
                
                     <div class="row">
                      <div class="form-group col-md-6">   
                          <label> Cidade:</label>
                            <input type="text" class=" form-control" name="cidade"placeholder="informe sua cidade"size="43"/>
                      </div>
                         
                       <div class="form-group col-md-5">  
                           <label>  Bairro:</label>
                            <input type="text" class=" form-control" name="bairro" placeholder="informe seu bairro"size="43"/>
                       </div>
                     </div>
                
                       <div class="row">
                        <div class="form-group col-md-6">  
                            <label> Email:</label>
                             <input type="text" class="form-control" name="email" placeholder="Digite seu email"size="43"/>
                        </div>
                    <div class="form-group col-md-5">   
                        <label> Telefone:</label>
                       <input type="text" class="form-control" name="telefone" placeholder="Digite seu telefone"size="43"/>
                    </div>
                       </div>
    
                   
            
                <br><br>  
               
                <center>             
            <a href="index.html" class="btn btn-default">Cancelar</a> <button type="submit" class="btn btn-success">Salvar</button> <button type="reset" class="btn btn-primary">Limpar</button>
                </center>
               
            </form>
     
   
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>