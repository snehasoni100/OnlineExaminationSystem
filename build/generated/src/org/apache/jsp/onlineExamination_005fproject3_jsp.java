package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql. *;
import javax.sql. *;

public final class onlineExamination_005fproject3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("        .session\n");
      out.write("            {\n");
      out.write("               color: royalblue;\n");
      out.write("                font-family: cursive;\n");
      out.write("                position: absolute;\n");
      out.write("                right:10px;\n");
      out.write("            }\n");
      out.write("            .header\n");
      out.write("            {\n");
      out.write("                text-align: center;\n");
      out.write("                background-color: grey;\n");
      out.write("                color: white;\n");
      out.write("                font-family: cursive;\n");
      out.write("            }\n");
      out.write("            .content{\n");
      out.write("                \n");
      out.write("                font-family: cursive ;\n");
      out.write("            }\n");
      out.write("            .greet{color: darkblue;\n");
      out.write("                    text-align: center;}\n");
      out.write("            \n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <h1>....QUIZ RESULT....</h1>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <div class=\"session\">");

String session_Email = (String)session.getAttribute("Email");
out.print("WELCOME!!!  "+ session_Email+"<br><br><br><br>");
    
      out.write(" </div>\n");
      out.write("    <div id=\"page\">\n");
      out.write("    ");

        
        
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
         
      out.write("\n");
      out.write("         <div class=\"greet\">\n");
      out.write("             ");

         if(total > 12)
         {out.print("CONGRATULATIONS !!!! YOU ARE SELECTED...........");}
         else
         {out.print("SORRY !!!! YOU ARE NOT SELECTED...........");}
         
      out.write("</div>\n");
      out.write("        \n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
