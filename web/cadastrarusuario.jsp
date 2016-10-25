<%-- 
    Document   : cadastrarusuario
    Created on : 23/10/2016, 13:25:55
    Author     : Leonardo Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastra usuario</title>
    </head>
    <body bgcolor="C0C0C0">
       <fieldset>
            <center>
         <h1>Cadastro de Usuario</h1>
            </center>
        </fieldset>
         
             <br> <br> <br> <br>
              <center>
        <table>
            <tr>
                <td>Login:</td>
                <td><input type="text" name="login"size="45"/> </td>
            </tr>
            <tr>
                <td>Senha:</td>
                <td><input type="password" name="senha"size="45" </td>
            </tr>
        </table>
                  <table>  
                      <tr>
                          <td>
  <input type="reset" value="limpar" maxlength="25"/> <input type="submit" value="salvar" maxlength="25"/> <input type="submit" value="cancelar"maxlength="25" />
                          </td>
                      </tr>
                  </table>
              </center>
    
    
    </body>
</html>
