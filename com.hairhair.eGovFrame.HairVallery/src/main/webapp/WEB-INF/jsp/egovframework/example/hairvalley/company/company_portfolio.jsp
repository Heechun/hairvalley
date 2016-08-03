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
					<!-- Side Column -->
					<!-- Begin Sidebar Menu -->
					<div class="col-md-3">
						<ul class="list-group sidebar-nav" id="sidebar-nav">
							<li class="list-group-item list-toggle">
								<a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-typography"><i class="fa-info-circle"></i>업체소개</a>
									<ul id="collapse-typography" class="collapse">
										<li><a href="companyContent.do?company_name=${company_name}">
										<i class="fa-info-circle"></i>업체소개</a></li>
										<li><a href="#">
										<i class="fa-group"></i>조직구성원</a></li>
									</ul>
							</li>
							<li class="list-group-item">
								<a href="companyPortfolio.do?company_name=${company_name}"><i class="fa-picture-o"></i>포트폴리오</a>
							</li>
							<li class="list-group-item">
								<a href="companyReview.do"><i class="fa-camera-retro"></i>이용후기</a>
							</li>
						</ul>
					</div>
					<!-- End Sidebar Menu -->
					<!-- End Side Column -->
					<!-- === BEGIN CONTENT === -->
					<div class="col-md-7">
						<h2>${company_name}의 포트폴리오</h2>
						<!-- Filter Buttons -->
						<div class="portfolio-filter-container margin-top-20">
							<ul class="portfolio-filter">
								<li class="portfolio-filter-label label label-primary">
									필터 :
								</li>
								<li>
									<a href="#" class="portfolio-selected btn btn-default" data-filter="*">All</a>
								</li>
								<li>
									<a href="#" class="btn btn-default" data-filter=".man">남자</a>
								</li>
								<li>
									<a href="#"  class="btn btn-default"data-filter=".woman">여자</a>
								</li>
							</ul>
						</div>
						<!-- End Filter Buttons -->
					
							<div class="portfolio-group col-md-10 margin-top-30 no-padding">
								<div class="row">
									<!-- Portfolio Item -->
									<c:forEach var="portfolioList" items="${portfolioList}">
										<div class="portfolio-item col-md-4 man">
											<div class="image-hover">
												<a href="/sample/companyPortfolioContent.do?company_name=${portfolioList.company_name}
												&portfolio_title=${portfolioList.portfolio_title}
												&portfolio_content=${portfolioList.portfolio_content}">
													<figure>
														<img src="${portfolioList.portfolio_image}">
														<div class="overlay">
														</div>
													</figure>
													<h3 class="margin-top-20">${portfolioList.portfolio_title}</h3>
													<p class="margin-top-10">${portfolioList.portfolio_content}</p>
												</a>
											</div>
											<div class="clearfix"></div>
										</div>
									</c:forEach>
									<!-- //Portfolio Item// -->
								</div>
							</div>
						</div>
					</div>
					<!-- === END CONTENT === -->
			</div>
		</div>
		<!-- === END CONTENT === -->

<!-- <script type="text/javascript" src="js/myJs.js" type="text/javascript"></script> -->
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
<script>
	$(document).ready(function() {
	    $('.pgwSlideshow').pgwSlideshow();
	});
</script>
<script src="assets/js/pgwslideshow.js" type="text/javascript"></script>
</body>
</html>