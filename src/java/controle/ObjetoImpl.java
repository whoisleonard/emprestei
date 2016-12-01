/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;

import dao.ObjetoDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Objeto;


/**
 *
 * @author Leonardo Silva
 */
public class ObjetoImpl implements ObjetoDao{
    Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

    @Override
    public void salvar(Objeto o) {
       try {
			String sql = "insert into objeto( descricao, dataEmprestimo, dataDevolucao, idCategoria, idUser) values(?,?,?,?,?)";
			
			stmt = conn.prepareStatement(sql);
			
			
                        stmt.setString(1, o.getDescricao());
                        stmt.setString(2, o.getDataEmprestimo());
                        stmt.setString(3, o.getDataDevolucao());
			stmt.setInt(4, o.getCategoria().getIdCategoria());
                        stmt.setInt(5, o.getUsuario().getIdUser());
                        
			stmt.executeUpdate();
			 
                       
		} catch (SQLException e) {
			e.printStackTrace();
                     
		}
    }

    @Override
    public void atualizar(Objeto o) {
    String sql = "update objeto set  descricao = ?, dataEmprestimo = ?, dataDevolucao = ?, idCategoria = ?, idUser = ?"
                    + "where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                
                
                stmt.setString(1, o.getDescricao());
                stmt.setString(2, o.getDataEmprestimo());
                stmt.setString(3, o.getDataDevolucao());
                stmt.setInt(4, o.getCategoria().getIdCategoria());
                stmt.setInt(5, o.getUsuario().getIdUser());
                        
                 stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public void remover(Objeto o) {
       String sql = "delete from objeto where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, o.getIdObjeto());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public List<Objeto> getListAll() {
        List<Objeto> list = new ArrayList<Objeto>();
        try {
			String sql = "select idObjeto, descricao, dataEmprestimo, dataDevolucao,idCategoria, idUser  from objeto";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
                        while(rs.next()){
				Objeto Objeto = new Objeto();
				
                                Objeto.setIdObjeto((rs.getInt(1)));
				Objeto.setDescricao(notNull(rs.getString(2)));
                                Objeto.setDataEmprestimo(notNull(rs.getString(3)));
                                Objeto.setDataDevolucao(notNull(rs.getString(4)));
                                Objeto.getCategoria().setIdCategoria(rs.getInt(5));  
                                Objeto.getUsuario().setIdUser(rs.getInt(6));
                                
                                list.add(Objeto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
                return list;
    }

    @Override
    public Objeto findById(int idObjeto) {
       String sql = "select idObjeto, descricao, dataEmprestimo, dataDevolucao, idCategoria, idUser from objeto where id = ?";
              Objeto Objeto = new Objeto();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, idObjeto);
                    rs = stmt.executeQuery();
                    rs.next();
                    
                    Objeto.setIdObjeto((rs.getInt(1)));
                    Objeto.setDescricao(notNull(rs.getString(2)));
                    Objeto.setDataEmprestimo(notNull(rs.getString(3)));
                    Objeto.setDataDevolucao(notNull(rs.getString(4)));
                    Objeto.getCategoria().setIdCategoria(rs.getInt(5));  
                    Objeto.getUsuario().setIdUser(rs.getInt(6));
                     }catch (SQLException e) {
			e.printStackTrace();
		}
		return Objeto;
    }
    
     private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }
}
