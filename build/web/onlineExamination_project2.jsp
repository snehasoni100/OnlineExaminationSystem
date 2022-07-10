<%-- 
    Document   : onlineExamination_project2
    Created on : 10 Nov, 2021, 4:41:03 PM
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
            .content
            {
               
                font-family: cursive ;
            }
            .text> input[type="radio"] {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  /* ... */
}
.text> input[type="radio"] {
  /* remove standard background appearance... */

  /* create custom radio button appearance */
 
  width: 15px;
  height: 15px;  
  padding: 3px;
  background-clip: content-box;
  border: 2px solid #060c3b;
  border-radius: 50%;
  margin-right: 0;
}
.text > input[type="radio"]:checked {
  background-color: royalblue;
  
}
.text{
    color: grey;
}          
            </style>
    </head>
    <body>
        <div class="header">
            <h1>ENGLISH QUIZ</h1></div>
        <%@ page import="java.sql. *" %>
    <%@ page import="javax.sql. *" %>
    <div class="session"> <%
String session_Email = (String)session.getAttribute("Email");
out.print("WELCOME!!!   "+ session_Email+"<br><br><br><br>");
%></div>
    <%
        
        
       String Q1=request.getParameter("Q1");
       String Q2=request.getParameter("Q2");
       String Q3=request.getParameter("Q3");
       String Q4=request.getParameter("Q4");
       String Q5=request.getParameter("Q5");
       int test1=Integer.parseInt(request.getParameter("test1"));
       
        int test2=0;
        if(Q1.equals("c"))
        {test2++;}
        if(Q2.equals("a"))
        {test2++;}
        if(Q3.equals("b"))
        {test2++;}
        if(Q4.equals("a"))
        {test2++;}
        if(Q5.equals("a"))
        {test2++;}
          
        %>
        <br>
<form action="onlineExamination_project3.jsp" method="POST">
    <div id="page">
<h1>Q1. ------ is your name ?</h1>
<div class="text">
<input type="radio" name="Q1" value="a">Which<br>
<input type="radio" name="Q1" value="b">What<br>
<input type="radio" name="Q1" value="c">Who<br></div>
<h1>Q2. How old are you ?</h1>
<div class="text">
<input type="radio" name="Q2" value="a">I'm twelve<br>
<input type="radio" name="Q2" value="b">she is twelve<br>
<input type="radio" name="Q2" value="c">I'm tall<br></div>
<h1>Q3. Can you ? </h1>
<div class="text">
<input type="radio" name="Q3" value="a">speak<br>
<input type="radio" name="Q3" value="b">teacher<br>
<input type="radio" name="Q3" value="c">none of these<br></div>
<h1>Q4. How are you ?</h1>
<div class="text">
<input type="radio" name="Q4" value="a">I'm Fine<br>
<input type="radio" name="Q4" value="b">No<br>
<input type="radio" name="Q4" value="c">he is fine<br></div>
<h1>Q5. Who are they ?</h1>
<div class="text">
<input type="radio" name="Q5" value="a">They're there<br>
<input type="radio" name="Q5" value="b">They're working<br>
<input type="radio" name="Q5" value="c">They're my cousins<br></div>
<input type="hidden" name="test1" value="<% out.print(test1);%>">
<input type="hidden" name="test2" value="<% out.print(test2);%>">
    
<input type="submit" value="SUBMIT" style="text-align: center;font-family: cursive;Width: 200px; height: 40px;border-radius:10px;background-color:black;color:white;">
    </div>
</form>
    
    </body>
</html>
