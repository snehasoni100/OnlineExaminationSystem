<%-- 
    Document   : login
    Created on : 8 Nov, 2021, 4:01:34 PM
    Author     : Sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
     <%@ page import ="java.sql.*" %>
     <%@ page import ="javax.sql.*" %>
     
    <%  
    String Email=request.getParameter("Email");
    String Password=request.getParameter("Password");
    
    Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select Email,Password from student where Email='"+Email+"'");
        if(rs.next())
        {
            if(Email.equals(rs.getString(1)) && Password.equals(rs.getString(2)))
            {
                       session.setAttribute("Email",Email); 
             response.sendRedirect("dashboard.jsp");
            }
            else
            {
                out.print("Invalid Username or Password");
            }
        }
        else
        {out.print("Invalid Username or Password");}
    %>
    </body>
</html>
