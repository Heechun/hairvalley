<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<!-- Title -->
	<title>Welcome to HairValley</title>
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
				<a href="/sample//hairvalley_main.do" title="">
					<img src="assets/hairvalley_images/logo.PNG" alt="Logo" style="padding-top:26px;"/>
				</a>
			</div>
			<!-- End Logo -->
			<!-- Top Menu -->
			<div class="col-md-12 margin-top-30">
				<div id="hornav" class="pull-right visible-lg">
					<ul class="nav navbar-nav">
						<li><a href="/sample/hairvalley_main.do">Home</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">F.A.Q.</a></li>
						<li><a href="#">3 Column</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contact</a></li>
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
                        <h2 class="text-center article-title">Q & A</h2>    
                    </div>
                    <!-- End Main Text -->
                </div>
           
                <div class="row margin-vert-40">
                    <div class="col-md-12">
                    <div class="table-responsive">
                    <table class="table table-bordered">
					    <thead>
					      <tr>
					        <th>번 호</th>
					        <th>제 목</th>
					        <th>작성자</th>
					        <th>작성일</th>
					        <th>조회수</th>
					      </tr>
					    </thead>
					    <tbody>
					      	<c:forEach items="${bidBoardList}" var="bidBoardList">
								<tr>
					
									<td>${bidBoardList.text_num}</td><!-- jstl의 표현식은 스크립트릿과 속성이 같아서 어디에쓰나 우선됨 -->
									
									<td>${bidBoardList.title}
					
									<td>${bidBoardList.user_id}</td>
					
									<td>${bidBoardList.reg_date}</td>
					
									<td>${bidBoardList.hit}</td>
								</tr>
							</c:forEach>
					    </tbody>
					  </table>
					  </div>
				<div class="row margin-vert-10">
						<div class="col-md-8">
						<ul class="pagination">
						   		<c:if test="${page > 1}"> 
						   			<li>
										<a href="bid_boardList.do?page=${page-1}">&laquo;</a> 
									</li>
								</c:if>
								<c:if test="${page == 1}"> 
									<li class="disabled">
										<a href="#">&laquo;</a> 
									</li>
								</c:if>
						   	<c:forEach var="num" begin="1" end="${totalpage}" step="1" >
									<c:if test="${page == num}"> 
										<li class="active">
											<a href="bid_boardList.do?page=${num}">${num}</a>
										</li>
									</c:if>
									<c:if test="${page != num}"> 
										<li>
											<a href="bid_boardList.do?page=${num}">${num}</a>
										</li>
									</c:if>
							</c:forEach>
						   	<li>
						   		<c:if test="${fn:length( bidBoardList ) < 10}"> 
							   		<li class="disabled">
										<a href="#">&raquo;</a>
									</li>
								</c:if>
								<c:if test="${fn:length( bidBoardList ) == 10}"> 
									<li>
										<a href="bid_boardList.do?page=${page+1}">&raquo;</a>
									</li>
								</c:if>
							</li>
						</ul>
							
							
							 
							
			
							
                    	</div>
                    	<div class="col-md-4">
                    		<input class="btn btn-blue" type="button" value="글쓰기"  onclick="move('/sample/bid_writeBoardData.do');" style="float:right"/>
                    		<input class="btn btn-aqua" type="button" value="처음으로"  onclick="move('/sample/bid_boardList.do');" style="float:right; margin-right:2px;"/>
                    	</div>
                    	</div>
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
							<li>
								<a href="#" target="_blank" >Sample Link</a>
							</li>
							<li>
								<a href="#" target="_blank" >Sample Link</a>
							</li>
							<li>
								<a href="#" target="_blank" >Sample Link</a>
							</li>
							<li>
								<a href="#" target="_blank" >Sample Link</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Footer Menu -->
</div>
</div>
<script type="text/javascript" src="js/myJs.js" type="text/javascript"></script>
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
<!-- === END FOOTER === -->