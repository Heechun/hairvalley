<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- === BEGIN HEADER === -->
	<jsp:include page="/hairvalley_page_header.do" flush="false"/>
	<!-- === END HEADER === -->
		<!-- === BEGIN CONTENT === -->
		<div id="content" class="container">
			<div class="col-md-9 margin-vert-20 col-md-offset-1">
				<!-- Main Column -->
					<div class="col-md-9 col-md-offset-2">
					<h2>기업회원 가입을 축하합니다.<small><br/>아래의 항목을 빠짐없이 작성해 주세요.</small></h2>
					<hr/>
					</div>
					<form action="companyNewImpl.do" method="post" enctype="multipart/form-data">
						<div class="col-md-9 col-md-offset-2">
							<h1>업체소개 작성<small><br/>당신의 업체를 소개해 보세요.</small></h1>
							<label for="title">제목</label>
							<br />
							<input type="text" name="title" id="title" placeholder=""/>
							<br />
							<label for="content">내용</label>
							<br />
							<textarea name="content" id="content" cols="70" rows="20" placeholder="최초 회원가입시 무조건 작성!" ></textarea>
							<br />
				        	<label for="company_intro_imgList">이미지 첨부(복수개 가능)</label>
				        	<input name="company_intro_imgList" type="file" multiple="multiple"/>
			            </div>
			            <div class="col-md-12">
			          	<hr />
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
			            <div class="col-md-12 col-md-pull-5">
			            	<br />
			            	<button type="submit" class="btn btn-blue pull-right btn-lg" >등록하기</button>
			            </div>
			            
		            </form>  
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