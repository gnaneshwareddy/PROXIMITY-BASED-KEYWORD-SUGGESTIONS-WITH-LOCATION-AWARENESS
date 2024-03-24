<%-- 
    Document   : updata
    Created on : Apr 26, 2016, 5:04:15 PM
    Author     : java3
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DB.Dbconnection"%>
<% 
        try
                {
		String hids=null;
	String hotelname=request.getParameter("name");
        String location=request.getParameter("location");
        String mobile=request.getParameter("mobile");
        String address=request.getParameter("address");
        String room=request.getParameter("room");
        String rent=request.getParameter("rent");
        String des=request.getParameter("des");
//        String detst=request.getParameter("detst");
//        String rommsavai=request.getParameter("rommsavai");
         hids=(String)session.getAttribute("hid");
         
        System.out.println("your id is ="+hids);
        
       Connection con=Dbconnection.getConnection();
        Statement st=con.createStatement();
          System.out.println("database connected");
          int up=st.executeUpdate("update hoteldetails set hotelname='"+hotelname+"',location='"+location+"',mobile='"+mobile+"',address='"+address+"',stayingroom='"+room+"',rent='"+rent+"',des='"+des+"' where hotelid='"+hids+"'");
//        int up = st.executeUpdate("UPDATE hoteldetails SET  hotelname='" +hotelname+"', location='"+location+"',mobile ='" + mobile + "', address='"+address+"',Stayingroom ='" + room + "', rent='"+rent+"',des ='" + des+ "',  WHERE hotelid = '" + hids + "'");
            System.out.println("your id is ="+up);
        if (up != 0) {
                response.sendRedirect("updatehotel.jsp?msg=imageview");
                System.out.println("updated sucess..!");
            }
       
      else{
		response.sendRedirect("message=fail");
		
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>