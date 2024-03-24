<%-- 
    Document   : contact
    Created on : Apr 26, 2016, 12:22:48 PM
    Author     : java3
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="DB.Dbconnection"%>
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

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body class="tm-gray-bg">
  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  					
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
						<ul>
							<li><a href="index_1.html">Home</a></li>
							<li><a href="contact.jsp">User detail</a></li>
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
                                  <h1> <a style="color:    #fff;font-size: 50px" >PROXIMITY-BASED KEYWORD SUGGESTIONS WITH LOCATION AWARENESS</a></h1>
<!--					<h1 class="tm-banner-title">Find <span class="tm-yellow-text">Tour</span> Programs</h1>
					<p class="tm-banner-subtitle">For Your Destinations</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	-->
				</div>
		      <img src="img/imagebg.png" />
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
		      <img src="img/imagebg.png" />
		    </li>
		  </ul>
		</div>			
	</section>

	<!-- gray bg -->
        <section class="container tm-home-section-1" id="more">
		<div class="row">
			<!-- slider -->
			<div class="flexslider flexslider-about effect2">
			  <ul class="slides">
			    <li>
			      <img src="img/h3.jpg" alt="image" />
			      <div class="flex-caption">
                                  <h2> User Profile</h2>
                                  <%
                        
                        Connection con = Dbconnection.getConnection();

                        System.out.println("Database connected");

                        Statement st = con.createStatement();
                        ResultSet rt = st.executeQuery("select * from reg ");
                        

   %>
                                    <table border="1" style="text-align: center;margin-left: 100px">
                            <tr style="background-color: burlywood">
                                <td align="center" width="5%">Name</td><br><td width=5%">Password</td><br><td>mailid</td><td>gender</td><td>location</td>
                            </tr>
                      <%                  while (rt.next()) {
                                    String name = rt.getString("name");
                                    String pass = rt.getString("password");
                                    String mailid = rt.getString("mailid");
                                    String gender = rt.getString("gender");
                                    String location = rt.getString("location");
                                    
                            %>
                            <tr>
                                <td><%=name%></td><td align="center">****</td><td><%=mailid%></td><td><%=gender%></td><td><%=location%></td>
<!--                                <td><a href="binarycode.jsp" >Activate</a></td>-->
                            </tr>
                            <%
                                }
                                con.close();
                            %>
                        </table>

      </div>

  
	
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="js/moment.js"></script>							<!-- moment.js -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
   	<script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		// HTML document is loaded. DOM is ready.
		$(function() {

			$('#hotelCarTabs a').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			})

        	$('.date').datetimepicker({
            	format: 'MM/DD/YYYY'
            });
            $('.date-time').datetimepicker();
           
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
		
		// Load Flexslider when everything is loaded.
		$(window).load(function() {	  		
		    $('.flexslider').flexslider({
			    controlNav: false
		    });
	  	});
	</script>
 </body>
 </html>
