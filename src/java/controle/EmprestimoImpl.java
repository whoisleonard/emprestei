/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;
import dao.EmprestimoDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;
import java.util.List;
import modelo.Emprestimo;

/**
 *
 * @author Leonardo Silva
 */
public class EmprestimoImpl implements EmprestimoDao{

    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
    @Override
    public void salvar(Emprestimo e) {
       String sql = "INSERT INTO emprestimo (data_emprestimo, data_devolucao) VALUES(?,?)";
        
         try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, e.getDataEmprestimo());
            stmt.setString(2, e.getDataDevolucao());
            
            stmt.execute();
            
        }  catch (SQLException ex) {
	         ex.printStackTrace();
        }
    }

    @Override
    public void atualizar(Emprestimo e) {
        String sql = "update emprestimo set data_emprestimo = ?, data_devolucao = ? "  + "where idEmprestimo = ?";
         try {
                stmt = conn.prepareStatement(sql);
                
                    
                stmt.setString(1, e.getDataEmprestimo());
                stmt.setString(2, e.getDataDevolucao());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public void remover(Emprestimo e) {
       String sql = "delete from emprestimo where idEmprestimo = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, e.getIdEmprestimo());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public List<Emprestimo> getListAll() {
       List<Emprestimo> list = new ArrayList<Emprestimo>();
       
		try {
			String sql = "select data_emprestimo, data_devolucao from emprestimo";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
                        
			while(rs.next()){
				Emprestimo e = new Emprestimo();
                                
				
				e.setDataEmprestimo(notNull(rs.getString(1)));
                                e.setDataDevolucao(notNull(rs.getString(2)));
                                
				list.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
                return list;
    }

    @Override
    public Emprestimo findById(int idEmprestimo) {
        String sql = "select descricao from categoria where idEmprestimo = ?";
               Emprestimo e = new Emprestimo();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, idEmprestimo);
                    rs = stmt.executeQuery();
                    rs.next();
                   
                   e.setDataEmprestimo(notNull(rs.getString(1)));
                   e.setDataDevolucao(notNull(rs.getString(2)));
                   
                }catch (SQLException ex) {
			ex.printStackTrace();
		}
		return e;
    }
    
     private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }
}
