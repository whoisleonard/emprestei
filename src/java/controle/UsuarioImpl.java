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
public class UsuarioImpl implements UsuarioDao{
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;

    @Override
    public void salvar(Usuario u) {
       String sql = "INSERT INTO usuario ( login, senha, nome, endereco, bairro, email, telefone, cidade) VALUES(?,?,?,?,?,?,?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, u.getLogin());
            stmt.setString(2, u.getSenha());
            stmt.setString(3, u.getNome());
            stmt.setString(4, u.getEndereco());
            stmt.setString(5, u.getBairro());
            stmt.setString(6, u.getEmail());
            stmt.setString(7, u.getTelefone());
            stmt.setString(8, u.getCidade());
            
            
            stmt.execute();
            
        }  catch (SQLException e) {
	         e.printStackTrace();
        }
    }

    @Override
    public void atualizar(Usuario u) {
          String sql = "update usuario set login = ?, senha = ?, nome = ?, endereco = ?, bairro = ?, email = ?, telefone = ?, cidade = ? "
                    + "where idUser = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                
                    ;
                stmt.setString(1, u.getLogin());
                stmt.setString(2, u.getSenha());
                stmt.setString(3, u.getNome());
                stmt.setString(4, u.getEndereco());
                stmt.setString(5, u.getBairro());
                stmt.setString(6, u.getEmail());
                stmt.setString(7, u.getTelefone());
                stmt.setString(8, u.getCidade());
               
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
    }

    @Override
    public Boolean remover(Usuario u) {
         String sql = "delete from usuario where idUser = ?";
         Boolean retorno = false;
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, u.getIdUser());
                
              if( stmt.executeUpdate()> 0){
                  
                  retorno = true;
              }
                  
                  
            } catch (SQLException ex) {
                ex.printStackTrace();
                retorno = false;
            }
            return retorno;
    }

    @Override
    public List<Usuario> getListAll() {
        List<Usuario> list = new ArrayList<Usuario>();
       
		try {
			String sql = "select idUser, login, senha, nome, endereco, bairro, email, telefone, cidade from usuario";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
                        
			while(rs.next()){
				Usuario Usuario = new Usuario();
                                
				
				Usuario.setIdUser(rs.getInt(1));
				Usuario.setLogin(notNull(rs.getString(2)));
                                Usuario.setSenha(notNull(rs.getString(3)));
				Usuario.setNome(notNull(rs.getString(4)));
                                Usuario.setEndereco(notNull(rs.getString(5)));
                                Usuario.setBairro(notNull(rs.getString(6)));
                                Usuario.setEmail(notNull(rs.getString(7)));
                                Usuario.setTelefone(notNull(rs.getString(8)));
                                Usuario.setCidade(notNull(rs.getString(9)));
                                
				list.add(Usuario);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
                return list;
    }

     @Override
   public Usuario findById(int id) {
         String sql = "select idUser, login, senha, nome, endereco, bairro, email, telefone, cidade from usuario where id = ?";
   
                Usuario  Usuario= new Usuario();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    
                    rs = stmt.executeQuery();
                     rs.next();
                        
                   
                   
                    Usuario.setIdUser(rs.getInt(1));
                    Usuario.setLogin(notNull(rs.getString(2)));
                    Usuario.setSenha(notNull(rs.getString(3)));
                    Usuario.setNome(notNull(rs.getString(4)));
                    Usuario.setEndereco(notNull(rs.getString(5)));
                    Usuario.setBairro(notNull(rs.getString(6)));
                    Usuario.setEmail(notNull(rs.getString(7)));
                    Usuario.setTelefone(notNull(rs.getString(8)));
                    Usuario.setCidade(notNull(rs.getString(9)));
                    
                    
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return Usuario;
    }

    @Override
    public void cadastrar(Usuario Usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }
    
}
