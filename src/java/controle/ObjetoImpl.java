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
			String sql = "insert into objeto "
                                + "( descricao, status, foto) values(?,?,?)";
			
			stmt = conn.prepareStatement(sql);
			
			
                        stmt.setString(1, o.getDescricao());
                        stmt.setString(2, o.getStatus());
                     
			
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }

    @Override
    public void atualizar(Objeto o) {
    String sql = "update objeto set  descricao = ?, status = ?, foto = ? "
                    + "where idObjeto = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                
                
                stmt.setString(1, o.getDescricao());
                stmt.setString(2, o.getStatus());
                
                 stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public void remover(Objeto o) {
       String sql = "delete from objeto where idObjeto = ?";
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
			String sql = "select descricao, status, foto, from objeto";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
                        while(rs.next()){
				Objeto Objeto = new Objeto();
				
				Objeto.setDescricao(notNull(rs.getString(1)));
                                Objeto.setStatus(notNull(rs.getString(2)));
                                
                                list.add(Objeto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
                return list;
    }

    @Override
    public Objeto findById(int idObjeto) {
       String sql = "select  descricao, status, foto from objeto where idObjeto = ?";
              Objeto Objeto = new Objeto();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, idObjeto);
                    rs = stmt.executeQuery();
                    rs.next();
                   
                    Objeto.setDescricao(notNull(rs.getString(1)));
                    Objeto.setStatus(notNull(rs.getString(2)));
                    
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
