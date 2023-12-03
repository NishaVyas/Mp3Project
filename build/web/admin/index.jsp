<%--
    Document   : index
    Created on : 5 Sep, 2022, 2:06:52 PM
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
        response.sendRedirect("dashboard.jsp");
    }
    else{
  %>
<!DOCTYPE html>
<head>
<title>Colored  an Admin Panel Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
</head>
<body class="signup-body">
   <div class="agile-signup">	
      <div class="content2">
            <div class="grids-heading gallery-heading signup-heading">
                    <h2>Login</h2>
            </div>
            <form method="post" action="check.jsp">
                  <% if(email!=null){
                         out.print("<b>"+email+"</b>");
                     }
                     else{
                  %>
                    <input type="email" name="email" placeholder="abc@gamil.com....." >
                    <%
                       }
                    %>
                    <input type="password" name="pass" placeholder=".....">
                    <input type="submit" class="register" value="Login">
            </form>
            <div class="signin-text">
                    <div class="text-left">
                            <p><a href="#"> Forgot Password? </a></p>
                    </div>
                    <div class="clearfix"> </div>
            </div>	
	  <div class="footer-icons">
                <ul>
                        <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" class="twitter facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="twitter chrome"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" class="twitter dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
		</ul>
	   </div>	
	</div>
    </div>
<script src="js/proton.js"></script>
</body>
</html>
<%
     }
%>
