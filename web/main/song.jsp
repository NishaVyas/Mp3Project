<%-- 
    Document   : category
    Created on : 9 Sep, 2022, 11:09:56 PM
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
    <link rel='stylesheet' href='https://unpkg.com/aos@2.3.0/dist/aos.css'>
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
    <style>
        .carousel-inner img {
          width: 100%;
          height: 100%;
        }
  </style>
   <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous">
  </script>
  <script>
    $(document).ready(function(){
         $(document).on("click",".fa.fa-play",function(){
              var  n = $(this).attr("id");
              var code = $(this).attr("rel");
              $("#song").attr("src",code);
              $("#song").attr("autoplay","true");
         });
    });
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
  
  
  <div id="demo" class="carousel slide" data-ride="carousel">
       <div class="row">
           <div class="col-lg-7">
               <div class="section-title">
                    <h2>Latest</h2>
                    <h1>Album's</h1>
                </div>
             </div>
             <div class="col-lg-5">
                    <div class="track__all">
                        <a href="album.jsp" class="primary-btn border-btn">View all </a>
                    </div>
                </div>
            </div>
     <div class="carousel-inner">
          <%
             try{
                int count=0;
                String str=" active";
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                Statement st=cn.createStatement();
                ResultSet rs=st.executeQuery("select * from album limit 0,8");
                while (rs.next()){ 
                   if(count%4==0){  
           %>
            <div class="carousel-item<%=str%>">
               <div class="row">
                  <%
                        }
                        count++;
                        str="";
                  %>
		    <div class="col-sm-3">
			<table class="table table-borderless">
			<tr><td><img src="profile/<%=rs.getString("code")%>.jpg"></td></tr>
			<tr><td align="center"><b><%=rs.getString("album_name")%></b></td></tr>
			</table>
		    </div>
                   <%
                        if(count%4==0){
                            out.println("</div></div>");
                        }
                    }     
                   %>
	    </div>
         </div>                   
      </div>
   </div><br><br>
   
   
    <%
         String album_code=request.getParameter("album_code");
         Statement st2=cn.createStatement();
         ResultSet rs2=st2.executeQuery("select * from album where code='"+album_code+"'");
         if(rs2.next()){ 
    %>
   <div class="container-fluid" style="background-color:#f7f7f7" id="search_record">
      <div class="card" style="width:1000px;height:400px">
         <div class="row" style="background-color:#f7f7f7">
             <div class="col-sm-2"></div>
               <div class="col-sm-6">
                  <img class="card-img-top" style="width:600px;height:400px"src="profile/<%=rs2.getString("code")%>.jpg">
               </div>
               <div class="col-sm-3">
                  <div class="card-body">
                     <h4 class="card-title"><h3><b><%=rs2.getString("album_name")%></b></h3>
                     <p class="card-text"><b><%=rs2.getString("description")%></b></p>
                 </div>
              </div>
              <div class="col-sm-1"></div>
         </div>
      </div>
  </div><br><br>
  
  
  <div class="container-fluid">
          <table class="table table-borderless">
                <tr><td align="center"><h3><b> Songs</b></h3></td></tr>
                      <td align="center"><audio  src=".mp3" id="song" style="width:700px" controls></audio>
                </td></tr>
          </table>
  </div>
  <div class="container">
        <table class="table table-borderless" style="margin-bottom:200px">
            <%
                   Statement st4=cn.createStatement();
                   ResultSet rs4=st4.executeQuery("select * from song where album_code='"+album_code+"'");
                   while (rs4.next()){ 
           %>
            <tr><td><h4><b><%=rs4.getString("song_title")%></b></h4></td>
            <td><h4><b><%=rs4.getString("description")%></b></h4></td>
            <td><b><i class="fa fa-play" rel="songs/<%=rs4.getString("sn")%>.mp3"  style="cursor:pointer"></i></a></b></td></tr>
            <%
                   }
            %>
	</table>
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
    }

catch(Exception er){
    out.print(er.getMessage());
}
            %>
   <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
   <script src='https://unpkg.com/aos@2.3.0/dist/aos.js'></script>
      <script id="rendered-js" >
        AOS.init({
        duration: 1200 });
     </script>
  <script src="https://static.codepen.io/assets/editor/iframe/iframeRefreshCSS-e03f509ba0a671350b4b363ff105b2eb009850f34a2b4deaadaa63ed5d970b37.js"></script>
    <!-- Js Plugins -->
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