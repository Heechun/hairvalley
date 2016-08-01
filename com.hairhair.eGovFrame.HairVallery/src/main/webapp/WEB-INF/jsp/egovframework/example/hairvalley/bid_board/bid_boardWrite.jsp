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
	<!-- === END HEADER === -->
	<!-- === BEGIN CONTENT === -->
	<div id="content" class="container">
		<div id="welcome" class="background-white">
			<div class="container">
				<div class="row margin-vert-40">
					<!-- Main Text -->
					<div class="col-md-12">
						<h2 class="text-center article-title">입찰 등록</h2>
					</div>
					<!-- End Main Text -->
				</div>
				<hr>
				<div class="row margin-vert-40">
				 	<div class="col-md-4">
					 	<h3 class="margin-bottom-10">My Face Images</h3>
					 		<img src="assets/img/blog/image1.jpg" id="myFace_main">
							<div class="thumbs-gallery" style="max-width:80%">
								
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
	
								
							</div>	
							
							<div class="clearfix"></div>
							<p><em>* 사진이 등록되면 표시됩니다.</em></p>
							<h3 class="margin-bottom-10">My Reference Images</h3>
					 		<img src="assets/img/blog/image1.jpg" id="myRef_main">
							<div class="thumbs-gallery" style="max-width:80%">
								
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
	
								
							</div>	
							
							<div class="clearfix"></div>
							<p><em>* 사진이 등록되면 표시됩니다.</em></p>
						</div>
							<!-- End Thumbs Gallery -->
				 	
                    <div class="col-md-8">
                        <form class="signup-page" enctype="multipart/form-data" action="/sample/bid_insertBoardData.do"  method="POST" >
                            <label><strong>제 목</strong>
                            	<span class="color-red">*</span>
                            </label>
                            <input name="title" class="form-control margin-bottom-20"  placeholder="ex) *제목을 입력해주세요." />
                            <hr>  
                            <div class="row">
								<div class="col-sm-6">
									<label><strong>이 름</strong>
		                            	<span class="color-red">*</span>
		                            </label>
		                            <input name="user_id"  class="form-control margin-bottom-20"  placeholder="ex) 홍길동" />
								</div>
								<div class="col-sm-6">
									 <label><strong>예상 가격</strong>
                                		<span class="color-red">*</span>
		                            </label>
		                   			<input name="req_price"  class="form-control margin-bottom-20"  placeholder="* ex) 40,000" />
								</div>
							</div>
							<hr>  
							<div class="row">
								<div class="col-md-12">
									<label><strong>내 사진 등록</strong>
										<span class="color-red">*</span>
									</label>
									<input name="user_faceImg" type="file" multiple="multiple"  onchange="readFaceImageURL(this);" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>참고 사진 등록</strong>
										<span class="color-red">*</span>
									</label>
									<input name="user_refImg" type="file"  multiple="multiple" onchange="readRefImageURL(this);" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>펌 종류</strong>
										<span class="color-red">*</span>
									</label><br>
									<input name="perm"  class="form-control margin-bottom-20"  placeholder="ex) 일반펌" />
								</div>      
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>커트 종류</strong>
										<span class="color-red">*</span>
									</label><br>
									<input name="cut"  class="form-control margin-bottom-20"  placeholder="ex) 투블럭컷" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>염색 색상</strong>
										<span class="color-red">*</span>
									</label><br>
									<input name="dye"  class="form-control margin-bottom-20"  placeholder="ex) 갈색" />
								</div>
							</div>
							<hr>
                            <label><strong>추가 요청 사항</strong>
                            	<span class="color-red">*</span>
                            </label>
                            <div class="row margin-bottom-20">
                                <div class="col-md-12 col-md-offset-0">
                                    <textarea name="add_request"  rows="8" class="form-control" placeholder="* 문의하실 내용을 입력해주세요." ></textarea>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-lg-6">
                                </div>
                                <div class="col-lg-6 text-right">
                                	<input type="button" class="btn btn-aqua" type="button" value="되돌아가기"  onclick="move('/sample/bid_boardList.do');"/>
                                    <input type="submit" class="btn btn-blue" value="작성 완료" />
                                </div>
                            </div>
                        </form>
                       
                    </div>
                    <!-- End Register Box -->
                </div>
				
			</div>
		</div>
		</div>
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