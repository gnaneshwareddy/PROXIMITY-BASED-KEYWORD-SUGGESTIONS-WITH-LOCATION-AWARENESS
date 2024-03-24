<%-- 
    Document   : fooddetails
    Created on : Apr 28, 2016, 11:04:58 AM
    Author     : java3
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String breakfast=request.getParameter("break");
    String refrsh=request.getParameter("resh");
    String lunch=request.getParameter("lunch");
   String snacks=request.getParameter("snacks");
    String dinner=request.getParameter("dinner");
//    String des=request.getParameter("des");
//    String images=request.getParameter("file");
//  String rate=request.getParameter("rate");
  try{
//   Class.forName("org.sqlite.JDBC");
//  Connection con=DriverManager.getConnection("jdbc:sqlite:/home/ibn/Desktop/Nadanapathy/NetBeansProjects/multi-autority _cloud_storage/multiauthority");
 
         
//       
     
   Connection con=Dbconnection.getConnection();
     // Connection con = 
   
  Statement st=con.createStatement();
  int i=st.executeUpdate("INSERT INTO food VALUES('"+id+"','"+name+"','"+breakfast+"','"+refrsh+"','"+lunch+"','"+snacks+"','"+dinner+"')");
   
   if(i!=0){
     //  out.println("<script>alert('registered')</script>");
      response.sendRedirect("food.jsp?msg=success");
   }
   else {
   response.sendRedirect("food.jsp?msgg=failed");
  }
  con.close();
  }
  catch(Exception e){
      out.println(e.getMessage());
  }
    
    
    %>
