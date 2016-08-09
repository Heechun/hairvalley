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
			<div class="row margin-vert-30">
				<!-- Register Box -->
				<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
					<form class="signup-page" action="/sample/bid_boardOfferInsert.do?text_num=${text_num}&content_num=${content_num}" method="post">
						<div class="signup-header">
							<h2>제안 등록</h2>
						</div>
						<div class="color-red glyphicon glyphicon-info-sign">
								<strong>수정이 불가능하므로 신중히 작성하시기 바랍니다.</strong>
						</div>
						<hr>
						<label><strong>업체 ID</strong><span class="color-red">*</span></label>
						<input class="form-control margin-bottom-20" type="text" name="company_id" readonly="readonly" value="${company_id }">
						
								
						<label><strong>제안 가격</strong> <span class="color-red">*</span></label>
						<input class="form-control margin-bottom-20" type="text" name="offer_price"  placeholder="10000">

			
						<label><strong>제안 내용</strong> <span class="color-red">*</span></label>
						<div class="row margin-bottom-20">
							<div class="col-md-12 col-md-offset-0">
								<textarea name="add_offer" rows="8" class="form-control"
									placeholder="* 제안하실 구체적 내용을 입력해주세요."></textarea>
							</div>
						</div>
							
						<hr>
						
						<div class="row">
							<div class="col-lg-8">
								
							</div>
							<div class="col-lg-4 text-right">
								<button class="btn btn-primary" type="submit">제안 등록</button>
							</div>
						</div>
					</form>
				</div>
				<!-- End Register Box -->
			</div>
		</div>
		<br/></br>
		<br/>
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