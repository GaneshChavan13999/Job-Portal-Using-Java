/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author ganes
 */
public class post extends HttpServlet {


  
  

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
       String comName = request.getParameter("comName");
            String pos = request.getParameter("pos");
            String exp = request.getParameter("exp");
            String job = request.getParameter("job");
            String salary = request.getParameter("salary");
            String job_desc = request.getParameter("job_desc");
            String url= "jdbc:mysql://localhost:3306/job_portal_db";
            String user = "root";
            String pass = "";
//            HttpSession session1 = request.getSession();
             try {
            Class.forName("com.mysql.jdbc.Driver");
                try {
                    int s;
                    Connection con = DriverManager.getConnection(url, user, pass);
                    //registerprovider
//                    PreparedStatement pst1 = con.prepareStatement("Select providerId from  registerprovider where email='"+session.getAttribute("username")+"'");
//                    pst1.execute();
                    Statement stmt = con.createStatement();
//                        out.print("hello");
                        ResultSet res = stmt.executeQuery("Select providerId from  registerprovider where email='"+request.getSession(false).getAttribute("username")+"'");
                    if(res.next()){
                        s=res.getInt(1);
                    
                    PreparedStatement pst = con.prepareStatement("INSERT INTO posts( comp_name,Comp_id, position, experience, job_type, salary, job_descri)values(?,"+s+",?,?,?,?,?)");
                    pst.setString(1,comName);
                    pst.setString(2,pos);
                    pst.setString(3,exp);
                    pst.setString(4,job);
                    pst.setString(5,salary);
                    pst.setString(6,job_desc);
                    pst.executeUpdate();
                    pst.close();
                    response.sendRedirect("index.jsp");
                    }
                    else{
//                    out.print("hello");
                    }
                } catch (SQLException ex) {
                    out.print(ex);
                }
        } catch (ClassNotFoundException ex) {
            out.print(ex);
        }
    }

   
}
