<%-- 
    Document   : updatehotel
    Created on : Apr 26, 2016, 4:52:12 PM
    Author     : java3
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DB.Dbconnection"%>
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
       
   <%
             String a=request.getParameter("hid");
             System.out.println("ypur  hid"+a);
             session.setAttribute("hid", a);
             String hotelname=null;
             String location=null;
             String mobile=null;
             String address=null;
             String room=null;
             String rent=null;
             String des=null;
//             String images=null;
             
//            String location=null,hotelname=null,subname=null,phone=null,price=null,address=null, detst=null ;
//         String rommsavai=null,hid=null;
//         Integer stars = null;
         Connection con=Dbconnection.getConnection();
                 Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from hoteldetails  where  hotelid='"+a+"'");
       
        while(rs.next()){
            
            
//             stars=rs.getInt("stars");
             hotelname=rs.getString("hotelname");
              location=rs.getString("location");
             mobile=rs.getString("mobile");
             
             address=rs.getString("address");
             room=rs.getString("stayingroom");
             rent=rs.getString("rent");
             des=rs.getString("des");
//             images=rs.getString("file");
             
//             address=rs.getString("address");
//             phone=rs.getString("phone");
//             price=rs.getString("price");
//             detst=rs.getString("detst");
//             rommsavai=rs.getString("rommsavai");
//             hid=rs.getString("hidd");
             
            
            
        }
        
         %>   
   
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
							<li><a href="ahome.jsp">Data Upload</a></li>
							<li><a href="ahome1.jsp">Update</a></li>
							<li><a href="contact.html">Logout</a></li>
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
        <section class="container tm-home-section-1" id="more">
		<div class="row">
			<!-- slider -->
			<div class="flexslider flexslider-about effect2">
			  <ul class="slides">
			    <li>
			      <img src="img/h1.jpg" alt="image" />
			      <div class="flex-caption">
                                  <center> <h1> Hotel Details</h1></center>
                                  <form action="updata.jsp" style="color:black;" method="post"><br>
                                           <!--<label style="font-size: 20px;margin-left: 70px;color:black;">Hotel Id</label><input type="text" class="textbox" placeholder="" required style="margin-left: 65px;" name="id"/><br /><br />-->
                                           <label style="font-size: 20px;margin-left: 70px;color:black;">Hotel Name</label><input type="text" class="textbox" placeholder="" required style="margin-left: 30px;" name="name"/><br /><br /> 
                                           <label style="font-size: 20px;margin-left: 70px;color:black;">Location</label><input type="text" class="textbox" placeholder="" required style="margin-left: 55px;" name="location"/><br /><br />
                                           <label style="font-size: 20px;margin-left: 70px;color:black;">Mobile no</label><input type="text" class="textbox" placeholder="" required style="margin-left: 45px;" name="mobile"/><br /><br />
                                           <label style="font-size: 20px;margin-left: 70px;color:black;">Address</label><input type="text" class="textbox" placeholder="" required style="margin-left: 60px;" name="address"/><br /><br />
                                           <label style="font-size: 20px;margin-left: 70px;color:black;">Staying Room</label><input type="text" class="textbox" placeholder="" required style="margin-left: 9px;" name="room"/><br /><br />
                                           <label style="font-size: 20px;margin-left: 70px;color:black;">Rent per day</label><input type="text" class="textbox" placeholder="" required style="margin-left: 23px;" name="rent"/><br /><br />
                                           <label style="font-size: 20px;margin-left: 70px;color:black;">Description</label><input type="text" class="textbox" placeholder="" required style="margin-left: 30px;" name="des"/><br /><br /></textarea>
<!--                                        <label style="font-size: 20px;margin-left: 70px;color:black;">Rating</label><select name="text" class="textbox" placeholder="" required style="margin-left: 75px;" name="rate"/><br /><br /></textarea>  
<label style="font-size: 20px;margin-left: 70px;color:black;">Rating<br /><br /><select name="rate" class="textbox"place holder="" required style="margin-left: 100px">
                                                                                      <option  selected>Select rating</option>
                                                                                         <option value="10">10</option>
                                                                                             <option value="9">9</option>
                                                                                            <option value="8">8</option>
                                                                                            <option value="7">7</option>
                                                                                            <option value="6">6</option>
                                                                                            <option value="5">5</option>
                                                                                            <option value="4">4</option>
                                                                                             <option value="3">3</option>
                                                                                             <option value="2">2</option>
                                                                                                <option value="1">1</option>
                        
                    </select><br /><br />
                                               
        
                                           <label style="font-size: 20px;margin-left: 70px;color:black;">Hotel image</label><input type="file" class="textbox"  style="margin-left: 200px;width:250px" name="file"/><br /><br />-->
                                            <input type="submit" class="myButton" style="margin-left: 150px" value="SignUp"/>
                    &nbsp; &nbsp; <input type="reset" class="myButton" /><br></br>
                                           <!--<label style="font-size: 20px;margin-left: 70px">Profile Image<input type="file" name="file" class="textbox" style="margin-left:10px;width: 300px"/><br /><br />-->
                                  </form>
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


