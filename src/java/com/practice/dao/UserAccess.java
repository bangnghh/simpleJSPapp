/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.practice.dao;

import com.practice.bean.UserBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Bang
 */
public class UserAccess {
    public static UserBean findUser(Connection conn, String username) throws SQLException{
        String sql = "SELECT username,password,address FROM users WHERE username = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, username);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            //String username = rs.getString("username");
            String password = rs.getString("password");
            String address = rs.getString("address");
            //Product product = new Product(code, name, price);
            UserBean userbean = new UserBean(username, password, address);
            return userbean;            
        }
        return null;
    } 
    
    public static void insertUser(Connection conn, UserBean userbean) throws SQLException{
        String sql = "INSERT INTO users(username,password,address) values (?,?,?) ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        
        pstm.setString(1, userbean.getUsername());
        pstm.setString(2, userbean.getPassword());
        pstm.setString(3, userbean.getAddress());
        
        pstm.executeUpdate();
    }
    
    public static List<UserBean> queryUser(Connection conn) throws SQLException{
        String sql = "SELECT * FROM users";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        
        List<UserBean> list = new ArrayList<UserBean>();
        while(rs.next()){
            String username = rs.getString("username");
            String password = rs.getString("password");
            String address = rs.getString("address");
            
            UserBean userbean = new UserBean();
            userbean.setUsername(username);
            userbean.setPassword(password);
            userbean.setAddress(address);
            
            list.add(userbean);
        }
        return list;
    }
    public static void updateUser(Connection conn, UserBean userbean) throws SQLException{
        String sql = "UPDATE users SET username = ?, password = ?, address = ? WHERE username = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userbean.getUsername1());
        pstm.setString(2, userbean.getPassword());
        pstm.setString(3, userbean.getAddress());
        pstm.setString(4, userbean.getUsername());
        pstm.executeUpdate();
        
    }
    
    public static void deleteUser(Connection conn, String username) throws SQLException{
        String sql = "DELETE FROM users WHERE username = ?";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, username);
        
        pstm.executeUpdate();
    }
    public static boolean checkLogin(Connection conn, String username, String password) throws SQLException{
        String sql = "SELECT username, password FROM users WHERE username = ? and password = ?";
        boolean match = false;
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, username);
        pstm.setString(2, password);
        
        ResultSet rs = pstm.executeQuery();
        if(rs.next()){
            match = true;
        } else {
            match = false;
        }
        return match;
    }
    
    public static UserBean searchUser(Connection conn, String keyword) throws SQLException{
        String sql = "SELECT username,password,address FROM users WHERE username = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, keyword);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            String username = rs.getString("username");
            String password = rs.getString("password");
            String address = rs.getString("address");
            //Product product = new Product(code, name, price);
            UserBean userbean = new UserBean(username, password, address);
            return userbean;            
        }
        return null;
    } 
}
