<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




	<!-- === BEGIN HEADER === -->
	<jsp:include page="/hairvalley_page_header.do" flush="false"/>
	<!-- === END HEADER === -->
	<!-- === BEGIN CONTENT === -->
	<div id="content" class="container">
		<div id="welcome" class="background-white">
			<div class="container">
				<div class="row margin-vert-40">
					<!-- Main Text -->
					<div class="col-md-12">
						<h2 class="text-center article-title">입찰 게시물 수정</h2>
					</div>
					<!-- End Main Text -->
				</div>
				<hr>
				<div class="row margin-vert-40">

				 	 <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <form class="signup-page" enctype="multipart/form-data" action="/sample/bid_updateBoardContent.do"  method="POST" >
                        	<input type="hidden" value="${bidBoardContent.text_num}"/>
                            <label><strong>제 목</strong></label>
                            <input name="title" class="form-control margin-bottom-20" value="${bidBoardContent.title}" />
                            <hr>  
                            <div class="row">
								<div class="col-sm-6">
									<label><strong>작성자</strong></label>
		                            <input name="user_id"  class="form-control margin-bottom-20" value="${bidBoardContent.user_id}" disabled="disabled" />
								</div>
								<div class="col-sm-6">
									 <label><strong>예상 가격</strong></label>
		                   			<input name="req_price"  class="form-control margin-bottom-20"  value="${bidBoardContent.req_price}" />
								</div>
							</div>
							<hr>  
							<div class="row">
								<div class="col-md-12">
									<label><strong>내 사진 등록</strong></label>
									<input class="multi with-preview" name="user_faceImg" type="file" multiple="multiple"   onchange="readFaceImageURL(this);" />
									<!--  <br/><button class="btn btn-aqua" id="myFaceImageCheckBtn">미리보기</button> -->
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>참고 사진 등록</strong></label>
									<input name="user_refImg" type="file"  multiple="multiple" onchange="readRefImageURL(this);" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>펌 종류</strong></label><br>
									<input name="perm"  class="form-control margin-bottom-20"  value="${bidBoardContent.perm}" />
								</div>      
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>커트 종류</strong></label><br>
									<input name="cut"  class="form-control margin-bottom-20"  value="${bidBoardContent.cut}" />
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<label><strong>염색 색상</strong></label><br>
									<input name="dye"  class="form-control margin-bottom-20"  value="${bidBoardContent.dye}" />
								</div>
							</div>
							<hr>
                            <label><strong>추가 요청 사항</strong></label>
                            <div class="row margin-bottom-20">
                                <div class="col-md-12 col-md-offset-0">
                                    <textarea name="add_request"  rows="8" class="form-control" >${bidBoardContent.add_request}</textarea>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-lg-6">
                                </div>
                                <div class="col-lg-6 text-right">
                                	<input type="button" class="btn btn-warning" type="button" value="되돌아가기"  onclick="history.back();"/>
                                    <input type="submit" class="btn btn-primary" value="수정" />
                                </div>
                            </div>
                        </form>
                       
                    </div><div class="col-md-2"></div>
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