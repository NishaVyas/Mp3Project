<%-- 
    Document   : retrive
    Created on : 6 Sep, 2022, 12:58:01 AM
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
        response.sendRedirect("index.jsp");
    }
    else{
        if(request.getParameter("category").trim().length()==0){
            response.sendRedirect("dashboard.jsp?empty=1");
        }
        else{
            try{
                int sn=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                Statement st=cn.createStatement();
                ResultSet rs=st.executeQuery("select MAX(sn) from admin_category");
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
                String category=request.getParameter("category");
                PreparedStatement ps=cn.prepareStatement("insert into admin_category values(?,?,?)");
                ps.setInt(1,sn);
                ps.setString(2,code);
                ps.setString(3,category);
                if(ps.executeUpdate()>0){
                    response.sendRedirect("dashboard.jsp?success=1");
                }
                else{
                     response.sendRedirect("dashboard.jsp?again=1");
                }
                cn.close();
            }
            catch(Exception er){
                out.print(er.getMessage());
            }
        }
    }
%>