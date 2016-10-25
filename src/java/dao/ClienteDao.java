/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Cliente;
/**
 *
 * @author Leonardo Silva
 */
public interface ClienteDao {
    
    public void salvar(Cliente c);
    public void atualizar(Cliente c);
    public void remover(Cliente c);
    public List<Cliente> getListAll();
    public Cliente findById(int id);
    
}
