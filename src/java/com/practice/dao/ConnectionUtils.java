/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.practice.dao;

import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Bang
 */
public class ConnectionUtils {
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
         Connection conn = DBConnector.getConnection();
         return conn;
    }
}
