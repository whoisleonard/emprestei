/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import controle.ObjetoImpl;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Leonardo Silva
 */
public class ObjetoTest {
    
    public ObjetoTest() {
    }
    public void inserir(){
        
        Categoria categoria = new Categoria();
        categoria.setIdCategoria(1);
        
        Usuario usuario = new Usuario();
        usuario.setIdUser(1);
        
        Objeto objeto = new Objeto();
        
        objeto.setDescricao("o objeto emprestado foi caderno");
        objeto.setDataEmprestimo("13/12/2016");
        objeto.setDataDevolucao("22/12/206");
        objeto.setCategoria(categoria);
        objeto.setUsuario(usuario);
        
        ObjetoImpl ObjetoDao = new ObjetoImpl();
        ObjetoDao.salvar(objeto);
    
    }
}