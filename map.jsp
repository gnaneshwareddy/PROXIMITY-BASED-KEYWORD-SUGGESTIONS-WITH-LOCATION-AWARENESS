<%-- 
    Document   : map
    Created on : Apr 27, 2016, 12:30:26 PM
    Author     : java3
--%>

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
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript"></script>
<script>
var directionDisplay, map;
var directionsService = new google.maps.DirectionsService();
var geocoder = new google.maps.Geocoder();
function initialize() {
  // set the default center of the map
  var latlng = new google.maps.LatLng(51.764696,5.526042);
  // set route options (draggable means you can alter/drag the route in the map)
  var rendererOptions = { draggable: true };
  directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);
  // set the display options for the map
  var myOptions = {
    zoom: 14,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    mapTypeControl: false
  };
  // add the map to the map placeholder
  map = new google.maps.Map(document.getElementById("map_canvas"),myOptions);
  // bind the map to the directions
  directionsDisplay.setMap(map);
  // point the directions to the container for the direction details
  directionsDisplay.setPanel(document.getElementById("directionsPanel"));
  // start the geolocation API
  if (navigator.geolocation) {
    // when geolocation is available on your device, run this function
    navigator.geolocation.getCurrentPosition(foundYou, notFound);
  } else {
    // when no geolocation is available, alert this message
    alert('Geolocation not supported or not enabled.');
  }
}
function notFound(msg) {  
  alert('Could not find your location :(')
}
function foundYou(position) {
  // convert the position returned by the geolocation API to a google coordinate object
  var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
  // then try to reverse geocode the location to return a human-readable address
  geocoder.geocode({'latLng': latlng}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      // if the geolocation was recognized and an address was found
      if (results[0]) {
        // add a marker to the map on the geolocated point
        marker = new google.maps.Marker({
            position: latlng,
            map: map
        });
        // compose a string with the address parts
        var address = results[0].address_components[1].long_name+' '+results[0].address_components[0].long_name+', '+results[0].address_components[3].long_name
        // set the located address to the link, show the link and add a click event handler
        $('.autoLink span').html(address).parent().show().click(function(){
          // onclick, set the geocoded address to the start-point formfield
          $('#routeStart').val(address);
          // call the calcRoute function to start calculating the route
          calcRoute();
        });
      }
    } else {
      // if the address couldn't be determined, alert and error with the status message
      alert("Geocoder failed due to: " + status);
    }
  });
}
function calcRoute() {
  // get the travelmode, startpoint and via point from the form   
  var travelMode = $('input[name="travelMode"]:checked').val();
  var start = $("#routeStart").val();
  var end = $("#routeEnd").val();
  // compose a array with options for the directions/route request
  var request = {
    origin: start,
    destination: end,
    unitSystem: google.maps.UnitSystem.IMPERIAL,
    travelMode: google.maps.DirectionsTravelMode[travelMode]
  };
  // call the directions API
  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      // directions returned by the API, clear the directions panel before adding new directions
      $('#directionsPanel').empty();
      // display the direction details in the container
      directionsDisplay.setDirections(response);
    } else {
      // alert an error message when the route could nog be calculated.
      if (status == 'ZERO_RESULTS') {
        alert('No route could be found between the origin and destination.');
      } else if (status == 'UNKNOWN_ERROR') {
        alert('A directions request could not be processed due to a server error. The request may succeed if you try again.');
      } else if (status == 'REQUEST_DENIED') {
        alert('This webpage is not allowed to use the directions service.');
      } else if (status == 'OVER_QUERY_LIMIT') {
        alert('The webpage has gone over the requests limit in too short a period of time.');
      } else if (status == 'NOT_FOUND') {
        alert('At least one of the origin, destination, or waypoints could not be geocoded.');
      } else if (status == 'INVALID_REQUEST') {
        alert('The DirectionsRequest provided was invalid.');         
      } else {
        alert("There was an unknown error in your request. Requeststatus: nn"+status);
      }
    }
  });
}
</script>
<%-- MAP JAVASCRIPT END --%>
    </head>
    <body onLoad="initialize()">
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
							
							<li><a href="newmap2.jsp">Search</a></li>
                                                        <li><a href="graph.jsp">Graph</a></li>
				                        <li><a href="search.jsp">Logout</a></li>
						</ul>
					</nav>		
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
        
	<div id="content">
						<div id="left_column">
							 
							<div class="left_news_box">
								<div class="left_news_top"></div>
								
								<div class="left_news_bot"></div>
							</div>
                                                    <div style=" right:80px;margin: 15px;border: 1px solid palevioletred;width: 900px;height: 700px;border-radius: 20px;overflow:scroll;overflow-x:hidden;overflow-y:scroll;background-image: url('images/a.jpg');float: left">
                                                        <center> <h1 style="font-size: 35px;color: goldenrod;margin-top: 5px;font-family: Times New Roman"> Map View </h1></center><br><br>
                    <div>
                       
                        <%-- MAP DIV START --%>

        <div id="content">
            <form action="#" onSubmit="calcRoute();return false;" id="routeForm">
                <center>
  <label>
      <font color=pink><font size="3">Start</font> <br />
                  <input id="routeStart" name="key" required="required" type="text" placeholder="ENTER SOURCE PLACE" style="width: 400px;margin-left: 50px;height: 30px;border-radius: 50px;font-size: 15px;text-align: center" /><br>
      </center>
</label>
                    <center>
        <label>
              <font color=pink><font size="3">End </font><br />
                        <input id="routeEnd" name="key" required="required" type="text" placeholder="ENTER DESTINATION PLACE" style="width: 400px;margin-left: 50px;height: 30px;border-radius: 50px;font-size: 15px;text-align: center" /><br><br>
            </center>
  </label>
                        <center>
  <label><input type="radio" name="travelMode" value="DRIVING" checked /> Driving</label>
  
  <label><input type="radio" name="travelMode" value="TRANSIT" /> Public transport</label>
  <label><input type="radio" name="travelMode" value="WALKING" /> Walking</label>
  <input type="submit" value="GO" required="required" type="text" placeholder="chennai" style="width: 150px;margin-left: 50px;height: 30px;border-radius: 1px;font-size: 15px;background:goldenrod;text-align: center" /><br><br>
          </form>
            <form  method="get" action="search.jsp" >   
                <input type="submit" value="BACK" required="required" type="text" placeholder="chennai" style="width: 150px;margin-left: 50px;height: 30px;border-radius: 1px;font-size: 15px;background:goldenrod;text-align: center" /><br><br></form>
            <div id="map_canvas" style="width:100%; height:500px"></div>
            <div id="directionsPanel" style="width:100%; height:500p;background:white">
            </center>
</div>
  
        </div>
                        <%-- MAP DIV END --%>
               
                    </div>
          </div>
                                                    </div>
							
						</div>
						
						<div class="clear"></div>
					</div>
					
					<div id="footer">
						<!--footer begins -->

<div class="row-top">
					<div class="row-padding">
						<div class="wrapper">
							
							
							
							
						</div>
					</div><div class="clear"></div>
<!--							<div id="footer_bottom">
								<p>Copyright  2012.  Do not remove Designed by <a href="http://www.metamorphozis.com/free_templates/free_templates.php" title="Free Website Templates">Free Website Templates</a> end </p>
		       					<p><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></p>
							</div>-->
						</div>
					</div>
					
				
       
    </body>
</html>
