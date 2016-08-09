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
					<form action="companyStaffInsertImpl.do" method="post" id="myForm" enctype="multipart/form-data">
						<div class="col-md-9">
							<h1>직원소개 작성<small><br/>친절한 직원들을 자랑하세요.</small></h1><br />
							<table class=" table table-bordered table-hover table-striped" >
								<tr>
									<td><label for="staff_job">직책</label></td>
									<td><input type="text" name="staff_job" id="staff_job" placeholder="ex)매니저"/></td>
								</tr>
								<tr>
									<td><label for="staff_name">이름</label></td>
									<td><input type="text" name="staff_name" id="staff_name"/></td>
								</tr>
								<tr>
									<td><label for="staff_count">점수 (0~100)</label></td>
									<td><input type="text" name="staff_count" id="staff_count"/></td>
								</tr>
								<tr>
									<td><label for="staff_intro">직원소개</label></td>
									<td><input type="text" name="staff_intro" id="staff_intro"/></td>
								</tr>
								<tr>
									<td><label for="company_staff_img">직원 사진 첨부</label></td>
									<td><input name="company_staff_img" type="file"/></td>
								</tr>
							</table>
			            </div>
			            <button type="submit" class="btn btn-blue pull-right" >등록하기</button>
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