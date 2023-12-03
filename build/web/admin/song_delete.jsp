<%-- 
    Document   : song_delete
    Created on : 8 Sep, 2022, 12:34:47 AM
    Author     : Nisha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    Cookie c[]=request.getCookies();
    String email=null;
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            email=c[i].getValue();
            break;
        }
    }
    if(email!=null){
         if(request.getParameter("code").trim().length()==0){    
            }
            else{
                 String code=request.getParameter("code");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                PreparedStatement ps=cn.prepareStatement("delete from song where code=?");
                ps.setString(1,code);
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
    else{
        response.sendRedirect("index.jsp");
    }
    %>