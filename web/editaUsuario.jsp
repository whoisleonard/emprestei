<%-- 
    Document   : editaUsuario
    Created on : 13/11/2016, 15:28:47
    Author     : Leonardo Silva
--%>

<%@page import="controle.UsuarioImpl"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        
	<meta http-equiv="X-UA-Compatible" content="IE-edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
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
            
 <h3 class="page-header">Editar Informações</h3>
           
        <br> <br> 
    <center>
        <div>
            <form action="editaUsuario" method="post">
                
                  <%
                    int id = 0;
                    Usuario Usuario = new Usuario();
                    if (request.getParameter("id") != null) {
                        id = Integer.valueOf(request.getParameter("id"));
                        Usuario = new UsuarioImpl().findById(id);
                    }
                %>
                
                <table>
                          <tr>
                              <td><b>Login:</b></td>
                        <td>
                            <input type="text"  class=" form-control" name="login" value="<%=Usuario.getLogin()%>" placeholder="informe seu login"size="43"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><b>Senha:</b> </td>
                        <td>
                            <input type="password"  class=" form-control" name="senha" value="<%=Usuario.getSenha()%>"placeholder="Digite sua senha" size="43"/>
                        </td>
                    </tr>
                </table>
                </center>
    
        <br> <br>
                   <div class="row">
                       <div class="form-group col-md-6">
                           <label>Nome:</label>
                            <input type="text"  class=" form-control" name="nome" value="<%=Usuario.getNome()%>"placeholder="informe seu nome"size="43"/>
                       </div>
                       
                      <div class="form-group col-md-5">
                          <label>  Endereço:</label>
                            <input type="text" class=" form-control" name="endereco" value="<%=Usuario.getEndereco()%>"placeholder="informe seu endereço"size="43"/>
                      </div>
                   </div>
                
                     <div class="row">
                      <div class="form-group col-md-6">   
                          <label> Cidade:</label>
                            <input type="text" class=" form-control" name="cidade" value="<%=Usuario.getCidade()%>"placeholder="informe sua cidade"size="43"/>
                      </div>
                         
                       <div class="form-group col-md-5">  
                           <label>  Bairro:</label>
                            <input type="text" class=" form-control" name="bairro" value="<%=Usuario.getBairro()%>" placeholder="informe seu bairro"size="43"/>
                       </div>
                     </div>
                
                       <div class="row">
                        <div class="form-group col-md-6">  
                            <label> Email:</label>
                             <input type="text" class="form-control" name="email" value="<%=Usuario.getEmail()%>" placeholder="Digite seu email"size="43"/>
                        </div>
                    <div class="form-group col-md-5">   
                        <label> Telefone:</label>
                       <input type="text" class="form-control" name="telefone" value="<%=Usuario.getTelefone()%>" placeholder="Digite seu telefone"size="43"/>
                    </div>
                       </div>
    
                   
            
                <br><br>  
               
           <div class="row">
	  <div class="col-md-12">
                 <input type="hidden" name="id" value="<%=id%>"/>
	  	<button type="submit" class="btn btn-primary">Atualizar</button>
		<a href="index.html" class="btn btn-default">Cancelar</a>
	  </div>
	</div>
          
            </form>
     
   
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>