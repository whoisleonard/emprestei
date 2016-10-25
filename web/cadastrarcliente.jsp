<%-- 
    Document   : cadastrarcliente
    Created on : 23/10/2016, 03:36:36
    Author     : Leonardo Silva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar cliente</title>
    </head>
    <body>
        <fieldset>
            <center>
         <h1>Cadastro de cliente</h1>
            </center>
        </fieldset>
        
        <fieldset>
        <div>
            <form action="cadastraCliente" method="post">
                <table>
                    <tr>
                        <td> Nome:</td>
                        <td><input type="text" name="nome"size="43"/></td><br>
                    </tr>
                    <tr>
                        <td> Endereço:</td>
                        <td><input type="text" name="endereço"size="43"/></td><br>
                    </tr>
                    <tr>
                        <td>Cidade:</td>
                        <td> <input type="text" name="cidade"size="43"/></td><br>
                    </tr>
                    <tr>
                        <td> Bairro:</td> 
                        <td><input type="text" name="bairro"size="43"/></td><br>
                    </tr>
                    <tr>
                        <td> E-mail: </td>
                        <td> <input type="text" name="email"size="43"/></td><br>
                    </tr>
                    <tr>
                        <td>Telefone:</td>
                        <td><input type="text" name="telefone"size="43"/></td><br>
                    </tr>
                                       
                </table>
                <br> 
                 
                  <div align="center">
                <table>
            
                  <tr>
                      <td>Data de Entrega:</td>
                            <td>
                          <input type="text" name="dia" size="2" maxlength="2" value="dd"> 
                           <input type="text" name="mes" size="2" maxlength="2" value="mm"> 
                            <input type="text" name="ano" size="4" maxlength="4" value="aaaa">
                             </td><br>
              </tr>
              <tr>
                  <td> Data de Devolução:</td>
                      <td>
                      <input type="text" name="dia" size="2" maxlength="2" value="dd"> 
                        <input type="text" name="mes" size="2" maxlength="2" value="mm"> 
                        <input type="text" name="ano" size="4" maxlength="4" value="aaaa">
                          </td><br>
              </tr>
              </table>
            </div>
                <br>  <br>  <br> 
                
                 <div align="center">
                     <b>Observações:</b><br>
                <textarea name="obs" cols="23" rows="12"> descreva o objeto emprestado aqui</textarea>
                 </div>
                
                <input type="submit" value="cancelar"/> <input type="reset" value="limpar"/> <input type="submit" value="salvar"/>
               
                <div align="right">
                <a href="index.html">Volta</a>
               </div>
            </form>
        </div>
             </fieldset>
    </body>
</html>
