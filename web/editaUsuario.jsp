<%-- 
    Document   : editaUsuario
    Created on : 13/11/2016, 15:28:47
    Author     : Leonardo Silva
--%>

<%@page import="controle.UsuarioImpl"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  //verifica se os valores não estao nulo  
   int id = 0;
                    Usuario usuario = new Usuario();
                    if (request.getParameter("id") != null) {
                        id = Integer.valueOf(request.getParameter("idUser"));
                        usuario = new UsuarioImpl().findById(id);  }
%>
<html lang="pt-br">
    <head>
        
	<meta http-equiv="X-UA-Compatible" content="IE-edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Usuario</title>
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
            
 <h3 class="page-header">Dados Do Usuario</h3>
           
        <br> <br> 
    <center>
        <div>
            <form action="AtualizarUsuario.jsp" method="post">
                <table>
                          <tr>
                              <td><b>Login:</b></td>
                        <td>
                            <input type="text"  class=" form-control" name="login" value="<%=usuario.getLogin()%>" size="43"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><b>Senha:</b> </td>
                        <td>
                            <input type="password"  class=" form-control" name="senha" value="<%=usuario.getSenha()%>" size="43"/>
                        </td>
                    </tr>
                </table>
                </center>
    
        <br> <br>
                   <div class="row">
                       <div class="form-group col-md-6">
                           <label>Nome:</label>
                            <input type="text"  class=" form-control" name="nome"  value="<%=usuario.getNome()%>"size="43"/>
                       </div>
                       
                      <div class="form-group col-md-5">
                          <label>  Endereço:</label>
                            <input type="text" class=" form-control" name="endereco" value="<%=usuario.getEndereco()%>"size="43"/>
                      </div>
                   </div>
                
                     <div class="row">
                      <div class="form-group col-md-6">   
                          <label> Cidade:</label>
                            <input type="text" class=" form-control" name="cidade" value="<%=usuario.getCidade()%>"size="43"/>
                      </div>
                         
                       <div class="form-group col-md-5">  
                           <label>  Bairro:</label>
                            <input type="text" class=" form-control" name="bairro"  value="<%=usuario.getBairro()%>"size="43"/>
                       </div>
                     </div>
                
                       <div class="row">
                        <div class="form-group col-md-6">  
                            <label> Email:</label>
                             <input type="text" class="form-control" name="email" value="<%=usuario.getEmail()%>"size="43"/>
                        </div>
                    <div class="form-group col-md-5">   
                        <label> Telefone:</label>
                       <input type="text" class="form-control" name="telefone"  value="<%=usuario.getTelefone()%>"size="43"/>
                    </div>
                       </div>
    
                    
                <br><br>  
               
                <center>             
  <input type="hidden" name="id" value="<%=id%>"/> <a href="index.html" class="btn btn-default">Cancelar</a> <button type="submit" class="btn btn-success">Atualizar</button>
                </center>
               
            </form>
     
   
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>