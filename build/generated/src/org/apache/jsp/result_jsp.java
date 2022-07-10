package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class result_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>RESULT PAGE</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>................ RESULT...........</h1>\n");
      out.write("        ");

String session_Email = (String)session.getAttribute("Email");
out.print("WELCOME!!!  "+ session_Email+"<br><br><br><br>");

      out.write("\n");
      out.write("    ");

        
      int m,m1,m2,t;
       m=Integer.parseInt(request.getParameter("count"));
       m1=Integer.parseInt(request.getParameter("count"));
       m2=Integer.parseInt(request.getParameter("count"));
       t=m+m1+m2;
       out.print(" TECHNICAL QUIZ MARKS = "+m+"<br>");
       out.print(" MATHS QUIZ MARKS = "+m1+"<br>");
       out.print(" ENGLISH QUIZ MARKS = "+m2+"<br>");
       out.print("  TOTAL MARKS = "+t+"<br>");
       
     
       if(t > 4 && t <10)
       {
           out.print("CONGRATULATIONS !!!! YOU HAVE PASSED THE EXAM");
       }
       else if(t >=10 && t <12)
       {
           out.print("CONGRATULATIONS !!!! YOU HAVE PASSED THE EXAM <br> GOOD JOB!!");
       }
       else if(t>=12 && t<=15)
       {
           out.print("CONGRATULATIONS !!!! YOU HAVE PASSED THE EXAM <br> EXCELLENT WORK !!!");
       }
       else
       {out.print("BAD LUCK !!!! YOU FAILED IN THE EXAM");}
       
       
      out.write("\n");
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
