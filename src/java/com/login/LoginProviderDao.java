/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Pratik Bhosle
 */
public class LoginProviderDao {
     String url= "jdbc:mysql://localhost:3306/job_portal_db";
    String username = "root";
    String pass = "";
    
    public boolean checkLoggedIn(String email, String password) throws SQLException{
        try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, username, pass);
                PreparedStatement pst1 = con.prepareStatement("select * from registerprovider where email=? and password=?");
                pst1.setString(1,email);
                pst1.setString(2, password);    
                ResultSet rs = pst1.executeQuery();
                if(rs.next()){
                    return true;
                }
        } catch (ClassNotFoundException ex) {
            out.print("Error");
        }
        return false;
        
    }
    
}
