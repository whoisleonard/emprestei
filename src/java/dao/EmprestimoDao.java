/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Emprestimo;

/**
 *
 * @author Leonardo Silva
 */
public interface EmprestimoDao {
    
    public void salvar(Emprestimo e);
    public void atualizar(Emprestimo e);
    public void remover(Emprestimo e);
    public List<Emprestimo> getListAll();
    public Emprestimo findById(int id);
}
