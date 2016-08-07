<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<!-- Title -->
<title>Welcome to HairValley</title>
<!-- Meta -->
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- Favicon -->
<link href="favicon.html" rel="shortcut icon">
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
<!-- Google Fonts-->
<link href="http://fonts.googleapis.com/css?family=Lato:400,300"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div id="pre_header" class="visible-lg"></div>
	<div id="header" class="container">
		<div class="row">
			<!-- Logo -->
			<div class="logo">
				<a href="/sample//hairvalley_main.do" title=""> <img
					src="assets/hairvalley_images/logo.PNG" alt="Logo"
					style="padding-top: 26px;" />
				</a>
			</div>
			<!-- End Logo -->
			<!-- Top Menu -->
			<div class="col-md-10 col-md-offset-2 margin-top-10">
				<div id="hornav" class="visible-lg">
					<ul class="nav navbar-nav" style="padding-top: 20px;">
						<li><a href="/sample/bid_boardList.do">입찰 게시판</a></li>
						<li><a href="companyMain.do">업체 소개</a></li>
						<li><a href="#">서비스안내</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
					<%-- 
					<div class="nav navbar-nav navbar-right panel-sm panel-primary invert" style="margin-top:0;">
						<div class="panel-heading">
							<i class="fa fa-user"></i>wonjong님 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-sm btn-blue" type="button" onclick="move('/sample/hairvalley_register.do');">
								<i class="fa fa-sign-out"></i>로그아웃
							</button>
						</div>
						<div class="panel-body">Lorem...</div>
					</div>

--%>

					<form class="navbar-form" action="/sample/hairvalley_login.do"
						method="post" style="margin-top: 20px;">
						<div class="form-group" style="margin-bottom: 1px;">
							<input type="text" name="user_id" placeholder="ID or 사업자번호"
								class="form-control" style="width: auto;">
						</div>
						<div class="form-group">
							<input type="password" name="user_pw" placeholder="Password"
								class="form-control" style="width: auto;">
						</div>
						<button class="btn btn-sm btn-blue" type="submit">
							<i class="fa fa-user"></i> Login
						</button>
						<button class="btn btn-sm btn-aqua" type="button"
							onclick="move('/sample/hairvalley_register.do');">
							<i class="fa fa-sign-in"></i> Join
						</button>
					</form>

				</div>
			</div>
			<div class="clear"></div>
			<!-- End Top Menu -->
		</div>
	</div>
	<!-- === END HEADER === -->
	<!-- === BEGIN CONTENT === -->
	<div id="content" class="container" style="padding-top: 30px;">
		<div class="row margin-top-30">

			<!-- Carousel Slideshow -->
			<div id="carousel-example" class="carousel slide"
				data-ride="carousel">
				<!-- Carousel Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example" data-slide-to="1"></li>
					<li data-target="#carousel-example" data-slide-to="2"></li>
				</ol>
				<!-- End Carousel Indicators -->
				<!-- Carousel Images -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="assets/hairvalley_images/1.PNG">
					</div>
					<div class="item">
						<img src="assets/hairvalley_images/2.PNG">
					</div>
					<div class="item">
						<img src="assets/hairvalley_images/3.PNG">
					</div>
				</div>
				<!-- End Carousel Images -->
				<!-- Carousel Controls -->
				<a class="left carousel-control" href="#carousel-example"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#carousel-example"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
				<!-- End Carousel Controls -->
			</div>
			<!-- End Carousel Slideshow -->
		</div>
		<div class="row margin-top-20">
			<!-- Main Text -->
			<div class="col-md-12">
				<h2>이 달의 업체</h2>
			</div>
			<!-- End Main Text -->
		</div>
		<div class="row">
			<!-- Portfolio -->
			<!-- Portfolio Item -->
			<div class="portfolio-item col-sm-4 animate fadeIn">
				<div class="image-hover">
					<a href="#">
						<figure>
							<img src="assets/hairvalley_images/4.PNG" alt="image1">
						</figure>
						<h3 class="margin-top-20">서울 압구정점 리챠드</h3>
						<p class="margin-top-10 margin-bottom-20"></p>
						<div class="btn btn-default">
							<a class="info"
								href="http://localhost/build/substance/index.php/quam-nunc-putamus">Read
								more</a>
						</div>
					</a>
				</div>
			</div>
			<!-- //Portfolio Item// -->
			<!-- Portfolio Item -->
			<div class="portfolio-item col-sm-4 animate fadeIn">
				<div class="image-hover">
					<a href="#">
						<figure>
							<img src="assets/hairvalley_images/5.PNG" alt="image2">

						</figure>
						<h3 class="margin-top-20">대전 타임월드점 리챠드</h3>
						<p class="margin-top-10 margin-bottom-20"></p>
						<div class="btn btn-default">
							<a class="info"
								href="http://localhost/build/substance/index.php/quam-nunc-putamus">Read
								more</a>
						</div>
					</a>
				</div>
			</div>
			<!-- //Portfolio Item// -->
			<!-- Portfolio Item -->
			<div class="portfolio-item col-sm-4 animate fadeIn">
				<div class="image-hover">
					<a href="#">
						<figure>
							<img src="assets/hairvalley_images/6.PNG" alt="image3">
						</figure>
						<h3 class="margin-top-20">세종 CGV점 리챠드</h3>
						<p class="margin-top-10 margin-bottom-20"></p>
						<div class="btn btn-default">
							<a class="info"
								href="http://localhost/build/substance/index.php/quam-nunc-putamus">Read
								more</a>
						</div>
					</a>
				</div>
			</div>
			<!-- //Portfolio Item// -->
			<!-- End Portfolio -->
		</div>

	</div>

	<!-- === END CONTENT === -->

	<!-- Footer Menu -->
	<div id="footer">
		<div class="container">
			<div class="row">
				<div id="copyright" class="col-md-4">
					<p>(c) 2014 Your Copyright Info</p>
				</div>
				<div id="footermenu" class="col-md-8">
					<ul class="list-unstyled list-inline pull-right">
						<li><a href="#" target="_blank">Sample Link</a></li>
						<li><a href="#" target="_blank">Sample Link</a></li>
						<li><a href="#" target="_blank">Sample Link</a></li>
						<li><a href="#" target="_blank">Sample Link</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- JS -->
	<script type="text/javascript" src="js/myJs.js" type="text/javascript"></script>
	<script type="text/javascript" src="assets/js/jquery.min.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="assets/js/scripts.js"></script>
	<!-- Isotope - Portfolio Sorting -->
	<script type="text/javascript" src="assets/js/jquery.isotope.js"
		type="text/javascript"></script>
	<!-- Mobile Menu - Slicknav -->
	<script type="text/javascript" src="assets/js/jquery.slicknav.js"
		type="text/javascript"></script>
	<!-- Animate on Scroll-->
	<script type="text/javascript" src="assets/js/jquery.visible.js"
		charset="utf-8"></script>
	<!-- Slimbox2-->
	<script type="text/javascript" src="assets/js/slimbox2.js"
		charset="utf-8"></script>
	<!-- Modernizr -->
	<script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
	<!-- End JS -->
</body>
</html>
<!-- === END FOOTER === -->