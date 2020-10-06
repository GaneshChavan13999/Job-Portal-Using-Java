/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.login.LoginDao;
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
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        try {
            String uname = request.getParameter("email");
            String password = request.getParameter("ps");
            LoginDao dao = new LoginDao();
            if(dao.checkLoggedIn(uname, password)){
                HttpSession session = request.getSession();
                session.setAttribute("username", uname);
                session.setAttribute("type", "seeker");
                response.sendRedirect("index.jsp");
            }
            else{
                response.sendRedirect("registerSeeker.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
