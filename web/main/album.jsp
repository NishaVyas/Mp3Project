<%-- 
    Document   : index
    Created on : 8 Sep, 2022, 4:53:50 PM
    Author     : Nisha
--%>

<%@page contentType="text/html" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="DJoz Template">
    <meta name="keywords" content="DJoz, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>DJoz</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Css Styles -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="assets/css/nowfont.css" type="text/css">
    <link rel="stylesheet" href="assets/css/rockville.css" type="text/css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script>
    $(document).ready(function(){
        $("#search").keyup(function(){
                var search=$(this).val();
                $.post(
                    "search.jsp",{search:search},function(data){
                             $("#search_record").html(data);
                    });
             });
    });
</script>
</head>
<body>
   <header class="header">
      <div class="container">
         <div class="row">
            <div class="col-lg-2 col-md-2">
               <div class="header__logo">
                    <a href="index.jsp"><img src="assets/img/logo.png" alt=""></a>
               </div>
             </div>
             <div class="col-lg-10 col-md-10">
                <div class="header__nav">
                   <nav class="header__menu mobile-menu">
                        <ul>
                          <li class="nav-item active">
                               <input type="search" placeholder="Search..." name="search" id="search">				
                        </li>
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="album.jsp">Album</a></li>
                        </ul>
                    </nav>
                 </div>
              </div>
          </div>
      </div>
  </header><br><br><br><br><br><br>
  <div class="container-fluid">
      <ul class="nav nav-pills justify-content-center"> 
            <%  
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                Statement st1=cn.createStatement();
                ResultSet rs1=st1.executeQuery("select * from admin_category");
                while (rs1.next()){ 
            %>
          <li class="nav-item"><a class="nav-link" href="category1.jsp?code=<%=rs1.getString("code")%>"><h4><b><%=rs1.getString("category")%></b></h4></a></li>
           <%
               }
           %>
     </ul>
  </div><br><br>
  <div class="container-fluid">
	<div class="row" style="background-color:#f7f7f7" id="search_record">
            <%
                   String code="BPjou6_1";
                   Statement st2=cn.createStatement();
                   ResultSet rs2=st2.executeQuery("select * from album where cat_code='"+code+"'");
                   while (rs2.next()){ 
           %>
            <div class="col-sm-3">
              <table class="table table-borderless">
                 <tr><td align="center"><a href="song.jsp?album_code=<%=rs2.getString("code")%>"><img src="profile/<%=rs2.getString("code")%>.jpg"  class="img-fluid"></a></td></tr>
                 <tr><td align="center"><h3><b><%=rs2.getString("album_name")%></b></h3></td></tr>
              </table>
            </div>
            <%
                 }
            %>
	</div>
  </div>
  <footer class="text-center text-white" style="background-color:#ccc">
       <div class="container pt-4">
         <section class="mb-4">
            <!-- Facebook -->
           <a
             class="btn btn-link btn-floating btn-lg text-dark m-1"
              href="https://www.facebook.com/"
              role="button"
              data-mdb-ripple-color="dark"
            ><i class="fab fa-facebook-f"></i
           ></a>
          <!-- Twitter -->
         <a
            class="btn btn-link btn-floating btn-lg text-dark m-1"
            href="https://www.twitter.com/"
            role="button"
            data-mdb-ripple-color="dark"
            ><i class="fab fa-twitter"></i
          ></a>
        <!-- Google -->
        <a
          class="btn btn-link btn-floating btn-lg text-dark m-1"
          href="https://www.google.com/"
          role="button"
          data-mdb-ripple-color="dark"
          ><i class="fab fa-google"></i
        ></a>
      <!-- Instagram -->
      <a
        class="btn btn-link btn-floating btn-lg text-dark m-1"
        href="https://www.instagram.com/"
        role="button"
        data-mdb-ripple-color="dark"
        ><i class="fab fa-instagram"></i
      ></a>
      <!-- Linkedin -->
      <a
        class="btn btn-link btn-floating btn-lg text-dark m-1"
        href="https://www.linkedin.com/"
        role="button"
        data-mdb-ripple-color="dark"
        ><i class="fab fa-linkedin"></i
      ></a>
      <!-- Github -->
      <a
        class="btn btn-link btn-floating btn-lg text-dark m-1"
        href="https://www.github.com/"
        role="button"
        data-mdb-ripple-color="dark"
        ><i class="fab fa-github"></i
      ></a>
    </section>
    <!-- Section: Social media -->
  </div>
  <!-- Grid container -->
</footer>          
            
<%
               cn.close();
}

catch(Exception er){
    out.print(er.getMessage());
}
            %>
     
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.nicescroll.min.js"></script>
    <script src="assets/js/jquery.barfiller.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/main.js"></script>
    <!-- Music Plugin -->
    <script src="assets/js/jquery.jplayer.min.js"></script>
    <script src="assets/js/jplayerInit.js"></script>
</body>
</html>