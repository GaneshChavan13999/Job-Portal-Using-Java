/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.login.LoginProviderDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pratik Bhosle
 */
public class LoginProvider extends HttpServlet {

  
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try {
            String uname = request.getParameter("ComEmail");
            String password = request.getParameter("ComPass");
            LoginProviderDao dao = new LoginProviderDao();
            if(dao.checkLoggedIn(uname, password)){
                HttpSession session = request.getSession();
                session.setAttribute("username", uname);
                session.setAttribute("type", "provider");
                response.sendRedirect("index.jsp");
            }
            else{
//
                response.sendRedirect("registerProvider.jsp");
            }
        } catch (SQLException ex) {
//            Logger.getLogger(class.getName()).log(Level.SEVERE, null, ex);
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
