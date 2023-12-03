<%-- 
    Document   : album_retrive
    Created on : 7 Sep, 2022, 1:31:20 AM
    Author     : Nisha
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*,java.io.*" pageEncoding="UTF-8"%>
<%
    Cookie c[]=request.getCookies();
    String email=null;
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            email=c[i].getValue();
            break;
        }
    }
    if(email!=null&&session.getAttribute(email)!=null){  
       if(request.getParameter("album_name").trim().length()==0 || request.getParameter("description").trim().length()==0 || request.getParameter("cat_code").trim().length()==0){
           response.sendRedirect("album.jsp?empty=1");   
        }
        else{
           String album_name=request.getParameter("album_name");
           String description=request.getParameter("description");
           String cat_code=request.getParameter("cat_code");        
            try{
                int sn=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                Statement st=cn.createStatement();
                ResultSet rs=st.executeQuery("select MAX(sn) from album");
                if(rs.next()){
                    sn=rs.getInt(1);
                }
                sn++;
                LinkedList l=new LinkedList();
                for(char x='A';x<='Z';x++){
                    l.add(x+"");
                }
                for(char x='a';x<='z';x++){
                    l.add(x+"");
                }
                for(int i=0 ;i<=9; i++){
                    l.add(i+"");
                }
                Collections.shuffle(l);
                String code="";
                for(int i=0;i<6;i++){
                    code+=l.get(i);
                }
                code=code+"_"+sn;
                PreparedStatement ps=cn.prepareStatement("insert into album values(?,?,?,?,?)");
                ps.setInt(1,sn);
                ps.setString(2,code);
                ps.setString(3,album_name);
                ps.setString(4,description);
                ps.setString(5,cat_code);
                if(ps.executeUpdate()>0){
                    File fr = new File(request.getRealPath("/")+"/admin/albums/"+code);
                    fr.mkdir();
                    response.sendRedirect("upload.jsp?album_code="+code+"&cat_code="+cat_code);
                }
                else{
                     response.sendRedirect("album.jsp?again=1&cat_code="+cat_code);
                }
                cn.close();
         
              }
            catch(Exception er){
                out.print(er.getMessage());
            }
        }
     }  
    %>
