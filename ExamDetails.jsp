<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import="org.hibernate.Session"
 
import="com.pojo.Admission"   
 import="java.util.List"
 import="com.model.BLManager"
 import="com.pojo.Grade"
 %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SSP TECHNOLOGY || VIEW STUDENT LIST</title>
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
								<li ><a href="enquiry.jsp">Enquiry Details</a></li>		
								 <li ><a href="place.jsp">Placements</a></li>		
								<li ><a href="ViewStudent.jsp">Student Details</a></li>
								<li><a href="ExamDetails.jsp">Exam-Details</a></li>																	
								<li><a href="   LogoutServlet">LogOut</a></li>		
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>	
	
				
<%
BLManager bl=new BLManager();
List<Grade>l1=bl.getAllGrades();
session.setAttribute("list2",l1);

%>
	
<div id="colorlib-contact">
		<div class="container">				
			<div class="row">												
				<div class="col-md-12 animate-box">
				

					<h2 style="text-align:center" id="lablecolor">Result Details</h2>
							<table class="table table-hover table-bordered table-striped">
								<thead>
								  <tr>
									<th scope="col">Full Name</th>
									<th scope="col">Course</th>
									<th scope="col">Total<br/> Marks</th>
									
									<th scope="col">Obtained<br/> Marks</th>
									
									<th scope="col">Status</th>
								
									
								  </tr>
								</thead>
								<tbody>
							<c:forEach items="${sessionScope.list2}" var="l">

<tr>
<td>${l.name} </td>
<td>${l.course}</td>
<td>${l.tmarks}</td>
<td>${l.omarks}</td>
<td>${l.status}</td>
</tr>
</c:forEach>	

		
					</tbody>
					    </table>
					 
								
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
							
							<li>Mon-Sat : 9:00 am to€“ 6:00 pm</li>							
							
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

