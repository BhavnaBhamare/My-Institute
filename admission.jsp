<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"    import="java.sql.*"
    import="com.pojo.*"
    import="com.model.*"
    import="java.util.*"
    %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SSP TECHNOLOGY || ADMISSION</title>
	<link rel="icon" href="../images/avatar-01.png" type="image/png">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="SSP TECHNOLOGY KARVE NAGAR PUNE" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" media="screen" href="css/examples.css" />
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<style>
		#lablecolor{
			color: #82DF9E;
		}
	</style>

	</head>
	<body>
		<%
				
		int no = Integer.parseInt(request.getParameter("aid"));
		BLManager bl=new BLManager();
		List<Enquiry>l2=bl.searchByEnq(no);
	    session.setAttribute("list1",l2);
			%>
				
<div class="colorlib-loader"></div>
	
	<div id="page">
	<nav class="colorlib-nav" role="navigation">
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="top">
							<div class="row">
								<div class="col-md-6">
									<div id="colorlib-logo"><a href="index.html">SSP<span>TECHNOLOGY</span></a></div>
								</div>
								<div class="col-md-3">
									<div class="num">
										<span class="icon"><i class="icon-phone"></i></span>
										<p>+91-7774045552<br>+91-9822454164</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="loc">
										<span class="icon"><i class="icon-location"></i></span>
										<p>2nd Floor, SM Tower <br> Above Jijamat Sahkari Bank, Karve Nagar Pune</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="menu-wrap">
				<div class="container">
					<div class="row">
						<div class="col-xs-10"    >
							<div class="menu-1">
								<ul>
						          <li ><a href="enquiry.jsp">View Enquiry </a></li>	
									<li ><a href="AdmById.jsp">Admissions</a></li>	
								
									<li ><a href="FeeById.jsp">Fees Details</a></li>
									
									<li ><a href="place.jsp">Placements</a></li>
									<li><a href="grade.jsp">Results</a></li>
									<li><a href="LogoutServlet">LogOut</a></li>
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<aside id="colorlib-hero" class="breadcrumbs">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(images/img_bg_r.jpg);">
		   		<div class="overlay"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 col-md-pull-2 slider-text">
			   				<div class="slider-text-inner">
			   					<h1>Admission<strong>Form</strong></h1>
									<h2>You are on the <strong>RIGHT</strong> track</h2>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>
	<div id="colorlib-contact">
		<div class="container">
			<div class="row">
				<div class="promo-carousel" id="grouploop-1">
						<div class="item-wrap">
						  <div class="item active">
							<a href="#">Get 5,000 Off On your Internship</a>
						  </div>
						  <div class="item">
							<a href="#">Super Special- Enrol For Two Course and get 5000 Off</a>
						  </div>						 
						</div>
				</div>
				<div class="col-md-12 animate-box">					
					<div class="row contact-info-wrap">
						<div class="col-md-3">
							<p><span><i class="icon-location"></i></span> 2nd Floor SM Tower <br> Karve Nagar Pune</p>
						</div>
						<div class="col-md-3">
							<p><span><i class="icon-phone"></i></span> <a href="tel://1234567920">+ 91 7774045552</a></p>
						</div>
						<div class="col-md-3">
							<p><span><i class="icon-mail"></i></span> <a href="mailto:ssptechnology5@gmail">hr@cstechnosys.com</a></p>
						</div>
						<div class="col-md-3">
							<p><span><i class="icon-globe-outline"></i></span> <a href="#">cstechnosys.com</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-12 animate-box">
					<div class="row">
						<div class="col-md-6">
							<h2>Personal Details</h2>
							<c:forEach items="${sessionScope.list1}" var="l">
							<form action="AdmServlet"    method="post">									
								<div class="row form-group">
									<div class="col-md-6">
								
									
									
									
								
									
										<label for="subject" id="lablecolor" >Admission-ID</label>		
																										
											<input type="text"   name="id"   class="form-control"    value="${l.enqid}">
									
									
									
							</div>	
						
							
							
							
					
							
								</div>		
							<div class="row form-group">			
									<div class="col-md-6">
										<label id="lablecolor" for="lname">First Name</label>
										<input type="text" name="fname" class="form-control"    id="fname"    
										value="${l.fname}"	>								</div>
									
								
				
								
									<div class="col-md-6">
										<label id="lablecolor" for="lname">Last Name</label>
										<input type="text" name="lname" class="form-control" value="${l.lname}"	>	
									</div>
									
									
								</div>
								<div class="row form-group">
									<div class="col-md-12">
										<label id="lablecolor" for="email">Email</label>
										<input type="email" name="email" class="form-control" value="${l.email}"	>	
									</div>
								</div>
								<div class="row form-group">
									<div class="col-md-12">
									<label id="lablecolor" for="email">Contact</label>
										<input type="text" name="contact"class="form-control"    		value="${l.contact}"	>	
									
																	
									</div>
								</div>
								
					
							</c:forEach>	
								
								
								<div class="row form-group">
									<div class="col-md-6">
										<label for="subject" id="lablecolor" >Internship On</label>																					
												  <select class="form-control" name="intern"   required>
												    <option value="">Select Options</option>
														<option>Core Java</option>
													<option>Advance Java</option>
													<option>Hibernate</option>
													<option>Android</option>
													<option>Python</option>
												  </select>	
									</div>
															
								</div>
								
								
								
								<div class="row form-group">
									<div class="col-md-6">
											<label for="batchtime" id="lablecolor" >Batch Time</label>																					
													  <select class="form-control" name="batchtime"   required>
														<option value="">Select Options</option>
														<option>9-11 am</option>
														<option>11-1 pm</option>
														<option>1-3 pm</option>
														<option>3-5 pm</option>
														<option>4-6 pm</option>
														<option>Other</option>
													  </select>											
										</div>							
									
								</div>
								<div class="row form-group">
										<div class="col-md-6">
												<label for="bcode" id="lablecolor" >Batch Code</label>
												<input type="text" name="bcode" class="form-control" placeholder="Batch Code"    id="batchcode">
										</div>																																							
										<div class="col-md-6">
											<label for="tfees" id="lablecolor" >Total Fees</label>
											<input type="text" name="tfees" class="form-control mb" placeholder="Total Fees"   id="tfees">
										</div>																													
								</div>
								<div class="row form-group">																																							
										<div class="col-md-6">
											<label for="btime" id="lablecolor" >1st Instalment</label>
											<input type="text" name="finst" class="form-control mb" placeholder="1st Instalment"    id="finst"> 
										</div>																				
									<div class="col-md-6">
										<label for="admitdate" id="lablecolor" >Admission Date</label>
										<input type="date" name="admdate" class="form-control" placeholder="Instalment Date"    id="admdate"    required>
									</div>
								</div>			
							
								
								

								<div class="row form-group">
									<div class="col-md-12">
										<label for="FormControlFile1" id="lablecolor" >Photo Upload</label>
										<input type="file" class="form-control-file" id="FormControlFile1"     name="pic">
										<span style="font-size:small">*Only PNG/JPG/JPEG-file is required</span>
									</div>
								</div>

