<%-- 
    Document   : userlogin
    Created on : Apr 25, 2016, 5:01:35 PM
    Author     : java3
--%>

<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String name = request.getParameter("name");
    String password = request.getParameter("pass");
//    int status = Integer.parseInt(request.getParameter("status"));

    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from reg where name='" +name+ "' AND password='" +password+ "'" );
                    if (rs.next()) {
                        session.setAttribute("name", rs.getString("name"));
                        session.setAttribute("password", rs.getString("password"));
//                        session.setAttribute("role", rs.getString("role"));
//                        session.setAttribute("uid", rs.getString("uid"));
                        response.sendRedirect("search.jsp?msg=success");
                    } else {
                        response.sendRedirect("uerlogin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
    
    
    %>
