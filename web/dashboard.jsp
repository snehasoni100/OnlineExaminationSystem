<%-- 
    Document   : dashboard
    Created on : 16 Nov, 2021, 1:07:33 PM
    Author     : Sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                
    <%@ page import ="java.sql.*" %>
     <%@ page import ="javax.sql.*" %>
        <title>JSP Page</title>
        <style>
            .head{text-align: center;
                    background-color: grey;
                      color: white;
                       font-family: cursive;}
            .session
            {
                color: royalblue;
                font-family: cursive;
                position: absolute;
                right:10px;
            }
            table{text-align: center;
             width: 70%;
             height:30%;
            position: fixed;left: 250px;top: 350px;
            }
            td{color: grey;}
            
            table,th,td{padding: 20px;
             border: 4px solid black;
            border-collapse: collapse;
            text-align: center;
            font-family: cursive;}
            .link
            {
                font-family: cursive;
                text-align: center;
                color: gray;
            }
        </style>
    <center><table> <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th></tr>
            <div class="head"><h1>ONLINE EXAMINATION SYSTEM</h1>
                <h1>MY DASHBOARD</h1></div>
    </head>
    <body>
        <div class="session"> <%
String session_Email = (String)session.getAttribute("Email");
out.print("  WELCOME!!!    "+session_Email+"<br><br><br><br>");
%></div>
      
        <% 
        
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=con.createStatement();
        
        
        ResultSet rs1=st.executeQuery("SELECT  Name,Email,Mobile from student where Email='"+session_Email+"'");  
        
        while(rs1.next())
              {
                 %>
                 
                     <tr>
        <td><%=rs1.getString(1)%></td>
        <td><%=rs1.getString(2) %></td>
        <td><%=rs1.getString(3) %></td>
        
                     </tr>
              
                  <%
              }
              %>
                 </table><br><br>
                 <div class="link"><p> CLICK HERE TO GIVE YOUR QUIZ <a href="OnlineExamination_projectnew.jsp"> QUIZ LINK</a>  
                     <P> TO CHECK YOUR RESULT <a href="result.jsp">VIEW RESULT</a></div>
    </body>
</html>
