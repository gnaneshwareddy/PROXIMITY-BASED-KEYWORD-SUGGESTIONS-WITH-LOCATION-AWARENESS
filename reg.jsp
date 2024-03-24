<%-- 
    Document   : reg.jsp
    Created on : Apr 25, 2016, 12:28:26 PM
    Author     : java3
--%>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>PROXIMITY-BASED KEYWORD SUGGESTIONS WITH LOCATION AWARENESS</title>
  <script>
                             function validate(){
       
        var password=document.form1.pass.value;
//        var cpass=document.form1.repass.value;
       
        
                             if(password==0){
            alert("Enter your password");
            document.form1.pass.focus();
            
            return false;
        }
                              if(cpass==0){
            alert("Enter your password cofirmation");
            document.form1.repass.focus();
            
            
            return false;
        }
        if(pass!=cpass){
            alert("Incorrect Confiorm password");
            document.form1.pass.focus();
            
            return false;
        }
                             }
        </script>
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
            if (request.getParameter("msg") != null) {%>
        <script>alert('Registration Successfully ');</script>
        <%}

        %>

  <body class="tm-gray-bg">
  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  					<!--<a href="#" class="tm-site-name">Hotel</a>-->	
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
						<ul>
							<li><a href="index_1.html">Home</a></li>
							<li><a href="about.html" class="active">User</a></li>
							<li><a href="tours.html">Admin</a></li>
							<li><a href="contact.html">LAS</a></li>
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
<!--					<h1 class="tm-banner-title"><span class="tm-yellow-text">Tour</span> Packages</h1>
					<p class="tm-banner-subtitle">For Your Vacations</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	-->
				</div>
		      <img src="img/imagebg.png" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
                                 <h1> <a style="color:    #fff;font-size: 50px" >PROXIMITY-BASED KEYWORD SUGGESTIONS WITH LOCATION AWARENESS</a></h1>
					
				</div>
		      <img src="img/banner-2.jpg" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
                                 <h1> <a style="color:    #fff;font-size: 50px" >PROXIMITY-BASED KEYWORD SUGGESTIONS WITH LOCATION AWARENESS</a></h1>
					
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
			      <img src="img/imagesreg.jpg" alt="image" />
			      <div class="flex-caption">
                                   <form name="form1" style="color:black;" onsubmit="return validate();" onsubmit="return formValidation();" action="registrationaction.jsp" method="get" >

                                 
     
                                <h2>Registration Form</h2><br/>
                                <label style="font-size: 20px;margin-left: 70px">Name</label><input type="text" class="textbox" placeholder="" required style="margin-left: 150px;" name="name"/><br><br>
                                <label style="font-size: 20px;margin-left: 70px">Password</label><input type="password" class="textbox" placeholder="" required style="margin-left: 110px;" name="pass"/><br><br>
                                <label style="font-size: 20px;margin-left: 70px">Mail id</label><input type="text" class="textbox" placeholder="" required style="margin-left: 140px;" name="mailid"/><br><br>
                                <label style="font-size: 20px;margin-left: 70px">Gender</label>
                                
                                 <select name="gender" class="textbox" required style="margin-left: 180px">
                        <option  selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select><br /><br />
                    <label style="font-size: 20px;margin-left: 70px">Location</label><input type="text" class="textbox" placeholder="" required style="margin-left: 120px;" name="location"/><br><br>

                    
<!--                                 <label style="font-size: 20px;margin-left: 70px"> Name</label><input type="text" class="textbox" placeholder="" required style="margin-left: 150px;" name="name"/><br /><br />
                    <label style="font-size: 20px;margin-left: 70px">password</label><input type="password" class="textbox" placeholder="" required style="margin-left: 280px;" name="pass"/><br /><br />
                     <label style="font-size: 20px;margin-left: 70px">Mail id</label><input type="text" class="textbox" placeholder="" required style="margin-left: 180px;" name="mailid"/><br /><br />
                     <label style="font-size: 20px;margin-left: 70px">Gender</label>
                    <select name="gender" class="textbox" required style="margin-left: 180px">
                        <option  selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select><br /><br />
                      <label style="font-size: 20px;margin-left: 70px">Location </label><input type="text" class="textbox" placeholder="" required style="margin-left:  160px;" name="location"/><br /><br />-->
                       <input type="submit" class="myButton" style="margin-left: 150px" value="SignUp"/>
                       <input type="submit" class="myButton" style="margin-left: 150px" value="Clear"/>
                     
                                  </form>
                              </div>
                              </div>
        </ul>
                        </li>
                        </div>
                                  
                              </section>            
                                  
                                  
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

