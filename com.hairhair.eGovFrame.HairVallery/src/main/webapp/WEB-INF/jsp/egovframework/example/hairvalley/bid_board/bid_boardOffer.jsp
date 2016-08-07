<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
			<div class="row margin-vert-30">
				<!-- Register Box -->
				<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
					<form class="signup-page" action="/sample/bid_boardOfferInsert.do?text_num=${text_num}&content_num=${content_num}" method="post">
						<div class="signup-header">
							<h2>제안 등록</h2>
						</div>
						<hr>
						<label><strong>업체 ID</strong><span class="color-red">*</span></label>
						<input class="form-control margin-bottom-20" type="text" name="company_id">
						
								
						<label><strong>제안 가격</strong> <span class="color-red">*</span></label>
						<input class="form-control margin-bottom-20" type="text" name="offer_price"  placeholder="10000">

			
						<label><strong>제안 내용</strong> <span class="color-red">*</span></label>
						<div class="row margin-bottom-20">
							<div class="col-md-12 col-md-offset-0">
								<textarea name="add_offer" rows="8" class="form-control"
									placeholder="* 제안하실 구체적 내용을 입력해주세요."></textarea>
							</div>
						</div>
							
						<hr>
						
						<div class="row">
							<div class="col-lg-8">
								
							</div>
							<div class="col-lg-4 text-right">
								<button class="btn btn-primary" type="submit">제안 등록</button>
							</div>
						</div>
					</form>
				</div>
				<!-- End Register Box -->
			</div>
		</div>
		<br/></br>
		<br/>
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

	<!-- End Footer Menu -->

	<script type="text/javascript" src="js/myJs.js" type="text/javascript"></script>
	<!-- JS -->
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