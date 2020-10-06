/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pratik Bhosle
 */
public class registerProvider extends HttpServlet {

    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       //registerprovider
            String ComName = request.getParameter("ComName");
            String ComEmail = request.getParameter("ComEmail");
            String ComPass = request.getParameter("ComPass");
            String ComAddress = request.getParameter("ComAddress");
            String ComContact = request.getParameter("ComContact");
            String url= "jdbc:mysql://localhost:3306/job_portal_db";
            String username = "root";
            String pass = "";
            PrintWriter out = response.getWriter();
             try {
            Class.forName("com.mysql.jdbc.Driver");
                try {
                    Connection con = DriverManager.getConnection(url, username, pass);
                    //registerprovider
                    PreparedStatement pst = con.prepareStatement("insert into registerprovider(`CompanyName`, `email`, `password`, `comp_Address`, `comp_contact`) values(?,?,?,?,?)");
                    pst.setString(1,ComName);
                    pst.setString(2,ComEmail);
                    pst.setString(3,ComPass);
                    pst.setString(4,ComAddress);
                    pst.setString(5,ComContact);
                    pst.executeUpdate();
                    pst.close();
                    response.sendRedirect("login.jsp");
                    
                } catch (SQLException ex) {
                    out.print(ex);
                }
        } catch (ClassNotFoundException ex) {
            out.print(ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
