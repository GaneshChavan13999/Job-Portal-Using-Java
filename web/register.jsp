<%-- 
    Document   : register
    Created on : 21 Feb, 2020, 5:42:30 PM
    Author     : Pratik Bhosle
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%
            //registerseeker
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String skills = request.getParameter("skills");
            String contact = request.getParameter("contact");
            //registerprovider
            String url= "jdbc:mysql://localhost:3306/job_portal_db";
            String username = "root";
            String pass = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
                try {
                    Connection con = DriverManager.getConnection(url, username, pass);
                    //registerseeker 
                    PreparedStatement pst = con.prepareStatement("insert into registerseeker(`name`, `email`, `password`, `skills`, `contact_number`) values(?,?,?,?,?)");
                    pst.setString(1,name);
                    pst.setString(2,email);
                    pst.setString(3, password);
                    pst.setString(4,skills);
                    pst.setString(5,contact);
                    pst.executeUpdate();
                    pst.close();
                    response.sendRedirect("login.jsp");
                    
                } catch (SQLException ex) {
                    out.print(ex);
                }
        } catch (ClassNotFoundException ex) {
            out.print(ex);
        }
        
        %>
    </body>
</html>
