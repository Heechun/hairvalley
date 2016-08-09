<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<!-- === BEGIN HEADER === -->
	<jsp:include page="/hairvalley_page_header.do" flush="false"/>
	<!-- === END HEADER === -->
	<!-- === BEGIN CONTENT === -->
	<div id="content" class="container" style="padding-top: 30px;">
		<div id="welcome" class="background-white">
			<div class="container">
				<div class="row margin-vert-40">
					<div
						class="panel panel-primary margin-bottom-30 margin-top-30">
						<div class="panel-heading">
							<h3 class="panel-title">입찰 미완료 목록 조회</h3>
						</div>
						<div class="panel-body">
							<div class="row margin-vert-10">
								<div class="col-md-12">
									
									<div class="table-responsive">
										<table class="table table-bordered" style="margin-top:44px;">
											<thead>
												<tr>
													<th><strong>번 호</strong></th>
													<th><strong>제 목</strong></th>
													<th><strong>작성자</strong></th>
													<th><strong>작성일</strong></th>
													<th><strong>조회수</strong></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${bidBoardList}" var="bidBoardList">
													<tr>

														<td>${bidBoardList.content_num}</td>
														<!-- jstl의 표현식은 스크립트릿과 속성이 같아서 어디에쓰나 우선됨 -->

														
														<td>
															<a href="/sample/bid_selectBoardContent.do?text_num=${bidBoardList.text_num}&content_num=${bidBoardList.content_num}">
															<c:if test="${bidBoardList.is_contract == 1}">
															<span style="color:blue;">[계약완료]</span>&nbsp;&nbsp;
															</c:if>
															<c:if test="${bidBoardList.is_contract == 0}">
															<span style="color:red;">[계약 미완료]</span>&nbsp;&nbsp;
															</c:if>
															${bidBoardList.title}
															<c:if test="${bidBoardList.offer_count > 0}"><span style="color:red;">&nbsp;[${bidBoardList.offer_count}]</span></c:if>
															</a>
														</td>
														

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
													<li><a href="companyBidContent.do?company_id=${company_id}&page=${page-1}">&laquo;</a>
													</li>
												</c:if>
												<c:if test="${page == 1}">
													<li class="disabled"><a href="#">&laquo;</a></li>
												</c:if>
												<c:forEach var="num" begin="1" end="${totalpage}" step="1">
													<c:if test="${page == num}">
														<li class="active"><a
															href="companyBidContent.do?company_id=${company_id}&page=${num}">${num}</a></li>
													</c:if>
													<c:if test="${page != num}">
														<li><a href="companyBidContent.do?company_id=${company_id}&page=${num}">${num}</a>
														</li>
													</c:if>
												</c:forEach>
												<li><c:if test="${fn:length( bidBoardList ) < 10}">
														<li class="disabled"><a href="#">&raquo;</a></li>
													</c:if> <c:if test="${fn:length( bidBoardList ) == 10}">
														<li><a href="companyBidContent.do?company_id=${company_id}&page=${page+1}">&raquo;</a>
														</li>
													</c:if></li>
											</ul>
										</div>
										
									</div>
								</div>
							</div>
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