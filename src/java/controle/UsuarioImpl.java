/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;
import dao.ConnectionFactory;
import dao.UsuarioDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Usuario;
/**
 *
 * @author Leonardo Silva
 */
public class UsuarioImpl  implements UsuarioDao {
 
    Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;
        
    @Override
    public void salvar(Usuario u) {
      
        
        try{
            String sql = "insert into usuario"+ "(login, senha) values(?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, u.getLogin());
            stmt.setString(2, u.getSenha());
			
			stmt.execute();
            
        }catch(SQLException e) {
			e.printStackTrace();
		}
    }

    @Override
    public void atualizar(Usuario u) {
        String sql = "update usuario set login = ?, senha = ? "
                    + "where id = ?";
         try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, u.getLogin());
                stmt.setString(2, u.getSenha());
                stmt.setInt(3, u.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public void remover(Usuario u) {
      String sql = "delete from usuario where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, u.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public List<Usuario> getListAll() {
      List<Usuario> list = new ArrayList<Usuario>();  
      try{
          String sql = "select id, login, senha from usuario";
          stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            	while(rs.next()){
				Usuario u = new Usuario();
				u.setId(rs.getInt(1));
				u.setLogin(notNull(rs.getString(2)));
                                u.setSenha(notNull(rs.getString(3)));
				
				list.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();  
      }
            return list;
    }

    @Override
    public Usuario findById(int id) {
       String sql = "select id, login, senha from usuario where id = ?";
                Usuario u = new Usuario();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    u.setId(rs.getInt(1));
                    u.setLogin(notNull(rs.getString(2)));
                    u.setSenha(notNull(rs.getString(3)));
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
    }

    private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }
    
}
