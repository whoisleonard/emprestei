/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.CategoriaDao;
import dao.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Categoria;


/**
 *
 * @author Leonardo Silva
 */
public class CategoriaImpl implements CategoriaDao{

    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
    @Override
    public void salvar(Categoria c) {
        String sql = "INSERT INTO categoria (descricao) VALUES(?)";
        
         try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, c.getDescricao());
           
            stmt.execute();
            
        }  catch (SQLException e) {
	         e.printStackTrace();
        }
        
    }

    @Override
    public void atualizar(Categoria c) {
        String sql = "update categoria set descricao = ? "  + "where id = ?";
         try {
                stmt = conn.prepareStatement(sql);
                
                    
                stmt.setString(1, c.getDescricao());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public void remover(Categoria c) {
        String sql = "delete from categoria where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, c.getIdCategoria());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public List<Categoria> getListAll() {
        List<Categoria> list = new ArrayList<Categoria>();
       
		try {
			String sql = "select idCategoria, descricao from categoria";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
                        
			while(rs.next()){
				Categoria Categoria = new Categoria();
                                
				 Categoria.setIdCategoria((rs.getInt(1)));
				Categoria.setDescricao(notNull(rs.getString(2)));
                             
                                
				list.add(Categoria);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
                return list;
    }

    @Override
    public Categoria findById(int idCategoria) {
       String sql = "select idCategoria, descricao from categoria where id = ?";
               Categoria Categoria = new Categoria();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, idCategoria);
                    rs = stmt.executeQuery();
                    rs.next();
                    
                   Categoria.setIdCategoria((rs.getInt(1)));
                   Categoria.setDescricao(notNull(rs.getString(2)));
                   
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return Categoria;
    }
    
    private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

    
}
