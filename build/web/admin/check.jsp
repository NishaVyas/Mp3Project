<%-- 
    Document   : check
    Created on : 5 Sep, 2022, 11:27:57 PM
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
   if(email==null){
        if(request.getParameter("email").trim().length()==0){
               response.sendRedirect("index.jsp?email_empty=1");
         }
         else{
              email=request.getParameter("email");
         }
   }
   if(request.getParameter("pass").trim().length()==0){
         response.sendRedirect("index.jsp?pass_empty=1");
   }
   else{
         String pass=request.getParameter("pass");
        try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             ResultSet rs=st.executeQuery("select * from user where Email='"+email+"'");
              if(rs.next()){
                     if(rs.getString("pass").equals(pass)){
                                Cookie ct=new Cookie("login",email);
                                ct.setMaxAge(3600);
                                response.addCookie(ct);
                                session.setAttribute(email,pass);
                                session.setMaxInactiveInterval(3600);
                                response.sendRedirect("dashboard.jsp");
                      } 
                      else{
                           response.sendRedirect("index.jsp?invalid_pass=1");
                     }
             }
             else{
                   response.sendRedirect("index.jsp?invalid_email=1");
             }
             cn.close();
        }
        catch(Exception er){
           out.print(er.getMessage());
        }
   }
%>