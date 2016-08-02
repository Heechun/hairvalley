<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Title -->
	<title>Substance - Professional Bootstrap Template</title>
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
						<li><a href="pages-about-us.html">서비스 안내</a></li>
						<li><a href="companyMain.do">업체 소개</a></li>
						<li><a href="pages-faq.html">입찰게시판</a></li>
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
						<button class="btn btn-primary" type="button">
							<i class="fa fa-picture-o"></i> 업체소개
						</button><br/><br/>
						<button class="btn btn-primary" type="button">
							<i class="fa fa-picture-o"></i> 포토폴리오
						</button><br/><br/>
						<button class="btn btn-primary" type="button">
							<i class="fa fa-picture-o"></i> 조직구성원
						</button><br/><br/>
						<a href="companyReview.do">
						<button class="btn btn-primary" type="button">
							<i class="fa fa-picture-o"></i> 이용 후기
						</button></a><br/><br/>
					</div>
					<div class="col-md-10">
						<div id="accordion" class="panel-group">
			                <div class="panel panel-default">
			                    <div class="panel-heading">
			                        <h4 class="panel-title">
			                        <a class="accordion-toggle" data-parent="#accordion" data-toggle="collapse">
			                            <b>${companyIntro.company_name}</b><br/>작성자 : ${companyIntro.company_id}
			                        </a>
			                        </h4>
			                    </div>
			                    <div id="collapse-One" class="accordion-body collapse in">
			                        <div class="panel-body">
			                            <div class="row">
			                                <div class="col-md-5"><img src="assets/img/frontpage/filler1.jpg" alt="filler image"></div>
			                                <div class="col-md-7">
			                                	<div id="title">
			                                		<h3 class="no-margin no-padding">${companyIntro.title}</h3>
			                                	</div>
			                                    <div id="content">
			                                    	<p>${companyIntro.content}</p>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			            
<!-- 			            글쓴사람만 수정할수있게 c:if사용 필요 -->
			            <a href="companyContentUpdate.do?title=${companyIntro.title}&content=${companyIntro.content}">
			            	<button type="button" class="btn btn-blue pull-right" >수정하기</button>
			            </a>
					</div>
				</div>
				<!-- End Main Column -->
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