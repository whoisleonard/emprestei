/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Usuario;

/**
 *
 * @author Leonardo Silva
 */
public interface UsuarioDao {
    
    public void salvar(Usuario u);
    public void atualizar(Usuario u);
    public Boolean remover(Usuario u);
    public List<Usuario> getListAll();
    public Usuario findById(int id);

    public void cadastrar(Usuario Usuario);
}
