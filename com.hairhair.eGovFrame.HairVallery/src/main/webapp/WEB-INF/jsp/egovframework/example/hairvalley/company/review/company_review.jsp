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
					<div class="col-md-9">
						<div class="company-content-header">
							<h2><i class="glyphicon glyphicon-camera"></i> ${company_name}의 후기</h2>
						</div>
						<div class="table-responsive">
						<table class=" table table-bordered" >
						<thead>
							<tr height="30">												
								<th align="center" width="50"><strong>번 호</strong></th>
								<th align="center" width="250"><strong>제  목</strong></th>
								<th align="center" width="100"><strong>작성자</strong></th>
								<th align="center" width="150"><strong>작성일</strong></th>
								<th align="center" width="50"><strong>조회수</strong></th>
							</tr>
						</thead>
							<tbody>
							<c:forEach var="reviewList" items="${reviewList}" varStatus="status">
								<tr height="30">
									<td align="center" width="50">
										<c:out value=" ${size-status.count+1}"/>
									</td>
									<td width="250">
										<a href="companyReviewContent.do?review_total_idx=${reviewList.review_total_idx}">
										${reviewList.review_title}
										</a>
									</td>
									<td align="center"  width="100">${reviewList.review_id}</td>
									<td align="center"  width="150">${reviewList.review_write_date}</td>
									<td align="center"  width="50">${reviewList.review_hit}</td>
								</tr>
							</c:forEach>
							</tbody>
							
							<tr>	  
								<td colspan="5" align="center" height="40">	 
<%-- 								${pageCode} --%>
								</td>
							</tr>
						</table>
						</div>
						<div class="btn-group pull-right" role="group">
							<c:if test="${user_id != null}">
							<a href="companyReviewInsert.do">
								<button type="button" class="btn btn-primary">글쓰기</button>
								</a>
							</c:if>
						</div>
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