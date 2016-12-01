<%-- 
    Document   : excluirUsuario
    Created on : 30/11/2016, 22:09:39
    Author     : Leonardo Silva
--%>

<%@page import="modelo.Usuario"%>
<%@page import="controle.UsuarioImpl"%>
<%@page import="dao.UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String msg = null;
    if(request.getParameter("idUser")==null)
    {
        msg = "Registro não enviado, verifique e tente novamente";
    }
    else{
   UsuarioImpl UsuarioDao = new UsuarioImpl();
    Usuario usuario = new Usuario();
    usuario.setIdUser(Integer.valueOf(request.getParameter("idUser")));
    Boolean rt = UsuarioDao.remover(usuario);
    if(rt == true){
        msg = "Registro excluido com Sucesso!";
    }else{
        msg = "Não foi possivel realizar a exclusão, verifique dependências e tente novamente.";
    }
    
    }
    
    
%>
<html>
    <head>
         <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu</title>
           <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
                  <link href="css/style.css" rel="stylesheet">
    </head>
            
    <body >
       <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
   <div class="navbar-header">
   
    <a class="navbar-brand" href="#"> Sistema Emprestei</a>
   </div>
  </div>
       </nav>
        <br> <br> <br>
        <h2  class="page-header"><b>Excluir Usuario</b></h2>
        
    <center>
        <h3><b><%=msg%></b></h3>
    </center>
          <br> <br> <br>
        
         <a href="listaUsuario.jsp"class="btn btn-primary">Volta</a>
          <script src="js/jquery.min.js"></script>
          <script src="js/bootstrap.min.js"></script>
  
    </body>
</html>
