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
					<form action="companyPortfolioInsertImpl.do" method="post" id="myForm" enctype="multipart/form-data">
						<div class="col-md-9">
							<div class="company-content-header">
								<h2><i class="glyphicon glyphicon-picture"></i> 포트폴리오 추가</h2>
							</div>
							<div class="col-md-12" style="margin: 5px auto;">
<!-- 								<div class="dropdown" id="mydropdown"> -->
<!-- 								  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true"> -->
<!-- 								    종류 -->
<!-- 								    <span class="caret"></span> -->
<!-- 								  </button> -->
<!-- 								  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1"> -->
<!-- 								    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">남자</a></li> -->
<!-- 								    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">여자</a></li> -->
<!-- 								  </ul> -->
<!-- 								</div> -->
								<label>제목</label>
								<div class="row margin-bottom-20">
									<div class="col-md-12">
										<input class="form-control" type="text" name="portfolio_title" required>
									</div>
								</div>
								<label>내용</label>
								<div class="row margin-bottom-20">
									<div class="col-md-12">
										<textarea rows="12" class="form-control" name="portfolio_content" required></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<div class="col-md-6">
										<label for="company_portfolio_main_img">메인 이미지 첨부(1개)</label>
						        		<input name="company_portfolio_main_img" type="file" required />
									</div>
									<div class="col-md-6">
										<label for="company_portfolio_imgList">이미지 첨부(복수개 가능)</label>
						        		<input name="company_portfolio_imgList" type="file" multiple="multiple"/>
									</div>
									<div class=" btn btn-group" style="margin-top:20px">
										<button type="submit" class="btn btn-blue">확인</button>
							            <a href="javascript:history.go(-1)">
							            <button id="backBtn" type="button" class="btn btn-aqua" >뒤로가기</button>
							            </a>
						            </div>
								</div>
				            </div>
			            </div>
		            </form>  
				</div>
			</div>
			<!-- End Main Column -->
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