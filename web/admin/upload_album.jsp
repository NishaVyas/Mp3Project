<%-- 
    Document   : upload_album
    Created on : 7 Sep, 2022, 1:09:51 PM
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
   if(email!=null && session.getAttribute(email)!=null){
         if(request.getParameter("cat_code")==null||request.getParameter("album_code")==null){
           response.sendRedirect("dashboard.jsp");   
         }
        else{
         String cat_code=request.getParameter("cat_code");
         String album_code=request.getParameter("album_code");
         String contentType = request.getContentType();
         String imageSave=null;
         byte dataBytes[]=null;
         String saveFile=null;
         if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
         {
         DataInputStream in = new DataInputStream(request.getInputStream());
         int formDataLength = request.getContentLength();
         dataBytes = new byte[formDataLength];
         int byteRead = 0;
         int totalBytesRead = 0;
         while (totalBytesRead < formDataLength)
         {
         byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
         totalBytesRead += byteRead;
         }
         String file = new String(dataBytes);
         saveFile = album_code+".jpg";
         
         int lastIndex = contentType.lastIndexOf("=");
         String boundary = contentType.substring(lastIndex + 1, contentType.length());
         int pos;
         pos = file.indexOf("filename=\"");
         pos = file.indexOf("\n", pos) + 1;
         pos = file.indexOf("\n", pos) + 1;
         pos = file.indexOf("\n", pos) + 1;
         int boundaryLocation = file.indexOf(boundary, pos) - 4;
         int startPos = ((file.substring(0, pos)).getBytes()).length;
         int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
         try
         {
         FileOutputStream fileOut = new FileOutputStream(request.getRealPath("/")+"/admin/profile/"+saveFile);

         fileOut.write(dataBytes, startPos, (endPos - startPos));
         fileOut.flush();
         fileOut.close();
         response.sendRedirect("album.jsp?success=1&cat_code="+cat_code);
         }
         catch (Exception e){
            response.sendRedirect("album.jsp?again=1cat_code="+cat_code);      
         }
       }
      }
    }
    else{
       response.sendRedirect("index.jsp");  
    }
%>