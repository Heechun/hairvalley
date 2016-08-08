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
					<form id="myForm" class="signup-page" action="/sample/hairvalley_insertUser.do" method="post">
						<div class="signup-header">
							<h2>회원가입</h2>
						</div>
						<hr>

						<div class="form-group has-feedback">
							<label>ID <span class="color-red">*</span></label> 
							<input class="form-control margin-bottom-20" type="text" name="user_id" id="form_user_id">
							<p class="help-block1">특수문자 허용안함, 5~20 글자</p>
							<p class="help-block2">이미 존재하는 아이디 입니다.</p>
							<span class="glyphicon form-control-feedback"></span>
						</div>

						<div class="row">
							<div class="col-sm-6">
								<div class="form-group has-feedback">
									<label>Password <span class="color-red">*</span></label>
									<input class="form-control margin-bottom-20" type="password" name="user_pw1" id="user_pw1">
									<p class="help-block">비밀번호를 확인하세요.</p>
									<span class="glyphicon form-control-feedback"></span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group has-feedback">
									<label>Confirm Password <span class="color-red">*</span></label>
									<input class="form-control margin-bottom-20" type="password" name="user_pw2" id="user_pw2">
									<span class="glyphicon form-control-feedback"></span>
								</div>
							</div>
						</div>
						
						<div class="form-group has-feedback">
							<label>Name </label>
							<input class="form-control margin-bottom-20" type="text" name="user_name"  placeholder="홍길동" id="user_name">
							<p class="help-block">한글, 2-10글자 허용</p>
							<span class="glyphicon form-control-feedback"></span>
						</div>
						
						<div class="form-group has-feedback">
							<label>Email Address <span class="color-red">*</span></label>
							<input class="form-control margin-bottom-20" type="text" name="user_email"  placeholder="cc123@naver.com" id="user_email">
							<p class="help-block">이메일 형식에 맞게 입력해 주세요.</p>
							<span class="glyphicon form-control-feedback"></span>
						</div>	

						<div class="form-group has-feedback">	
							<label>Phone <span class="color-red">*</span></label>
							<input class="form-control margin-bottom-20" type="text" name="user_phone"  placeholder="010-0000-0000" id="user_phone">
							<p class="help-block">전화번호 형식에 맞게 입력해 주세요.</p>
							<span class="glyphicon form-control-feedback"></span>
						</div>
						
						<div class="form-group has-feedback">
							<label>Location <span class="color-red">*</span></label>
							<input class="form-control margin-bottom-20" type="text" name="user_loc"  placeholder="OO시 OO구 OO동" id="user_loc">
						</div>
						<hr>
						
						<div class="row">
							<div class="col-lg-8">
								
							</div>
							<div class="col-lg-4 text-right">
								<button class="btn btn-primary" type="submit">회원 등록</button>
							</div>
						</div>
					</form>
				</div>
				<!-- End Register Box -->
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
		<script type="text/javascript">
			
			var idValid= false;
			var pwdValid = false;
			var nameValid = false;
			var phoneValid = false;
			var emailValid = false;
			
			function setSubmitButton(){
				if(idValid && pwdValid && nameValid && phoneValid){
					$("#myForm button[type=submit]").removeAttr("disabled");
				}else{
					$("#myForm button[type=submit]").attr("disabled","disabled");
				}
			}
			
			
			$("#form_user_id").keyup(function(){
				
				
				var $this = $(this);	//이벤트가 일어난 문서 객체의 참조값을 담아 놓기
				
				var inputId = $(this).val();
				console.log(inputId);
				// 아이디 유효성 여부를 검사할 정규 표현식 객체
				var regId = /^[a-z0-9]{5,20}$/;
				/*
				 *
				 ******* 정규표현식 *********
				 *
				 *   /^ : 정규표현식의 시작을 의미
				 *   [] : 한 글자에서 쓸 수 있는 문자 범위
				 *   {} : 앞에서 정한 범위의 문자 하나가 쓸 수 있는 최소, 최대 글자 수
				 *	 $/ : 정규표현식의 끝을 의미
				 *
				 */
				 
				// 정규 표현식 매칭 여부를 boolean Type으로 얻어낸다,
				var isValid = regId.test(inputId);
				
				
				
				// isValid : 입력한 아이디의 정규 표현식 통과 여부
				if(isValid){
					$(this).parent().find(".help-block1").hide();
				}else{
					$(this).parent().find(".help-block1").show();
				}
				
				$.ajax({
					url: "/sample/hairvalley_checkid.do",
					method: "post",
					dataType: "json",
					data:{user_id:inputId},
					success: function(data){
					
						
						if(data.isExist){//존재하는 아이디(사용불가)
							$this.parent().find(".help-block2").show();
							setState($this, false);
							idValid = false;
						}
						else{//존재하지않는 아이디(사용 가능)
							$this.parent().find(".help-block2").hide();
							if(isValid){
								setState($this, true);	
								idValid = true;
							}
							else{
								setState($this, false);	
								idValid = false;
							}
						}	
						setSubmitButton();
					}
				});
			});
			
			
			$("#user_pw1, #user_pw2").keyup(function(){
				var inputPwd1 = $("#user_pw1").val();
				var inputPwd2 = $("#user_pw2").val();
				
				if(inputPwd1 == inputPwd2){
					$("#user_pw1").parent().find(".help-block").hide();
					setState($("#user_pw1"), true);
					setState($("#user_pw2"), true);
					pwdValid = true;
				}else{
					$("#user_pw1").parent().find(".help-block").show();
					setState($("#user_pw1"), false);
					setState($("#user_pw2"), false);
					pwdValid = false;
				}
				setSubmitButton();
			});
			
			$("#user_name").keyup(function(){
			
				var inputName = $(this).val();
				var reg = /^[가-힝]{2,10}$/;
				var isValid = reg.test(inputName);
				
				if(isValid){
					$(this).parent().find(".help-block").hide();
					setState($(this), true);
					nameValid = true;
				}else{
					$(this).parent().find(".help-block").show();
					setState($(this), false);
					nameValid = false;
				}
				nameValid = isValid;
				setSubmitButton();
			});

			$("#user_phone").keyup(function(){
				
				var inputPhone = $(this).val();
				var reg = /^01[016789]-[0-9]{3,4}-[0-9]{4}$/;
				var isValid = reg.test(inputPhone);
				
				if(isValid){
					$(this).parent().find(".help-block").hide();
					setState($(this), true);
				}else{
					$(this).parent().find(".help-block").show();
					setState($(this), false);
				}
				phoneValid = isValid;
				setSubmitButton();
			});
			
			$("#user_email").keyup(function(){
				
				var inputEmail = $(this).val();
				var reg = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;   
				var isValid = reg.test(inputEmail);
				
				if(isValid){
					$(this).parent().find(".help-block").hide();
					setState($(this), true);
				}else{
					$(this).parent().find(".help-block").show();
					setState($(this), false);
				}
				emailValid = isValid;
				setSubmitButton();
			});
			
			
			// validation 상태를 표시해주는 함수
			function setState($elem, isValid){
				// 미리 최초의 상태로 돌려놓고 아래의 조건문을 실행한다.
				$elem.parent().removeClass("has-success has-error").find(".form-control-feedback").show().removeClass("glyphicon-ok glyphicon-remove");
				
				if(isValid){//성공인 상태
					$elem.parent().addClass("has-success").find(".form-control-feedback").addClass("glyphicon-ok");
				}
				else{//실패인 상태
					$elem.parent().addClass("has-error").find(".form-control-feedback").addClass("glyphicon-remove");
				}
				
			}
			
		</script>
		
</body>
</html>
<!-- === END FOOTER === -->