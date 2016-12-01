<%-- 
    Document   : listaUsuario
    Created on : 19/11/2016, 00:08:07
    Author     : Leonardo Silva
--%>

<%@page import="modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="controle.UsuarioImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lista de Contatos</title>
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
    </ul>
   </div>
  </div>
       </nav>
       <br> <br>
       
      <h3 class="page-header">Lista De Usuarios</h3>
       <br> <br> 
     
        <div id="list" class="row">    
            <div class="table-responsive col-md-12">
             <table class="table table-striped" cellspacing="0" cellpadding="0">
           <thead>
                <tr>
                    <td>ID</td>
                    <td>LOGIN</td>
                    <td>NOME</td>
                    <td>ENDEREÇO</td>
                    <td>TELEFONE</td>
                    <td>CIDADE</td>
                    <td>BAIRRO</td>
                    <td>EMAIL</td>
                    <td>AÇÃO</td>
                </tr>
           </thead>
           
           
                <%
                    UsuarioImpl UsuarioImpl = new UsuarioImpl();
                    List<Usuario> list = UsuarioImpl.getListAll();
                    for(Usuario Usuario : list){
                        %>
                        <tr>
                            <td><%= Usuario.getIdUser() %></td>
                            <td><%= Usuario.getLogin()%></td>
                            <td><%= Usuario.getNome()%></td>
                            <td><%= Usuario.getEndereco()%></td>
                            <td><%= Usuario.getTelefone()%></td>
                            <td><%= Usuario.getCidade()%></td>
                            <td><%= Usuario.getBairro()%></td>
                             <td><%= Usuario.getEmail()%></td>
                            <td><a href="editaUsuario.jsp?idUser=<%= Usuario.getIdUser()%>"class="btn btn-warning btn-xs">editar</a>
                           <td><a href="excluirUsuario.jsp?idUser=<%= Usuario.getIdUser()%>"class="btn btn-danger btn-xs">excluir</a>
                              
                            </td>
                        </tr>
                        <%
                    }
                %>
            </table>
            <a href="index.html"class="btn btn-primary">Volta</a>
         
        </div>
        </div>
           
    
  
  

             <script src="js/jquery.min.js"></script>
          <script src="js/bootstrap.min.js"></script>
  
    </body>
</html>

