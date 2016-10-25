/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.util.List;

/**
 *
 * @author Leonardo Silva
 */
public interface Dao<T> {
    
    Connection conn = ConnectionFactory.getConnection();
    List<T> findAll();
	T findById(Integer i);
}
