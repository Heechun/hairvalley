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
<style type="text/css">
	table tr td{
		text-align:center;
	}
</style>
<link href="assets/css/pgwslideshow.css" rel="stylesheet">
<link href="assets/css/pgwslideshow_light.css" rel="stylesheet">
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="assets/js/pgwslideshow.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('.pgwSlideshow').pgwSlideshow();
});
</script>
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
			<div class="col-md-12 margin-top-30">
				<div id="hornav" class="pull-right visible-lg">
					<ul class="nav navbar-nav">
						<li><a href="/sample/hairvalley_main.do">Home</a></li>
						<li><a href="/sample/bid_boardList.do">입찰 게시판</a></li>
						<li><a href="companyMain.do">업체 소개</a></li>
						<li><a href="#">서비스안내</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>
			<!-- End Top Menu -->
		</div>
	</div>
		<!-- === BEGIN CONTENT === -->
	<div id="content" class="container">
		<div class="row margin-vert-30">
			<!-- Side Column -->
			
			<!-- Main Column -->
			<div class="col-md-12">
				<div class="blog-post">
					<div class="blog-item-header">
						<h2>
							<a href="#"> ${bidBoardContent.title} </a>
						</h2>
					</div>
					<br />

					<div class="blog-author panel panel-default margin-bottom-30">
						<div class="panel-heading">
							<h3>${bidBoardContent.title}</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12">
									<ul class="pgwSlideshow" style="padding:0px; margin:0px">
										<c:forEach items="${bidBoardContentFaceImages}" var="images">
											<li><img src="${images.image_url}"></li>
										</c:forEach>
									</ul>
									<div class="table-responsive">
										<table class="table table-bordered">
											<tr>

												<th>번호</th>

												<td>${bidBoardContent.text_num}</td>

												<th>작성자</th>

												<td>${bidBoardContent.user_id}</td>

												<th>작성일</th>

												<td>${bidBoardContent.reg_date}</td>

												<th>조회수</th>

												<td>${bidBoardContent.hit}</td>


											</tr>
											<tr>
												<th colspan="2">요구 사항</th>
												<td colspan="8">커트 : ${bidBoardContent.cut} <br /> 펌 :
													${bidBoardContent.perm} <br /> 염색 : ${bidBoardContent.dye}
												</td>


											</tr>

											<tr>

												<th colspan="2">추가 요청 사항</th>

												<td colspan="8" style="text-align: left;">${bidBoardContent.add_request}</td>

											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- End About the Author -->
						<!-- Comments -->
						<div
							class="blog-recent-comments panel panel-default margin-bottom-30">
							<div class="panel-heading">
								<h3>Comments</h3>
							</div>
							<ul class="list-group">
								<li class="list-group-item">
									<div class="row">
										<div class="col-md-2 profile-thumb">
											<a href="#"> <img class="media-object"
												src="assets/img/profiles/99.jpg" alt="">
											</a>
										</div>
										<div class="col-md-10">
											<h4>Great Article</h4>
											<p>Donec id erum quidem rerumd facilis est et expedita
												distinctio lorem ipsum dolorlit non mi portas sats eget
												metus. Fusce dapibus, tellus ac cursus commodo, tortor
												mauris condimentum nibh, ut fermentum massa justo sit amet
												risus. Etiam porta sem malesuada magna..</p>
											<span class="date"><i class="fa fa-clock-o"></i> 5
												hours ago</span>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="row">
										<div class="col-md-2 profile-thumb">
											<a href="#"> <img class="media-object"
												src="assets/img/profiles/53.jpg" alt="">
											</a>
										</div>
										<div class="col-md-10">
											<h4>A quick question</h4>
											<p>At vero eos et accusam et justo duo dolores et ea
												rebum. Stet clita kasd gubergren, no sea takimata sanctus
												est Lorem ipsum dolor sit amet.</p>
											<p>Donec id erum quidem rerumd facilis est et expedita
												distinctio lorem ipsum dolorlit non mi portas sats eget
												metus. Fusce dapibus, tellus ac cursus commodo, tortor
												mauris condimentum nibh, ut fermentum massa justo sit amet
												risus. Etiam porta sem malesuada magna.</p>
											<span class="date"><i class="fa fa-clock-o"></i> 12
												May 2013</span>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="row">
										<div class="col-md-2 profile-thumb">
											<a href="#"> <img class="media-object"
												src="assets/img/profiles/37.jpg" alt="">
											</a>
										</div>
										<div class="col-md-10">
											<h4>Thank you!</h4>
											<p>At vero eos et accusam et justo duo dolores et ea
												rebum. Stet clita kasd gubergren, no sea takimata sanctus
												est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
												consetetur sadipscing elitr, sed diam nonumy eirmod tempor
												invidunt ut labore et dolore magna aliquyam erat, sed diam
												voluptua.</p>
											<span class="date"><i class="fa fa-clock-o"></i> 10
												May 2013</span>
										</div>
									</div>
								</li>


								<!-- Comment Form -->
								<li class="list-group-item">
									<div class="blog-comment-form">
										<div class="row margin-top-20">
											<div class="col-md-12">
												<div class="pull-left">
													<h3>Leave a Comment</h3>
												</div>
											</div>
										</div>
										<div class="row margin-top-20">
											<div class="col-md-12">
												<form>
													<label>Name</label>
													<div class="row margin-bottom-20">
														<div class="col-md-7 col-md-offset-0">
															<input class="form-control" type="text">
														</div>
													</div>

													<label>Email <span>*</span></label>
													<div class="row margin-bottom-20">
														<div class="col-md-7 col-md-offset-0">
															<input class="form-control" type="text">
														</div>
													</div>

													<label>Message</label>
													<div class="row margin-bottom-20">
														<div class="col-md-11 col-md-offset-0">
															<textarea class="form-control" rows="8"></textarea>
														</div>
													</div>

													<p>
														<button class="btn btn-primary" type="submit">Send
															Message</button>
													</p>
												</form>
											</div>
										</div>
									</div>
								</li>
								<!-- End Comment Form -->
							</ul>

						</div>
						<!-- End Comments -->
					</div>

				</div>
			</div>
			<!-- End Blog Post -->

		
		</div>
	</div>
	<!-- End Main Column -->

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

	<!-- End Footer Menu -->

	<script type="text/javascript" src="js/myJs.js" type="text/javascript"></script>
	<!-- JS -->
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
