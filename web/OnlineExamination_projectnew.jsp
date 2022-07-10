<%-- 
    Document   : OnlineExamination_projectnew
    Created on : 13 Nov, 2021, 1:24:38 PM
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
        <h1>ONLINE EXAMINATION SYSTEM</h1>
        <h1>TECHNICAL QUIZ</h1></div>
        <div class="session">
        <%
String session_Email = (String)session.getAttribute("Email");
out.print("  WELCOME !!!             "+ session_Email+"<br><br><br><br>");
        %></div>
        
    <form action="onlineExamination_project.jsp" method="POST">
     
        
             <div id="page">       
<h1>Q1. Full form of O.S</h1>
<div class="text">
<input type="radio" name="Q1" value="a">operating system<br>
<input type="radio" name="Q1" value="b">open system<br>
<input type="radio" name="Q1" value="c">none of these<br>
<option style="display:none;"></option>
</div>
<h1>Q2. Full form of DBMS</h1>
<div class="text">
<input type="radio" name="Q2" value="a">data base management system<br>
<input type="radio" name="Q2" value="b">data base managining system<br>
<input type="radio" name="Q2" value="c">none of these<br></div>
<h1>Q3. Full form of ROM</h1>
<div class="text">
<input type="radio" name="Q3" value="a">read online memory<br>
<input type="radio" name="Q3" value="b">read only memory<br>
<input type="radio" name="Q3" value="c">none of these<br></div>
<h1>Q4. Full form of RDBMS</h1>
<div class="text">
<input type="radio" name="Q4" value="a">relational data base management system<br>
<input type="radio" name="Q4" value="b">relation data base management system<br>
<input type="radio" name="Q4" value="c">none of these<br></div>
<h1>Q5. Full form of RAM</h1>
<div class="text">
<input type="radio" name="Q5" value="a">random access memory<br>
<input type="radio" name="Q5" value="b">random accessing memory<br>
<input type="radio" name="Q5" value="c">none of these<br></div>
        
<input type="submit" value="SUBMIT" style=" text-align: center; font-family: cursive;Width: 200px; height: 40px;border-radius:10px;background-color:black;color:white;">
             </div>
    </body>
</html>
