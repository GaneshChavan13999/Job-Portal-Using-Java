/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import static java.lang.System.out;
import java.sql.*;
import java.sql.PreparedStatement;

/**
 *
 * @author Pratik Bhosle
 */
public class LoginDao {
            
    String url= "jdbc:mysql://localhost:3306/job_portal_db";
    String username = "root";
    String pass = "";
    
    public boolean checkLoggedIn(String email, String password) throws SQLException{
        try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, username, pass);
                PreparedStatement pst = con.prepareStatement("select * from registerseeker where email=? and password=?");
                pst.setString(1,email);
                pst.setString(2, password);    
                ResultSet rs = pst.executeQuery();
                if(rs.next()){
                    return true;
                }
        } catch (ClassNotFoundException ex) {
            out.print("Error");
        }
        return false;
        
    }
}

