<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- === BEGIN HEADER === -->
	<jsp:include page="/hairvalley_page_header.do" flush="false"/>
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
			<!-- Portfolio Item -->
				<c:forEach var="companyList" items="${companyList}">
					<div class="portfolio-item col-md-4 design">
						<div class="image-hover">
							<a href="/sample/companyContent.do?company_name=${companyList.company_name}">
								<figure>
									<img src="${companyList.company_image}">
									<div class="overlay">
									</div>
								</figure>
								<h3 class="margin-top-20">${companyList.company_name}</h3>
								<p class="margin-top-10">${companyList.company_location}</p>
								<ul class="list-inline company-details-icons">
									<li>
										<a class="info" href="/sample/companyContent.do?company_name=${companyList.company_name}">
										<i class="fa-info-circle"></i>업체소개</a>
									</li>
									<li>
										<a class="info" href="companyPortfolio.do?company_name=${companyList.company_name}">
										<i class="fa-picture-o"></i>포트폴리오</a>
									</li>
									<li>
										<a class="info" href="companyReview.do?company_name=${companyList.company_name}">
										<i class="fa-camera-retro"></i>이용후기</a>
									</li>
								</ul>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>
				</c:forEach>
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
	
	

	
</body>
</html>
<!-- === END FOOTER === -->