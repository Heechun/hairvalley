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
					<!-- Main Text -->
					<div class="col-md-12">
						<h2 class="text-center article-title">입찰 등록</h2>
					</div>
					<!-- End Main Text -->
				</div>
				<hr>
				<div class="row margin-vert-40">

					<div class="col-md-8 col-md-offset-2">
						<form class="signup-page" enctype="multipart/form-data"
							action="/sample/bid_insertBoardData.do" method="POST">
							<div class="color-red glyphicon glyphicon-info-sign">
								<strong> 수정이 불가능하므로 신중히 작성하시기 바랍니다.</strong>
							</div>
							<br />
							<hr />
							<label><strong>제 목</strong> <span class="color-red">*</span>
							</label> <input name="title" class="form-control margin-bottom-20"
								placeholder="ex) *제목을 입력해주세요." />
							<hr>
							<div class="row">
								<div class="col-sm-6">
									<label><strong>작성자</strong> <span class="color-red">*</span>
									</label> <input name="user_id" class="form-control margin-bottom-20"
										readonly="readonly" value="${user_id}"/>
								</div>
								<div class="col-sm-6">
									<label><strong>예상 가격</strong> <span class="color-red">*</span>
									</label> <input name="req_price" class="form-control margin-bottom-20"
										placeholder="* ex) 40,000" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>원하는 날짜</strong> <span class="color-red">*</span>
									</label><br> <input name="hope_date"
										class="form-control margin-bottom-20" type="date"/>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>원하는 지역</strong> <span class="color-red">*</span>
									</label><br> <input name="hope_location"
										class="form-control margin-bottom-20" placeholder="ex) OO시 OO구 OO동" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>내 사진 등록</strong> <span class="color-red">*</span>
									</label> <input class="multi with-preview" name="user_faceImg"
										type="file" multiple="multiple"
										onchange="readFaceImageURL(this);" />
									<!--  <br/><button class="btn btn-aqua" id="myFaceImageCheckBtn">미리보기</button> -->
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>참고 사진 등록</strong> <span
										class="color-red">*</span> </label> <input name="user_refImg"
										type="file" multiple="multiple"
										onchange="readRefImageURL(this);" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>펌 종류</strong> <span class="color-red">*</span>
									</label><br> <input name="perm"
										class="form-control margin-bottom-20" placeholder="ex) 일반펌" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>커트 종류</strong> <span class="color-red">*</span>
									</label><br> <input name="cut"
										class="form-control margin-bottom-20" placeholder="ex) 투블럭컷" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>염색 색상</strong> <span class="color-red">*</span>
									</label><br> <input name="dye"
										class="form-control margin-bottom-20" placeholder="ex) 갈색" />
								</div>
							</div>
							<hr>
							<label><strong>추가 요청 사항</strong> <span class="color-red">*</span>
							</label>
							<div class="row margin-bottom-20">
								<div class="col-md-12 col-md-offset-0">
									<textarea name="add_request" rows="8" class="form-control"
										placeholder="* 문의하실 내용을 입력해주세요."></textarea>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-lg-6"></div>
								<div class="col-lg-6 text-right">
									<input type="button" class="btn btn-aqua" type="button"
										value="되돌아가기" onclick="move('/sample/bid_boardList.do');" /> <input
										type="submit" class="btn btn-blue" value="작성 완료" />
								</div>
							</div>
						</form>

					</div>
					<!-- End Register Box -->
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