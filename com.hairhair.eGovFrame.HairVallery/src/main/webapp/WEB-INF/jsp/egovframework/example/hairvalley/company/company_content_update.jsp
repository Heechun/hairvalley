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
					<form action="companyContentUpdateImpl.do" method="post" id="myForm" enctype="multipart/form-data">
						<div class="col-md-9">
							<h2>업체소개 수정</h2><br />
							<label for="title">제목</label>
							<br />
							<input type="text" name="title" id="title" value="${contentVO.title}"/>
							<br />
							<label for="content">내용</label>
							<br />
							<textarea name="content" id="content" cols="70" rows="20">${contentVO.content}</textarea>
							<br />
				        	<label for="company_intro_imgList">이미지 첨부</label>
				        	<input name="company_intro_imgList" type="file" multiple="multiple" style="color:white;"/>
		<!-- 			            글쓴사람만 수정할수있게 c:if사용 필요 -->
							<button type="submit" class="btn btn-blue pull-right" >수정하기</button>
				            <a href="javascript:history.go(-1)">
				            	<button id="backBtn" type="button" class="btn btn-aqua pull-right" >뒤로가기</button>
				            </a>
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