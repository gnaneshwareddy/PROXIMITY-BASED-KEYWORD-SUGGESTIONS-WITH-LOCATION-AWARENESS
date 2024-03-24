<%-- 
    Document   : registrationaction
    Created on : Apr 25, 2016, 3:01:30 PM
    Author     : java3
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%
     String name=request.getParameter("name");
    String password=request.getParameter("pass");
    String mailid=request.getParameter("mailid");
    String gender=request.getParameter("gender");
    String location=request.getParameter("location");
//    String bname=request.getParameter("bank");
//    String branch1=request.getParameter("branch");
//    String cno1=request.getParameter("cno");
//  
  
  
  try{
//   Class.forName("org.sqlite.JDBC");
//  Connection con=DriverManager.getConnection("jdbc:sqlite:/home/ibn/Desktop/Nadanapathy/NetBeansProjects/multi-autority _cloud_storage/multiauthority");
 
         
//       
     
   Connection con=Dbconnection.getConnection();
     // Connection con = 
   
  Statement st=con.createStatement();
  int i=st.executeUpdate("INSERT INTO reg VALUES('"+name+"','"+password+"','"+mailid+"','"+gender+"','"+location+"')");
   
   if(i!=0){
     //  out.println("<script>alert('registered')</script>");
      response.sendRedirect("about.html?msg=success");
   }
   else {
   response.sendRedirect("reg.jsp?msgg=failed");
  }
  con.close();
  }
  catch(Exception e){
      out.println(e.getMessage());
  }
    %>