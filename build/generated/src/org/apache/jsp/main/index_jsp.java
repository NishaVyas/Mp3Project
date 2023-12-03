package org.apache.jsp.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"zxx\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"description\" content=\"DJoz Template\">\n");
      out.write("    <meta name=\"keywords\" content=\"DJoz, unica, creative, html\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>DJoz</title>\n");
      out.write("    <!-- Google Font -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500;600;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <!-- Css Styles -->\n");
      out.write("    <link rel='stylesheet' href='https://unpkg.com/aos@2.3.0/dist/aos.css'>\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/font-awesome.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/barfiller.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/nowfont.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/rockville.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/magnific-popup.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/owl.carousel.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/slicknav.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/style.css\" type=\"text/css\">\n");
      out.write("    <script src=\"https://kit.fontawesome.com/a076d05399.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("   <style>\n");
      out.write("        .carousel-inner img {\n");
      out.write("          width: 100%;\n");
      out.write("          height: 100%;\n");
      out.write("        }\n");
      out.write("  </style>\n");
      out.write("   <script src=\"https://code.jquery.com/jquery-3.6.0.js\"\n");
      out.write("        integrity=\"sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=\"\n");
      out.write("        crossorigin=\"anonymous\">\n");
      out.write("  </script>\n");
      out.write("  <script>\n");
      out.write("    $(document).ready(function(){\n");
      out.write("         $(document).on(\"click\",\".fa.fa-play\",function(){\n");
      out.write("              var  n = $(this).attr(\"id\");\n");
      out.write("              var code = $(this).attr(\"rel\");\n");
      out.write("              $(\"#song\").attr(\"src\",code);\n");
      out.write("              $(\"#song\").attr(\"autoplay\",\"true\");\n");
      out.write("         });\n");
      out.write("    });\n");
      out.write("    $(document).ready(function(){\n");
      out.write("        $(\"#search\").keyup(function(){\n");
      out.write("                var search=$(this).val();\n");
      out.write("                $.post(\n");
      out.write("                    \"search.jsp\",{search:search},function(data){\n");
      out.write("                             $(\"#search_record\").html(data);\n");
      out.write("                    });\n");
      out.write("             });\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("   <header class=\"header\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("         <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-2 col-md-2\">\n");
      out.write("               <div class=\"header__logo\">\n");
      out.write("                    <a href=\"index.jsp\"><img src=\"assets/img/logo.png\" alt=\"\"></a>\n");
      out.write("               </div>\n");
      out.write("             </div>\n");
      out.write("             <div class=\"col-lg-10 col-md-10\">\n");
      out.write("                <div class=\"header__nav\">\n");
      out.write("                   <nav class=\"header__menu mobile-menu\">\n");
      out.write("                        <ul>\n");
      out.write("                         <li class=\"nav-item active\">\n");
      out.write("                                <input type=\"search\" placeholder=\"Search...\" name=\"search\" id=\"search\">\t\t\t\t\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"album.jsp\">Album</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                 </div>\n");
      out.write("              </div>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("  </header><br><br><br><br><br><br>\n");
      out.write("  <div id=\"demo\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("       <div class=\"row\">\n");
      out.write("           <div class=\"col-lg-7\">\n");
      out.write("               <div class=\"section-title\">\n");
      out.write("                    <h2>Latest</h2>\n");
      out.write("                    <h1>Album's</h1>\n");
      out.write("                </div>\n");
      out.write("             </div>\n");
      out.write("             <div class=\"col-lg-5\">\n");
      out.write("                    <div class=\"track__all\">\n");
      out.write("                        <a href=\"album.jsp\" class=\"primary-btn border-btn\">View all </a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("       <div class=\"carousel-inner\">\n");
      out.write("          ");

             try{
                int count=0;
                String str=" active";
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                Statement st=cn.createStatement();
                ResultSet rs=st.executeQuery("select * from album limit 0,8");
                while (rs.next()){ 
                   if(count%4==0){  
           
      out.write("\n");
      out.write("            <div class=\"carousel-item");
      out.print(str);
      out.write("\">\n");
      out.write("               <div class=\"row\">\n");
      out.write("                  ");

                        }
                        count++;
                        str="";
                  
      out.write("\n");
      out.write("\t\t    <div class=\"col-sm-3\">\n");
      out.write("\t\t\t<table class=\"table table-borderless\">\n");
      out.write("\t\t\t<tr><td><img src=\"profile/");
      out.print(rs.getString("code"));
      out.write(".jpg\"></td></tr>\n");
      out.write("\t\t\t<tr><td align=\"center\"><b>");
      out.print(rs.getString("album_name"));
      out.write("</b></td></tr>\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t    </div>\n");
      out.write("                   ");

                        if(count%4==0){
                            out.println("</div></div>");
                        }
                    }     
                   
      out.write("\n");
      out.write("\t    </div>\n");
      out.write("         </div>                   \n");
      out.write("      </div>\n");
      out.write("   </div><br><br>\n");
      out.write("   <div class=\"container-fluid\">\n");
      out.write("      <ul class=\"nav nav-pills justify-content-center\"> \n");
      out.write("           <li class=\"nav-item active\">\n");
      out.write("                <button class=\"btn btn-primary\" style=\"background-color:white\"><a class=\"nav-link\" href=\"index.jsp\"><h4><b>Punjabi</b></h4></a>\n");
      out.write("           </li>\n");
      out.write("            ");

                Statement st1=cn.createStatement();
                ResultSet rs1=st1.executeQuery("select * from admin_category limit 1,5");
                while (rs1.next()){ 
            
      out.write("\n");
      out.write("          <li class=\"nav-item\"><a class=\"nav-link\" href=\"category.jsp?code=");
      out.print(rs1.getString("code"));
      out.write("\"><h4><b>");
      out.print(rs1.getString("category"));
      out.write("</b></h4></a></li>\n");
      out.write("           ");

               }
           
      out.write("\n");
      out.write("     </ul>\n");
      out.write("  </div><br><br>\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("\t<div class=\"row\" id=\"search_record\">\n");
      out.write("            ");

                   String code="BPjou6_1";
                   Statement st2=cn.createStatement();
                   ResultSet rs2=st2.executeQuery("select * from album where cat_code='"+code+"'");
                   while (rs2.next()){ 
           
      out.write("\n");
      out.write("            <div class=\"col-sm-3\" data-aos=\"fade-up\">\n");
      out.write("              <table class=\"table table-borderless\">\n");
      out.write("                 <tr><td colspan=2 align=\"center\"><a href=\"song.jsp?album_code=");
      out.print(rs2.getString("code"));
      out.write("\"><img src=\"profile/");
      out.print(rs2.getString("code"));
      out.write(".jpg\"  class=\"img-fluid\"></a></td></tr>\n");
      out.write("                 <tr><td colspan=2 align=\"center\"><h3><b>");
      out.print(rs2.getString("album_name"));
      out.write("</b></h3></td></tr>\n");
      out.write("              </table>\n");
      out.write("            </div>\n");
      out.write("            ");

                 }
            
      out.write("\n");
      out.write("\t</div>\n");
      out.write("  </div>\n");
      out.write("<!-- Track Section Begin -->\n");
      out.write("    <section class=\"track spad\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-7\">\n");
      out.write("                    <div class=\"section-title\">\n");
      out.write("                        <h2>Latest tracks</h2>\n");
      out.write("                        <h1>Music podcast</h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-7 p-0\">\n");
      out.write("                    <div class=\"track__content nice-scroll\">\n");
      out.write("                        <div class=\"single_player_container\">\n");
      out.write("                            ");

                                    Statement st3=cn.createStatement();
                                    ResultSet rs3=st3.executeQuery("select * from song limit 0,9");               
                            
      out.write("\n");
      out.write("                            <table class=\"table table-borderless table-striped\">\n");
      out.write("                                ");

                                   while (rs3.next()){  
                                
      out.write("\n");
      out.write("                                    <tr><td  align=\"center\" style=\"width:90%\"><b>");
      out.print(rs3.getString("song_title"));
      out.write("</b></td><td style=\"width:10%\"><i class=\"fa fa-play\" rel=\"songs/");
      out.print(rs3.getString("sn"));
      out.write(".mp3\"  style=\"cursor:pointer\"></i></td></tr>\n");
      out.write("                                ");

                                   }
                                 
      out.write("\n");
      out.write("                                  <tr><td align=\"center\"><audio  src=\".mp3\" id=\"song\" style=\"width:600px\" controls></audio></td></tr>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>           \n");
      out.write("                <div class=\"col-lg-5 p-0\">\n");
      out.write("                    <div class=\"track__pic\">\n");
      out.write("                        <img src=\"assets/img/track-right.jpg\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>  \n");
      out.write("    <!-- Track Section End -->\n");
      out.write("    <footer class=\"text-center text-white\" style=\"background-color:#ccc\">\n");
      out.write("       <div class=\"container pt-4\">\n");
      out.write("         <section class=\"mb-4\">\n");
      out.write("            <!-- Facebook -->\n");
      out.write("           <a\n");
      out.write("             class=\"btn btn-link btn-floating btn-lg text-dark m-1\"\n");
      out.write("              href=\"https://www.facebook.com/\"\n");
      out.write("              role=\"button\"\n");
      out.write("              data-mdb-ripple-color=\"dark\"\n");
      out.write("            ><i class=\"fab fa-facebook-f\"></i\n");
      out.write("           ></a>\n");
      out.write("          <!-- Twitter -->\n");
      out.write("         <a\n");
      out.write("            class=\"btn btn-link btn-floating btn-lg text-dark m-1\"\n");
      out.write("            href=\"https://www.twitter.com/\"\n");
      out.write("            role=\"button\"\n");
      out.write("            data-mdb-ripple-color=\"dark\"\n");
      out.write("            ><i class=\"fab fa-twitter\"></i\n");
      out.write("          ></a>\n");
      out.write("        <!-- Google -->\n");
      out.write("        <a\n");
      out.write("          class=\"btn btn-link btn-floating btn-lg text-dark m-1\"\n");
      out.write("          href=\"https://www.google.com/\"\n");
      out.write("          role=\"button\"\n");
      out.write("          data-mdb-ripple-color=\"dark\"\n");
      out.write("          ><i class=\"fab fa-google\"></i\n");
      out.write("        ></a>\n");
      out.write("      <!-- Instagram -->\n");
      out.write("      <a\n");
      out.write("        class=\"btn btn-link btn-floating btn-lg text-dark m-1\"\n");
      out.write("        href=\"https://www.instagram.com/\"\n");
      out.write("        role=\"button\"\n");
      out.write("        data-mdb-ripple-color=\"dark\"\n");
      out.write("        ><i class=\"fab fa-instagram\"></i\n");
      out.write("      ></a>\n");
      out.write("      <!-- Linkedin -->\n");
      out.write("      <a\n");
      out.write("        class=\"btn btn-link btn-floating btn-lg text-dark m-1\"\n");
      out.write("        href=\"https://www.linkedin.com/\"\n");
      out.write("        role=\"button\"\n");
      out.write("        data-mdb-ripple-color=\"dark\"\n");
      out.write("        ><i class=\"fab fa-linkedin\"></i\n");
      out.write("      ></a>\n");
      out.write("      <!-- Github -->\n");
      out.write("      <a\n");
      out.write("        class=\"btn btn-link btn-floating btn-lg text-dark m-1\"\n");
      out.write("        href=\"https://www.github.com/\"\n");
      out.write("        role=\"button\"\n");
      out.write("        data-mdb-ripple-color=\"dark\"\n");
      out.write("        ><i class=\"fab fa-github\"></i\n");
      out.write("      ></a>\n");
      out.write("    </section>\n");
      out.write("    <!-- Section: Social media -->\n");
      out.write("  </div>\n");
      out.write("  <!-- Grid container -->\n");
      out.write("</footer>\n");
      out.write("    \n");

       cn.close();
}

catch(Exception er){
    out.print(er.getMessage());
}
            
      out.write("\n");
      out.write("     <script src=\"https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js\"></script>\n");
      out.write("   <script src='https://unpkg.com/aos@2.3.0/dist/aos.js'></script>\n");
      out.write("      <script id=\"rendered-js\" >\n");
      out.write("        AOS.init({\n");
      out.write("        duration: 1200 });\n");
      out.write("     </script>\n");
      out.write("     <script src=\"https://static.codepen.io/assets/editor/iframe/iframeRefreshCSS-e03f509ba0a671350b4b363ff105b2eb009850f34a2b4deaadaa63ed5d970b37.js\"></script>\n");
      out.write("    <!-- Js Plugins -->\n");
      out.write("    <script src=\"assets/js/jquery-3.3.1.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/jquery.nicescroll.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/jquery.barfiller.js\"></script>\n");
      out.write("    <script src=\"assets/js/jquery.countdown.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/jquery.slicknav.js\"></script>\n");
      out.write("    <script src=\"assets/js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/main.js\"></script>\n");
      out.write("    <!-- Music Plugin -->\n");
      out.write("    <script src=\"assets/js/jquery.jplayer.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/jplayerInit.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
