<%-- 
    Document   : hotel
    Created on : Apr 30, 2016, 11:07:58 AM
    Author     : java3
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String uname=request.getParameter("uname");
    String mobile=request.getParameter("mobile");
    String address=request.getParameter("address");
   String room=request.getParameter("room");
    
  try{
//   Class.forName("org.sqlite.JDBC");
//  Connection con=DriverManager.getConnection("jdbc:sqlite:/home/ibn/Desktop/Nadanapathy/NetBeansProjects/multi-autority _cloud_storage/multiauthority");
 
         
//       
     
   Connection con=Dbconnection.getConnection();
     // Connection con = 
   
  Statement st=con.createStatement();
  int i=st.executeUpdate("INSERT INTO booking VALUES('"+id+"','"+name+"','"+uname+"','"+mobile+"','"+address+"','"+room+"')");
   
   if(i!=0){
     //  out.println("<script>alert('registered')</script>");
      response.sendRedirect("booking.jsp?msg=Hotel booking successfully");
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
