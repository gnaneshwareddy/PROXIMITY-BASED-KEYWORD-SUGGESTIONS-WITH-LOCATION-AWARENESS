<%-- 
    Document   : search
    Created on : Apr 25, 2016, 6:32:34 PM
    Author     : java3
--%>

<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>PROXIMITY-BASED KEYWORD SUGGESTIONS WITH LOCATION AWARENESS</title>
<!--
Holiday Template
http://www.templatemo.com/tm-475-holiday
-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="css/flexslider.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
  </head>
   <body class="tm-gray-bg">
  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
<!--  					<a href="#" class="tm-site-name">Holiday</a>	-->
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
						<ul>
							<li><a href="index_1.html">Home</a></li>
							<li><a href="map.jsp">Search</a></li>
							<li><a href="contact1.jsp">Data detail</a></li>
<!--                                                        <li><a href="index_1.html">LBS</a></li>-->
							<li><a href="index_1.html">Logout</a></li>
						</ul>
					</nav>		
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
	
	<!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
                                  <h1> <a style="color:    #fff;font-size: 50px" >PROXIMITY-BASED KEYWORD SUGGESTIONS WITH LOCATION AWARENESS/a></h1>
<!--					<h1 class="tm-banner-title">Find <span class="tm-yellow-text">Tour</span> Programs</h1>
					<p class="tm-banner-subtitle">For Your Destinations</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	-->
				</div>
		      <img src="img/images1234.png" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
                                  <h1> <a style="color:    #fff;font-size: 50px" >PROXIMITY-BASED KEYWORD SUGGESTIONS WITH LOCATION AWARENESS</a></h1>
<!--					<h1 class="tm-banner-title">Lorem <span class="tm-yellow-text">Ipsum</span> Dolor</h1>
					<p class="tm-banner-subtitle">Wonderful Destinations</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	-->
				</div>
		      <img src="img/banner-2.jpg" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
                                  <h1> <a style="color:    #fff;font-size: 50px" >PROXIMITY-BASED KEYWORD SUGGESTIONS WITH LOCATION AWARENESS</a></h1>
<!--					<h1 class="tm-banner-title">Proin <span class="tm-yellow-text">Gravida</span> Nibhvell</h1>
					<p class="tm-banner-subtitle">Velit Auctor</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	-->
				</div>
		      <img src="img/images1234.png" />
		    </li>
		  </ul>
		</div>			
	</section>

	<!-- gray bg -->
<!--        <section class="container tm-home-section-1" id="more">
		<div class="row">
			 slider 
			<div class="flexslider flexslider-about effect2">
			  <ul class="slides">
			    <li>
			      <img src="img/about-1.jpg" alt="image" />
			      <div class="flex-caption">
                                  <h2> DATA DETAILS</h2>
                                  <%
                        
                        Connection con = Dbconnection.getConnection();

                        System.out.println("Database connected");

                        Statement st = con.createStatement();
                        ResultSet rt = st.executeQuery("select * from hoteldetails ");
                        

   %>
                                    <table border="1" style="text-align: center;margin-left: 100px">
                            <tr style="background-color: burlywood">
                             <td align="center" width="5%">Hotelid</td><br><td width=5%">Hotelname</td><br><td>location</td><td>mobile</td><td>address</td><td>stayingroom</td><td>rent</td><td>des</td>
                            </tr>
                      <%                  while (rt.next()) {
                                    String id = rt.getString("hotelid");
                                    String name = rt.getString("hotelname");
                                    String location= rt.getString("location");
                                    String mobile = rt.getString("mobile");
                                    String address = rt.getString("address");
                                    String room = rt.getString("stayingroom");
                                    String rent = rt.getString("rent");
                                    String des = rt.getString("des");
                            %>
                            <tr>
                                <td><%=id%></td><td><%=name%></td><td><%=location%></td><td><%=mobile%></td><td><%=address%></td><td><%=room%></td><td><%=rent%></td><td><%=des%></td>
                                <td><a href="fooddetails.jsp" >Activate</a></td>
                            </tr>
                            <%
                                }
                                con.close();
                            %>
                        </table>

      </div>-->


        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
  	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
  	<script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		$(function() {

			// https://css-tricks.com/snippets/jquery/smooth-scrolling/
		  	$('a[href*=#]:not([href=#])').click(function() {
			    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
			      var target = $(this.hash);
			      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			      if (target.length) {
			        $('html,body').animate({
			          scrollTop: target.offset().top
			        }, 1000);
			        return false;
			      }
			    }
		  	});		  	
		});
		$(window).load(function(){
			// Flexsliders
		  	$('.flexslider.flexslider-banner').flexslider({
			    controlNav: false
		    });
		  	$('.flexslider').flexslider({
		    	animation: "slide",
		    	directionNav: false,
		    	slideshow: false
		  	});
		});
	</script>
 </body>
 </html>
