package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql. *;
import javax.sql. *;

public final class onlineExamination_005fproject_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("     <style>\n");
      out.write("            .session\n");
      out.write("            {\n");
      out.write("                position: absolute;\n");
      out.write("                right:100px;\n");
      out.write("            }\n");
      out.write("            .header\n");
      out.write("            {\n");
      out.write("                text-align: center;\n");
      out.write("                background-color: grey;\n");
      out.write("                color: white;\n");
      out.write("                font-family: cursive;\n");
      out.write("            }\n");
      out.write("            .content\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                font-family: cursive ;\n");
      out.write("            }\n");
      out.write("            input[type=\"radio\"]\n");
      out.write("            {\n");
      out.write("               appearance: none;\n");
      out.write("               background-color: rgb;\n");
      out.write("               margin: 0;\n");
      out.write("            }\n");
      out.write("            .text> input[type=\"radio\"] {\n");
      out.write("  -webkit-appearance: none;\n");
      out.write("  -moz-appearance: none;\n");
      out.write("  appearance: none;\n");
      out.write("  /* ... */\n");
      out.write("}\n");
      out.write(".text> input[type=\"radio\"] {\n");
      out.write("  /* remove standard background appearance... */\n");
      out.write("\n");
      out.write("  /* create custom radio button appearance */\n");
      out.write(" \n");
      out.write("  width: 15px;\n");
      out.write("  height: 15px;  \n");
      out.write("  padding: 3px;\n");
      out.write("  background-clip: content-box;\n");
      out.write("  border: 2px solid #060c3b;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  margin-right: 0;\n");
      out.write("}\n");
      out.write(".text > input[type=\"radio\"]:checked {\n");
      out.write("  background-color: royalblue;\n");
      out.write("  \n");
      out.write("}\n");
      out.write(".text{\n");
      out.write("    color: grey;\n");
      out.write("}          \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <h1>MATHS QUIZ</h1></div>\n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <div class=\"session\"> ");

String session_Email = (String)session.getAttribute("Email");
out.print("WELCOME!!!  "+ session_Email+"<br><br><br><br>");
    
      out.write("</div>\n");
      out.write("    ");

        
        
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
        
        
      out.write("\n");
      out.write("       <br>\n");
      out.write("<form action=\"onlineExamination_project2.jsp\" method=\"POST\">\n");
      out.write("    <div id=\"page\">\n");
      out.write("<h1>Q1. What is Three-fifth of 100 ?</h1>\n");
      out.write("<div class=\"text\">\n");
      out.write("    <input type=\"radio\" name=\"Q1\" value=\"a\">3<br>\n");
      out.write("<input type=\"radio\" name=\"Q1\" value=\"b\">5<br>\n");
      out.write("<input type=\"radio\" name=\"Q1\" value=\"c\">60<br>\n");
      out.write("</div>\n");
      out.write("<h1>Q2. What is 7% equal to ?</h1>\n");
      out.write("<div class=\"text\">\n");
      out.write("<input type=\"radio\" name=\"Q2\" value=\"a\">0.07<br>\n");
      out.write("<input type=\"radio\" name=\"Q2\" value=\"b\">0.7<br>\n");
      out.write("<input type=\"radio\" name=\"Q2\" value=\"c\">none of these<br>\n");
      out.write("</div>\n");
      out.write("<h1>Q3. What is reciprocal of 17/15 ? </h1>\n");
      out.write("<div class=\"text\">\n");
      out.write("<input type=\"radio\" name=\"Q3\" value=\"a\">34/30<br>\n");
      out.write("<input type=\"radio\" name=\"Q3\" value=\"b\">15/17<br>\n");
      out.write("<input type=\"radio\" name=\"Q3\" value=\"c\">none of these<br>\n");
      out.write("</div>\n");
      out.write("<h1>Q4. What is the square of 15 ?</h1>\n");
      out.write("<div class=\"text\">\n");
      out.write("<input type=\"radio\" name=\"Q4\" value=\"a\">225<br>\n");
      out.write("<input type=\"radio\" name=\"Q4\" value=\"b\">30<br>\n");
      out.write("<input type=\"radio\" name=\"Q4\" value=\"c\">500<br>\n");
      out.write("</div>\n");
      out.write("<h1>Q5. What is the smallest three digit number ?</h1>\n");
      out.write("<div class=\"text\">\n");
      out.write("<input type=\"radio\" name=\"Q5\" value=\"a\">100<br>\n");
      out.write("<input type=\"radio\" name=\"Q5\" value=\"b\">999<br>\n");
      out.write("<input type=\"radio\" name=\"Q5\" value=\"c\">261<br></div>\n");
      out.write("<input type=\"hidden\" name=\"test1\" value=\"");
 out.print(test1);
      out.write("\">\n");
      out.write("    <input type=\"submit\" value=\"SUBMIT\" style=\" Width: 200px;font-family: cursive; height: 40px;border-radius:10px;background-color:black;color:white;\">\n");
      out.write("    </div>\n");
      out.write("</form>\n");
      out.write("        \n");
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
