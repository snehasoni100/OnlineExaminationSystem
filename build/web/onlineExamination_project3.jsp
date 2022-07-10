<%-- 
    Document   : onlineExamination_project3
    Created on : 10 Nov, 2021, 4:41:19 PM
    Author     : Sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
        <style>
        .session
            {
               color: royalblue;
                font-family: cursive;
                position: absolute;
                right:10px;
            }
            .header
            {
                text-align: center;
                background-color: grey;
                color: white;
                font-family: cursive;
            }
            .content{
                
                font-family: cursive ;
            }
            .greet{color: darkred;
                    text-align: center;}
            .link
            {
                font-family: cursive;
                text-align: center;
                color: chocolate;
            }
            
            </style>
    </head>
    <body>
        <div class="header">
            <h1>....QUIZ RESULT....</h1>
        </div>
        <%@ page import="java.sql. *" %>
    <%@ page import="javax.sql. *" %>
    <div class="session"><%
String session_Email = (String)session.getAttribute("Email");
out.print("WELCOME!!!  "+ session_Email+"<br><br><br><br>");
    %> </div>
    <div id="page">
    <%
        
        
       String Q1=request.getParameter("Q1");
       String Q2=request.getParameter("Q2");
       String Q3=request.getParameter("Q3");
       String Q4=request.getParameter("Q4");
       String Q5=request.getParameter("Q5");
        int test1=Integer.parseInt(request.getParameter("test1"));
         int test2=Integer.parseInt(request.getParameter("test2"));
        
        

        int test3=0;
        if(Q1.equals("b"))
        {test3++;}
        if(Q2.equals("a"))
        {test3++;}
        if(Q3.equals("a"))
        {test3++;}
        if(Q4.equals("a"))
        {test3++;}
        if(Q5.equals("c"))
        {test3++;}
        int total=test1+test2+test3;
        Class.forName("com.mysql.jdbc.Driver");
        
        java.sql.Connection
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=con.createStatement();
        ResultSet rs;
        st.executeUpdate("insert into marks values('"+test1+"','"+test2+"','"+test3+"','"+session_Email+"')");
     
         out.print("Your Technical Quiz Result is <br> "+"Total marks= 5<br>"+"Your Marks is = "+test1+"<br><br>");
         out.print("Your Maths Quiz Result is <br> "+"Total marks= 5<br>"+"Your Marks is = "+test2+"<br><br>");
         out.print("Your Englis Quiz Result is <br> "+"Total marks= 5<br>"+"Your Marks is = "+test3+"<br><br>");
         
         out.print("Your  Result is <br> "+"Total marks= 15<br>"+"Your Marks is = "+total+"<br><br>");
         %>
         <div class="greet"><h2>
             <%
         if(total > 12)
         {out.print("CONGRATULATIONS !!!! YOU ARE SELECTED...........");}
         else
         {out.print("SORRY !!!! YOU ARE NOT SELECTED...........");}
         %></h2></div>
         <br><br><br>
         <div class="link">
             <h4> <p>TO GO BACK TO YOUR DASHBOARD PAGE <a href="dashboard.jsp"> DASHBOARD PAGE</a></p>
                 <p>TO GO ON HOME PAGE<a href="index.html">HOME PAGE</a></p><h4>
         </div>
    </body>
</html>
