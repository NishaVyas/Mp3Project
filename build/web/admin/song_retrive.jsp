<%-- 
    Document   : song_retrive
    Created on : 7 Sep, 2022, 5:31:29 PM
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
       if(request.getParameter("song_title").trim().length()==0 || request.getParameter("description").trim().length()==0 || request.getParameter("album_code").trim().length()==0){
           response.sendRedirect("song.jsp?empty=1");
        }
        else{
           String song_title=request.getParameter("song_title");
           String description=request.getParameter("description");
           String album_code=request.getParameter("album_code");        
            try{
                int sn=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                Statement st=cn.createStatement();
                ResultSet rs=st.executeQuery("select MAX(sn) from song");
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
                out.print(code);
                PreparedStatement ps=cn.prepareStatement("insert into song values(?,?,?,?,?)");
                ps.setInt(1,sn);
                ps.setString(2,code);
                ps.setString(3,song_title);
                ps.setString(4,description);
                ps.setString(5,album_code);
                if(ps.executeUpdate()>0){
                    response.sendRedirect("song_upload.jsp?sn="+sn+"&album_code="+album_code);
                }
                else{
                     response.sendRedirect("song.jsp?again=1&album_code="+album_code);
                }
                cn.close();
              }
            catch(Exception er){
                out.print(er.getMessage());
            }
        }
   }  
%>