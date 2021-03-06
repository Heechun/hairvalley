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
			<!-- Thumbs Gallery -->
				<div class="col-md-9 margin-bottom-20">
					<div class="company-content-header">
						<h2><i class="glyphicon glyphicon-picture"></i> ${company_name}의 자세히 보기</h2>
					</div>
					<div>
					
						<ul class="pgwSlider">
							<c:forEach items="${imageList}" var="imageList">
								<li><img src="${imageList.image_url}"></li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="company-content-box">
						<label for="content">자세한 소개</label>
						<h3>${portfolioVO.portfolio_title}</h3>
						<p class="lead" id="content">${portfolioVO.portfolio_content}</p>
					</div>
					<!-- End Thumbs Gallery -->
					<div class=" btn btn-group" style="margin-top:20px">
					<c:if test="${isMaster =='yes'}">
						<a href="companyPortfolioDelete.do?idx=${portfolioVO.idx}">
						<button type="button" class="btn btn-red" >삭제하기</button>
						</a>
					</c:if>
			            <a href="javascript:history.go(-1)">
			            <button id="backBtn" type="button" class="btn btn-aqua" >뒤로가기</button>
			            </a>
		            </div>
				</div>
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
<script src="assets/js/pgwslider.js" type="text/javascript"></script>
<script>
$(document).ready(function() {
    $('.pgwSlider').pgwSlider();
});
</script>
</body>
</html>