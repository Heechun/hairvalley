<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Title -->
	<title>회원가입</title>
	<!-- Meta -->
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	<!-- Favicon -->
	<link href="favicon.html" rel="shortcut icon">
	<!-- Bootstrap Core CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
	<!-- Template CSS -->
	<link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
	<!-- Google Fonts-->
	<link href="http://fonts.googleapis.com/css?family=Lato:400,300" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="pre_header" class="visible-lg"></div>
	<div id="header" class="container">
		<div class="row">
			<!-- Logo -->
			<div class="logo">
				<a href="hairvalley_main.do" title="">
					<img src="assets/hairvalley_images/logo.PNG" alt="Logo" style="padding-top:26px;"/>
				</a>
			</div>
			<!-- End Logo -->
			<!-- Top Menu -->
			<div class="col-md-12 margin-top-30">
				<div id="hornav" class="pull-right visible-lg">
					<ul class="nav navbar-nav">
						<li><a href="hairvalley_main.do">Home</a></li>
						<li><a href="/sample/bid_boardList.do">입찰 게시판</a></li>
						<li><a href="companyMain.do">업체 소개</a></li>
						<li><a href="#">서비스안내</a></li>
						<li><a href="portfolio-3-column.html">고객센터</a></li>
					</ul>				
				</div>
			</div>
			<div class="clear"></div>
				<!-- End Top Menu -->
			</div>
		</div>
		<!-- === END HEADER === -->
		<!-- === BEGIN CONTENT === -->
		<div id="content" class="container">
			<div class="container">
				<div class="row margin-vert-30">
					<!-- Login Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
						<div class="login-page">
							<div class="login-header margin-bottom-30">
								<h2 class="text-center">회원가입</h2>
							</div>
							<div class="row text-center">
								<div class="col-md-6">
									<button type="button" class="btn btn-info btn-lg btn-block" onclick="location.href='/sample/hairvalley_register.do'">
									<i class="fa fa-user fa-5x"></i><br />개인 회원</button>
								</div>
								<div class="col-md-6">
									<button type="button" class="btn btn-success btn-lg btn-block" onclick="location.href='/sample/companySignup.do'">
									<i class="fa fa-group fa-5x"></i><br />기업 회원</button>
								</div>
							</div>
						</div>
					</div>
					<!-- End Login Box -->
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->


<!-- JS -->
<script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/js/scripts.js"></script>
<!-- Isotope - Portfolio Sorting -->
<script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
<!-- Mobile Menu - Slicknav -->
<script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
<!-- Animate on Scroll-->
<script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
<!-- Slimbox2-->
<script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
<!-- Modernizr -->
<script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
<!-- End JS -->


</body>
</html>