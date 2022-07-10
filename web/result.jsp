<%-- 
    Document   : result
    Created on : 15 Nov, 2021, 3:36:30 PM
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
                      font-family: cursive;
            }
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
             position: fixed;left: 250px;top: 190px;
         
            }
            td{color: grey;}
            table,th,td{padding: 20px;
             border: 4px solid black;
            border-collapse: collapse;
            text-align: center;
            font-family: cursive;}
        </style>
    </head>
    <body>
    <center>
        <table> <tr>
                <th> test1 </th>
                  <th> test2 </th>
                    <th> test3 </th>
                    <th> Email </th>
            </tr>
            <div class="head"><h1>ONLINE EXAMINATION SYSTEM</h1>
                <h1>RESULT PAGE</h1></div>
        
            <div class="session"> <%
String session_Email = (String)session.getAttribute("Email");
out.print("  WELCOME!!!    "+session_Email+"<br><br><br><br>");
%></div>
        <% 
              String Email=request.getParameter("session_Email");
              
            Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=con.createStatement();
        
        
        ResultSet rs1=st.executeQuery("SELECT  test1,test2,test3,Email from marks where Email='"+session_Email+"'");  
        
        while(rs1.next())
              {
                 %>
                 
                     <tr>
        <td><%=rs1.getString(1)%></td>
        <td><%=rs1.getString(2) %></td>
        <td><%=rs1.getString(3) %></td>
        <td><%=rs1.getString(4) %></td>
                     </tr>
              
                  <%
              }
              %>
                 </table><br><br>
            
        
    </body>
</html>
