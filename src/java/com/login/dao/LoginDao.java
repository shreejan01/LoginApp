/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;

/**
 *
 * @author cc
 */
public class LoginDao {
    
    String sql = "select * from login where uname=? and pass=?";
    String url = "jdbc:mysql://localhost:3306/login_app?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    String username = "root";
    String password = "";
    public boolean check(String uname, String pass) {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);           
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1,uname);
            st.setString(2,pass);
            ResultSet rs = st.executeQuery();
            if(rs.next()) {
                return true;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
}
