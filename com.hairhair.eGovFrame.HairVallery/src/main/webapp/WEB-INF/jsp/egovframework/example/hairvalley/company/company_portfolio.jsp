<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- === BEGIN HEADER === -->
	<jsp:include page="/hairvalley_page_header.do" flush="false"/>
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
										<li><a href="companyStaff.do">
										<i class="fa-group"></i>조직구성원</a></li>
									</ul>
							</li>
							<li class="list-group-item">
								<a href="companyPortfolio.do?company_name=${company_name}"><i class="fa-picture-o"></i>포트폴리오</a>
							</li>
							<li class="list-group-item">
								<a href="companyReview.do?company_name=${company_name}"><i class="fa-camera-retro"></i>이용후기</a>
							</li>
						</ul>
					</div>
					<!-- End Sidebar Menu -->
					<!-- End Side Column -->
					<!-- === BEGIN CONTENT === -->
					<div class="col-md-9">
						<div class="company-content-header">
							<h2><i class="glyphicon glyphicon-picture"></i> ${company_name}의 포트폴리오</h2>
						</div>
						<!-- Filter Buttons -->
						<div class="portfolio-filter-container margin-top-20">
							<ul class="portfolio-filter">
								<li class="portfolio-filter-label label label-warning">
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
						
							<div class="portfolio-group col-md-10 margin-top-30 no-padding company-content-box">
								<div class="row">
									<!-- Portfolio Item -->
									<c:forEach var="portfolioList" items="${portfolioList}">
										<div class="portfolio-item col-md-4 ${portfolioList.portfolio_filter}">
											<div class="image-hover">
												<a href="companyPortfolioContent.do?idx=${portfolioList.idx}">
													<figure>
														<img src="${portfolioList.portfolio_image}">
														<div class="overlay">
														</div>
													</figure>
													<h3 class="margin-top-20">${portfolioList.portfolio_title}</h3>
<%-- 													<p class="margin-top-10">${portfolioList.portfolio_content}</p> --%>
												</a>
											</div>
											<div class="clearfix"></div>
										</div>
									</c:forEach>
									<!-- //Portfolio Item// -->
								</div>
							</div>
							<div class="company-button-box">
								<a href="companyPortfolioInsert.do">
					            	<button type="button" class="btn btn-blue" >추가하기</button>
					            </a>
							</div>
					</div>
					<!-- === END CONTENT === -->
			</div>
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