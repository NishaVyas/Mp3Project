<%-- 
    Document   : update_album
    Created on : 7 Sep, 2022, 5:00:24 PM
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
            if(request.getParameter("txt").trim().length()==0 || request.getParameter("code").trim().length()==0){
                response.sendRedirect("dashboard.jsp?empty=0");
            }
            else{
                String album_name=request.getParameter("txt");
                 String code=request.getParameter("code");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                PreparedStatement ps=cn.prepareStatement("update album set album_name=? where code=?");
                ps.setString(1,album_name);
                ps.setString(2,code);
                 if(ps.executeUpdate()>0){
                    out.print("success");
                 }
                 cn.close();
            }
            catch(Exception er){
                out.println(er.getMessage());
            }
        }
    }
%>
