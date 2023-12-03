<%-- 
    Document   : upload
    Created on : 7 Sep, 2022, 1:00:16 PM
    Author     : Nisha
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%
    Cookie c[]=request.getCookies();
    String email=null;
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            email=c[i].getValue();
            break;
        }
    }
    if(email!=null && session.getAttribute(email)!=null){
         if(request.getParameter("cat_code")==null||request.getParameter("album_code")==null){
          response.sendRedirect("dashboard.jsp");
         }
       else{
       String cat_code=request.getParameter("cat_code");
       String album_code=request.getParameter("album_code");     
 %>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Collective Admin Panel a Flat Bootstrap Responsive Website Template | Home :: W3Layouts</title>
  <script src="jquery-3.6.0.js"></script>
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
  <!-- google fonts -->
  <link href="//fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900&display=swap" rel="stylesheet">
 </head>
<body class="sidebar-menu-collapsed">
  <div class="se-pre-con"></div>
    <section>
    <!-- sidebar menu start -->
       <div class="sidebar-menu sticky-sidebar-menu">
    <!-- logo start -->
         <div class="logo">
           <h2><a href="dashboard.jsp"><img src="assets/images/logo.png" alt="logo-icon">&nbsp;Admin</a></h2>
         </div>
       <div class="logo-icon text-center">
           <a href="dashboard.jsp" title="logo"><img src="assets/images/logo.png" alt="logo-icon"> </a>
       </div>
     <div class="sidebar-menu-inner">
      <!-- sidebar nav start -->
      <ul class="nav nav-pills nav-stacked custom-nav">
         <li class="active"><a href="dashboard.jsp"><i class="fa fa-tachometer"></i><span> Dashboard</span></a>
         </li>
	 <li><a href="dashboard.jsp"><i class="fa fa-home"></i> <span>Home</span></a></li>
         <li><a href="album.jsp"><i class="fa fa-image"></i> <span>Album</span></a></li>
         <li><a href="song.jsp"><i class="fa fa-music"></i> <span>Songs</span></a></li>
      </ul>
      <!-- //sidebar nav end -->
      <!-- toggle button start -->
      <a class="toggle-btn">
        <i class="fa fa-angle-double-left menu-collapsed__left"><span>Collapse Sidebar</span></i>
        <i class="fa fa-angle-double-right menu-collapsed__right"></i>
      </a>
      <!-- //toggle button end -->
    </div>
  </div>
  <!-- //sidebar menu end -->
  <!-- header-starts -->
  <div class="header sticky-header">
    <!-- notification menu start -->
    <div class="menu-right">
      <div class="navbar user-panel-top">
        <div class="search-box">
          <form action="" method="post">
            <input class="search-input" placeholder="Search Here..." type="search" id="search">
            <button class="search-submit" value=""><span class="fa fa-search"></span></button>
          </form>
        </div>
        <div class="user-dropdown-details d-flex">
          <div class="profile_details">
            <ul>
              <li class="dropdown profile_details_drop">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu3" aria-haspopup="true"
                  aria-expanded="false">
                  <div class="profile_img">
                    <img src="assets/images/profileimg.jpg" class="rounded-circle" alt="" />
		       <div class="user-active">
                        <span></span>
                       </div>
                  </div>
                </a>
                <ul class="dropdown-menu drp-mnu" aria-labelledby="dropdownMenu3">
                  <li> <a href="#"><i class="lnr lnr-user"></i>My Profile</a> </li>
                  <li class="logout"> <a href="logout.php"><i class="fa fa-power-off"></i> Logout</a> </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!--notification menu end -->
  </div><br><br><br>
  <!-- //header-ends -->
  <!-- main content start -->
 <div class="main-content">
   <div class="content-wrapper">
		<div class="row-1">
		  <div class="col-sm-9">
		    <form method="post" action="upload_album.jsp?cat_code=<%=cat_code%>&album_code=<%=album_code%>" name="uploadForm" ENCTYPE='multipart/form-data'>
			 <div class="form-group">
                               <label>File:</label>&nbsp;&nbsp;<input type="file" name="uploadFile" class="form-control"><br><br>
                               <input type="submit" class="btn btn-primary" value="Submit">
			</div>
		    </form>	
		</div>
	   </div>
     </div>
 </div>
</section>
<!-- move top -->
<button onclick="topFunction()" id="movetop" class="bg-primary" title="Go to top">
  <span class="fa fa-angle-up"></span>
</button>
<script>
  // When the user scrolls down 20px from the top of the document, show the button
  window.onscroll = function () {
    scrollFunction()
  };
  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      document.getElementById("movetop").style.display = "block";
    } else {
      document.getElementById("movetop").style.display = "none";
    }
  }
  // When the user clicks on the button, scroll to the top of the document
  function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
</script>
<!-- /move top -->
<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="assets/js/jquery-1.10.2.min.js"></script>
<script src="assets/js/jquery.nicescroll.js"></script>
<script src="assets/js/scripts.js"></script>
<!-- disable body scroll when navbar is in active -->
<script>
  $(function () {
    $('.sidebar-menu-collapsed').click(function () {
      $('body').toggleClass('noscroll');
    })
  });
</script>
 <script src="assets/js/modernizr.js"></script>
 <script>
     $(window).load(function () {
         // Animate loader off screen
         $(".se-pre-con").fadeOut("slow");;
     });
 </script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
<%
       }
    }
    else{
       response.sendRedirect("index.jsp");
      
    }
%>