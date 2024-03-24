<%-- 
    Document   : adminlogin
    Created on : Apr 26, 2016, 10:38:10 AM
    Author     : java3
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String name = request.getParameter("name");
    String password = request.getParameter("pass");
 try {
                    if (name.equalsIgnoreCase("Admin") && password.equalsIgnoreCase("Admin")) {
                        response.sendRedirect("ahome.jsp?msg=success");
                    } else {
                        response.sendRedirect("adminlogin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
%>