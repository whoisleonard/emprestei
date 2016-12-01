<%-- 
    Document   : AtualizarUsuario
    Created on : 01/12/2016, 00:47:55
    Author     : Leonardo Silva
--%>

<%@page import="modelo.Usuario"%>
<%@page import="controle.UsuarioImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //verifica se os valores não estao nulo
   if(request.getParameter("idUser")==null||request.getParameter("login")==null || request.getParameter("senha")==null||request.getParameter("nome")==null||request.getParameter("endereco")==null||request.getParameter("cidade")==null||request.getParameter("telefone")==null||request.getParameter("bairro")== null||request.getParameter("email")== null)
   {
       response.sendRedirect("listaUsuario.jsp");
       return;
   }
    int id = Integer.valueOf(request.getParameter("idUser"));   
   String login = request.getParameter("login");
   String senha = request.getParameter("senha");
   String nome  = request.getParameter("nome");
   String endereco = request.getParameter("endereco");
   String cidade = request.getParameter("cidade");
   String telefone = request.getParameter("telefone");
   String bairro  = request.getParameter("bairro");
   String email = request.getParameter("email");
   
UsuarioImpl UsuarioDao = new UsuarioImpl();
//procurar o usuario pelo id
Usuario usuario = UsuarioDao.findById(id);
//se não encontrar o ususario
  if(usuario == null)
  {
       response.sendRedirect("listaUsuario.jsp");
       return;
  }
  //atualizar as demais informações enviada
  usuario.setLogin(login);
  usuario.setSenha(senha);
  usuario.setNome(nome);
  usuario.setEndereco(endereco);
  usuario.setCidade(cidade);
  usuario.setTelefone(telefone);
  usuario.setBairro(bairro);
  usuario.setEmail(email);
  
UsuarioDao.atualizar(usuario);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 class="centro">Atualizar Usuario</h1>
        
        
    </body>
</html>
