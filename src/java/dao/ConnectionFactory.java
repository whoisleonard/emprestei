/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
/**
 *
 * @author Leonardo Silva
 */
public class ConnectionFactory {
    public static Connection getConnection(){
    try {
			Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(
                    "jdbc:mysql://localhost/emprestei", "root", "hyuugaleo123");
            } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
	}
}

