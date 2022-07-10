<%-- 
    Document   : onlineExamination_project.html
    Created on : 10 Nov, 2021, 1:04:51 PM
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
            input[type="radio"]
            {
               appearance: none;
               background-color: rgb;
               margin: 0;
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
            <h1>MATHS QUIZ</h1></div>
        <%@ page import="java.sql. *" %>
    <%@ page import="javax.sql. *" %>
    <div class="session"> <%
String session_Email = (String)session.getAttribute("Email");
out.print("WELCOME!!!  "+ session_Email+"<br><br><br><br>");
    %></div>
    <%
        
        
       String Q1=request.getParameter("Q1");
       String Q2=request.getParameter("Q2");
       String Q3=request.getParameter("Q3");
       String Q4=request.getParameter("Q4");
       String Q5=request.getParameter("Q5");
    
        int test1=0;
        if(Q1.equals("a"))
        {test1++;}
        if(Q2.equals("a"))
        {test1++;}
        if(Q3.equals("a"))
        {test1++;}
        if(Q4.equals("a"))
        {test1++;}
        if(Q5.equals("a"))
        {test1++;}
        
        %>
       <br>
<form action="onlineExamination_project2.jsp" method="POST">
    <div id="page">
<h1>Q1. What is Three-fifth of 100 ?</h1>
<div class="text">
    <input type="radio" name="Q1" value="a">3<br>
<input type="radio" name="Q1" value="b">5<br>
<input type="radio" name="Q1" value="c">60<br>
</div>
<h1>Q2. What is 7% equal to ?</h1>
<div class="text">
<input type="radio" name="Q2" value="a">0.07<br>
<input type="radio" name="Q2" value="b">0.7<br>
<input type="radio" name="Q2" value="c">none of these<br>
</div>
<h1>Q3. What is reciprocal of 17/15 ? </h1>
<div class="text">
<input type="radio" name="Q3" value="a">34/30<br>
<input type="radio" name="Q3" value="b">15/17<br>
<input type="radio" name="Q3" value="c">none of these<br>
</div>
<h1>Q4. What is the square of 15 ?</h1>
<div class="text">
<input type="radio" name="Q4" value="a">225<br>
<input type="radio" name="Q4" value="b">30<br>
<input type="radio" name="Q4" value="c">500<br>
</div>
<h1>Q5. What is the smallest three digit number ?</h1>
<div class="text">
<input type="radio" name="Q5" value="a">100<br>
<input type="radio" name="Q5" value="b">999<br>
<input type="radio" name="Q5" value="c">261<br></div>
<input type="hidden" name="test1" value="<% out.print(test1);%>">
    <input type="submit" value="SUBMIT" style=" Width: 200px;font-family: cursive; height: 40px;border-radius:10px;background-color:black;color:white;">
    </div>
</form>
        
    </body>
</html>
