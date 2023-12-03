<%-- 
    Document   : search
    Created on : 10 Sep, 2022, 4:11:39 PM
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
  <div class="section-title">
         <h2>Search</h2>
         <h1>Recent</h1>
  </div>
  <div class="container-fluid">
	<div class="row">
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                    Statement st = cn.createStatement();
                    if(request.getParameter("search")!=null){
                        String search = request.getParameter("search");
                        String arr[]= search.split(" ");
                        Statement sn = cn.createStatement();
                        String sql = "select * from album where album_name like '%"+search+"%'";
                        for(int i=0;i<arr.length;i++){
                            sql = sql + " OR album_name like '%"+arr[i]+"%'";
                        }
                        ResultSet rs = st.executeQuery(sql);
                        while(rs.next()){
                        String code = rs.getString("code");
           %>
            <div class="col-sm-3">
              <table class="table table-borderless">
                 <tr><td  align="center"><a href="song.jsp?album_code=<%=rs.getString("code")%>"><img src="profile/<%=rs.getString("code")%>.jpg"  class="img-fluid"></a></td></tr>
                 <tr><td  align="center"><h3><b><%=rs.getString("album_name")%></b></h3></td></tr>
              </table>
            </div>
            <%
                 }
            %>
	</div>
  </div>
    
<%
          }
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