<script>
function sucessfull()
{
	
	var batchcode = document.getElementById("batchcode").value;
	 var tfees = document.getElementById("tfees").value;
	
			 var finst = document.getElementById("finst").value;
	
		
			 var admdate = document.getElementById("admdate").value;
	

			 if(batchcode == null || batchcode == "")
			  {
			  alert("Batch code is required");
			    return false;
			  }

			 else if(isNaN(tfees)||tfees==null||tfees==""||tfees<0)
				 
				 {
				 
				 alert("Enter valid fees");
				 return false;
				 
				 }
			 
			 else if(finst==null||finst=="")
				 
			 {
			 
			 alert("Enter valid instalment fees");
			 return false;
			 
			 }
			 else
				 {
				 
				 }
}
</script>

								<div class="form-group text-center">
									<input type="submit" value="submit" class="btn btn-primary" onclick=" return sucessfull()">
								</div>
							</form>
						</div>							
					</div>		
				</div>
			</div>
		</div>
	</div>


	<footer id="colorlib-footer" role="contentinfo">
		<div class="overlay"></div>
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-3 colorlib-widget">
						<h3>Head Office</h3>
						<ul class="colorlib-footer-links">
							<li>2nd Floor, SM Tower <br> Above Jijamat Sahkari Bank, Karve Nagar Pune</li>
							<li><a href="#"><i class="icon-phone"></i> +91- 7774045552</a></li>
							<li><a href="mailto:ssptechnology5@gmail.com"><i class="icon-mail"></i> ssptechnology5@gmail</a></li>
					
							<li>Mon-Sat : 9:00 am to 6:00 pm</li>		
						</ul>
					</div>
					<div class="col-md-2 colorlib-widget">
						<h3>Technology</h3>
						<p>
							<ul class="colorlib-footer-links">
								<li>Core Java</li>
								<li>Advance Java</li>
								<li>Hibernate</li>
								<li>Android</li>
								<li>Python</li>
							</ul>
						</p>
					</div>
					
				
			</div>
		</div>
		<div class="row copyright">
			<div class="col-md-12 text-center">
				<p>
					<small class="block">&copy;
Copyright &copy; All rights reserved |<i class="icon-heart" aria-hidden="true"></i> by <a href="https://ssptechnosys.com" target="_blank">SSP TECHNOLOGY</a>				
				</p>
			</div>
		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
	<script src="js/style.js"></script>
	
  <script type="text/javascript" src="js/grouploop-1.0.0.min.js"></script>
	<script>
    $('#grouploop-1').grouploop({
      velocity: 2,
      forward: false,
      pauseOnHover: true,
      childNode: ".item",
      childWrapper: ".item-wrap",
      complete: function () { console.log("Initialized a grouploop with id: " + $(this).attr('id')) }
    });
    $('#grouploop-2').grouploop({
      velocity: 5,
      forward: true,
      pauseOnHover: false,
      childNode: ".item",
      childWrapper: ".item-wrap"
    });
    $('#grouploop-3').grouploop({
      velocity: 1,
      forward: false,
      pauseOnHover: true,
      childNode: ".item",
      childWrapper: ".item-wrap"
    });
    $('#grouploop-4').grouploop({
      velocity: 3,
      forward: true,
      pauseOnHover: true,
      childNode: ".item",
      childWrapper: ".item-wrap"
    });
  </script>

	</body>
</html>

