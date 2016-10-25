/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Objeto;

/**
 *
 * @author Leonardo Silva
 */
public interface ObjetoDao {
    
    public void salvar(Objeto o);
    public void atualizar(Objeto o);
    public void remover(Objeto o);
    public List<Objeto> getListAll();
    public Objeto findById(int id);
    
}
