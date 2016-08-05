<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Title -->
	<title>포트폴리오</title>
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
	<link href="assets/css/pgwslideshow.css" rel="stylesheet">
	<link href="assets/css/pgwslideshow_light.css" rel="stylesheet">
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
			<div class="row margin-vert-30">
				<!-- Main Column -->
				<div class="col-md-12">
					<div class="col-md-2">
						<br/><br/>
						<a href="companyContent.do?company_name=${company_name}">
						<button class="btn btn-primary" type="button">
							<i class="fa fa-picture-o"></i> 업체소개
						</button></a><br/><br/>
						<a href="companyPortfolio.do?company_name=${company_name}">
						<button class="btn btn-primary" type="button">
							<i class="fa fa-picture-o"></i> 포트폴리오
						</button></a><br/><br/>
						<button class="btn btn-primary" type="button">
							<i class="fa fa-picture-o"></i> 조직구성원
						</button><br/><br/>
						<a href="companyReview.do">
						<button class="btn btn-primary" type="button">
							<i class="fa fa-picture-o"></i> 이용 후기
						</button></a><br/><br/>
					</div>
			<!-- Thumbs Gallery -->
				<div class="col-md-10 margin-bottom-20">
					<h3 class="margin-bottom-10">포트폴리오</h3>
					<div class="thumbs-gallery">
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image1.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image1.jpg" alt="image1.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image2.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image2.jpg" alt="image2.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image3.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image3.jpg" alt="image3.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image4.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image4.jpg" alt="image4.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image6.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image6.jpg" alt="image6.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image7.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image7.jpg" alt="image7.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image8.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image8.jpg" alt="image8.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image9.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image9.jpg" alt="image9.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image92.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image92.jpg" alt="image92.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image94.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image94.jpg" alt="image94.jpg">
						<i></i></a>
						
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image95.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image95.jpg" alt="image95.jpg">
						<i></i></a>
						
						<a class="thumbBox" rel="lightbox-thumbs" href="assets/img/thumbsgallery/image96.jpg">
							<img src="assets/img/thumbsgallery/thumbs/image96.jpg" alt="image96.jpg">
						<i></i></a>
						
						</div>			<div class="clearfix"></div>
					</div>
					<!-- End Thumbs Gallery -->
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