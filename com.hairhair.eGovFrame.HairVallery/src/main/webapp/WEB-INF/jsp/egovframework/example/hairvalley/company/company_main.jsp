<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- === BEGIN HEADER === -->
	<jsp:include page="/hairvalley_page_header.do" flush="false"/>
	<!-- === END HEADER === -->
<!-- === BEGIN CONTENT === -->
		<div id="content" class="container">
			<div class="row margin-vert-30">
				<div class="col-md-12">
					<div class="company-content-header" style="width: 50%">
						<h2>등록된 업체 목록</h2>
					</div>
					<!-- Filter Buttons -->
					<div>
						<div class="input-group input-group-lg">
					      <input type="text" class="form-control" placeholder="검색어 입력" id="searchInput">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button" id="searchBtn"><i class="fa-search"></i>검색</button>
					      </span>
					    </div><!-- /input-group -->
					    <div>
					    	<c:if test="${query !=null}">
						    	<br />
						      	<p>검색어 '${query}'에 해당되는 검색결과</p>
					      	</c:if>
					    </div>
					</div>
					<!-- End Filter Buttons -->
				</div>
				<div class="portfolio-group col-md-12 margin-top-30 no-padding">
					<div class="row">
						<!-- Portfolio Item -->
						<c:forEach var="companyList" items="${companyList}">
							<div class="portfolio-item col-md-4 design">
								<div class="image-hover">
									<a href="/sample/companyContent.do?company_name=${companyList.company_name}">
										<figure>
											<img src="${companyList.company_image}">
											<div class="overlay">
	<!-- 											<a class="expand" href="#">Image Link</a> -->
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
<script>
$("#searchBtn").on("click", function(){
	var msg = $("#searchInput").val();
	location.href = "companySearchAddr.do?query="+msg;
	
	var alertMsg = "검색어 '"+msg+"'을(를) 검색합니다.";
	
	alert(alertMsg);
	
	$("#searchInput").val("");
});
$("#searchInput").keyup(function(e) {
	  if (e.which === 13) {
		  var msg = $("#searchInput").val();
		  location.href = "companySearchAddr.do?query="+msg;
		  var alertMsg = "검색어 '"+msg+"'을(를) 검색합니다.";
		  alert(alertMsg);
		  $("#searchInput").val("");
	  }
	});
</script>

</body>
</html>