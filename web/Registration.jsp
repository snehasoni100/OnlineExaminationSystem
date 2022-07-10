<%-- 
    Document   : Registration
    Created on : 8 Nov, 2021, 3:20:24 PM
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
    <%@ page import="java.sql. *" %>
    <%@ page import="javax.sql. *" %>
    <%
    String Name=request.getParameter("Name");
    String Email=request.getParameter("Email");
    String Mobile=request.getParameter("Mobile");
    String Password=request.getParameter("Password");
    
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=con.createStatement();
        ResultSet rs;
        int i=st.executeUpdate("insert into student values('"+Name+"','"+Email+"','"+Mobile+"','"+Password+"')");
        if(i>0)
        {
                 

            out.print("data save successfuly");
        }
         else
        {
            out.print("error");
        }
    %>
    </body>
</html>
