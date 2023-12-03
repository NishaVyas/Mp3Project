package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    Cookie c[]=request.getCookies();
    String email=null;
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            email=c[i].getValue();
            break;
        }
    }
    if(email!=null && session.getAttribute(email)!=null){
        response.sendRedirect("dashboard.jsp");
    }
    else{
  
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<head>\n");
      out.write("<title>Colored  an Admin Panel Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- bootstrap-css -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("<!-- //bootstrap-css -->\n");
      out.write("<!-- Custom CSS -->\n");
      out.write("<link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("<!-- font CSS -->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- font-awesome icons -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/font.css\" type=\"text/css\"/>\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<!-- //font-awesome icons -->\n");
      out.write("</head>\n");
      out.write("<body class=\"signup-body\">\n");
      out.write("   <div class=\"agile-signup\">\t\n");
      out.write("      <div class=\"content2\">\n");
      out.write("            <div class=\"grids-heading gallery-heading signup-heading\">\n");
      out.write("                    <h2>Login</h2>\n");
      out.write("            </div>\n");
      out.write("            <form method=\"post\" action=\"check.jsp\">\n");
      out.write("                  ");
 if(email!=null){
                         out.print("<b>"+email+"</b>");
                     }
                     else{
                  
      out.write("\n");
      out.write("                    <input type=\"email\" name=\"email\" placeholder=\"abc@gamil.com.....\" >\n");
      out.write("                    ");

                       }
                    
      out.write("\n");
      out.write("                    <input type=\"password\" name=\"pass\" placeholder=\".....\">\n");
      out.write("                    <input type=\"submit\" class=\"register\" value=\"Login\">\n");
      out.write("            </form>\n");
      out.write("            <div class=\"signin-text\">\n");
      out.write("                    <div class=\"text-left\">\n");
      out.write("                            <p><a href=\"#\"> Forgot Password? </a></p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("            </div>\t\n");
      out.write("\t  <div class=\"footer-icons\">\n");
      out.write("                <ul>\n");
      out.write("                        <li><a href=\"#\" class=\"twitter\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"twitter facebook\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"twitter chrome\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"twitter dribbble\"><i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t   </div>\t\n");
      out.write("\t</div>\n");
      out.write("    </div>\n");
      out.write("<script src=\"js/proton.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");

     }

      out.write('\n');
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
