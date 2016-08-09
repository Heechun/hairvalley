<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- === BEGIN HEADER === -->
	<jsp:include page="/hairvalley_page_header.do" flush="false"/>
	<!-- === END HEADER === -->
		<!-- === BEGIN CONTENT === -->
		<div id="content" class="container">
			<div class="container">
				<div class="row margin-vert-30">
					<!-- Login Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
						<div class="login-page">
							<div class="login-header margin-bottom-30">
								<h2 class="text-center">기업 회원가입</h2>
							</div>
							<form action="companySignupImpl.do" method="POST" enctype="multipart/form-data">
							<fieldset>
								<legend>기업 계정 정보</legend>
								<div class="form-group has-feedback">
									<label class="control-label" for="id">ID</label>
									<input class="form-control" type="text" name="company_id" id="id"/>
									<p class="help-block">최소 4글자 최대20글자로 입력하세요</p>
									<p class="help-block">이미 존재하는 ID입니다.</p>
									<span class="glyphicon form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="pwd">비밀번호</label>
									<input class="form-control" type="password" name="company_password" id="pwd" required/>
									<p class="help-block">비밀번호를 확인하세요.</p>
									<p class="help-block">비밀번호를 확인하세요.</p>
									<span class="glyphicon form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="pwd2">비밀번호 확인</label>
									<input class="form-control" type="password" name="company_password2" id="pwd2" />
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="name">회사이름</label>
									<input class="form-control" type="text" name="company_name" id="name"/>
									<p class="help-block">최소2글자 최대20글자의 회사이름을 입력하세요.</p>
									<p class="help-block">이미 존재하는 회사이름 입니다.</p>
									<span class="glyphicon form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="salesman_num">사업자번호(로그인시 아이디처럼 사용)</label>
									<input placeholder="000-00-00000" class="form-control" type="text" name="salesman_num" id="salesman_num"/>
									<p class="help-block" >정확히 입력하세요.</p>
									<p class="help-block">이미 등록된 사업자번호 입니다.</p>
									<span class="glyphicon form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="salesman_num">e메일</label>
									<input class="form-control" type="email" name="company_email" id="company_email" required/>
									<span class="glyphicon form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="locationBtn">회사 주소</label><br />
									<input type="text" id="company_postcode" placeholder="우편번호">
									<input type="button" onclick="find_location()" value="우편번호 찾기" class="btn btn-warning btn-sm" onclick="find_location()"><br>
									<input type="text" placeholder="주소" class="form-control" id="company_raw_location1" name="company_raw_location1" required >
									<input type="text" placeholder="상세주소" class="form-control" id="company_raw_location2" name="company_raw_location2" required>
								</div>
								
<!-- 								<div class="form-group has-feedback"> -->
<!-- 									<label class="control-label" for="phone">PhoneNumber</label> -->
<!-- 									<input placeholder="010-0000-0000" class="form-control" type="text" name="phone" id="phone"/> -->
<!-- 									<p class="help-block" >Only use phone Number type.</p> -->
<!-- 									<span class="glyphicon form-control-feedback"></span> -->
<!-- 								</div> -->
									<div class="form-group has-feedback">
										<label for="company_main_img">대표 이미지 첨부(1개)</label>
						        		<input name="company_main_img" type="file" required />
									</div>
							</fieldset>
							<button class="btn btn-primary" type="submit" disabled="disabled">Sign Up</button>
							<button class="btn btn-danger" type="reset">Reset</button>	
						</form>
						</div>
					</div>
					<!-- End Login Box -->
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->

<style>
	body{
		padding-top: 50px;
	}
	@media (max-width:768px){
		body{
			padding-top: 20px;
		}
	}
	.form-control-feedback{
		display:none;
	}
	.help-block{
		display:none;
	}
	
</style>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function find_location() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('company_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('company_raw_location1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('company_raw_location2').focus();
            }
        }).open();
    }
</script>
<script>

	var idValid = false;
	var pwdValid = false;
	var nameValid = false;
	var salesValid = false;
	setSubmitButton();
	
	function setSubmitButton(){
		if(idValid&&pwdValid&&nameValid&&salesValid){
			$("button[type=submit]").removeAttr("disabled");
		}
		else{
			$("button[type=submit]").attr("disabled","disabled");
		}
	};
	
	$("#id").keyup(function(){
		//이벤트가 일어난 문서 객체의 참조값을 담아 놓기 
		var $this=$(this);
		
		var inputId=$(this).val();
		//아이디 유효성 여부를 검사할 정규 표현식 객체 
		var regId=/^[a-zA-Z0-9]{4,20}$/;
		//정규 표현식 매칭 여부를 boolean Type 으로 얻어낸다. 
		var isValid=regId.test(inputId);
	
		// isValid => 입력한 아이디의 정규 표현식 통과 여부 
		if(isValid){		
			$(this).parent().find(".help-block").eq(0).hide();
		}else{
			$(this).parent().find(".help-block").eq(0).show();
		}
		
		// Ajax 통신을 이용해서 입력한 아이디가 이미 존재하고 있는 아이디인지 응답을 받는다. 
		$.ajax({
			url:"/sample/companyCheckId.do",
			method:"post",
			dataType: "json",
			data:{id:inputId},
			success:function(data){
				// data => {isExist:true} or {isExist:false}
				if(data.isExist == "true"){//존재하는 아이디(사용할수 없는 아이디)
					$this.parent().find(".help-block").eq(1).show();
					setState($this, false);
					idValid=false;
				}else{
					$this.parent().find(".help-block").eq(1).hide();
					if(isValid){
						setState($this, true);
						idValid=true;
					}else{
						setState($this, false);
						idValid=false;
					}
				}
				setSubmitButton();
			}
		});
	});	
	
	$("#name").keyup(function(){
		var $this=$(this);
		var inputName=$(this).val();
		var reg=/^[가-힝a-zA-Z0-9]{2,20}$/;
		var isValid = reg.test(inputName);
		if(isValid){
			$(this).parent().find(".help-block").eq(0).hide();
		}
		else{
			$(this).parent().find(".help-block").eq(0).show();
		}
		$.ajax({
			url:"/sample/companyCheckName.do",
			method:"post",
			dataType: "json",
			data:{name:inputName},
			success:function(data){
				
				// data => {isExist:true} or {isExist:false}
				if(data.isExist == "true"){//존재하는 이름
					$this.parent().find(".help-block").eq(1).show();
					setState($this, false);
					nameValid=false;
				}else{
					$this.parent().find(".help-block").eq(1).hide();
					if(isValid){
						setState($this, true);
						nameValid=true;
					}else{
						setState($this, false);
						nameValid=false;
					}
				}
				setSubmitButton();
			}
		});
	});
	
	$("#pwd, #pwd2").keyup(function(){
		var inputPwd1 = $("#pwd").val();
		var inputPwd2 = $("#pwd2").val();
		if(inputPwd1 == inputPwd2){
			$("#pwd").parent().find(".form-control-feedback").hide();
			setState($("#pwd"), true);
			setState($("#pwd2"), true);
			pwdValid = true;
		}
		else{
			$("#pwd").parent().find(".form-control-feedback").show();
			setState($("#pwd"), false);
			setState($("#pwd2"), false);
			pwdValid = false;
		}
		setSubmitButton();
	})
	
	$("#salesman_num").keyup(function(){
		var $this=$(this);
		var inputSales=$(this).val();
// 		var reg = /^[1-6]{1}[0-9]{2}-[8]{1}[0-9]{1}-[0-9]{5}$/;
		var reg = /^[0-9]{3}-[0-9]{2}-[0-9]{5}$/;
		var isValid= reg.test(inputSales);
		if(isValid){
			$(this).parent().find(".help-block").eq(0).hide();
		}
		else{
			$(this).parent().find(".help-block").eq(0).show();
		}
		$.ajax({
			url:"/sample/companyCheckSales.do",
			method:"post",
			dataType: "json",
			data:{sales:inputSales},
			success:function(data){
				
				// data => {isExist:true} or {isExist:false}
				if(data.isExist == "true"){
					$this.parent().find(".help-block").eq(1).show();
					setState($this, false);
					salesValid=false;
				}else{
					$this.parent().find(".help-block").eq(1).hide();
					if(isValid){
						setState($this, true);
						salesValid=true;
					}else{
						setState($this, false);
						salesValid=false;
					}
				}
				setSubmitButton();
			}
		});
	});
	
	
	// validation 상태를 표시해주는 함수 
	function setState($elem, isValid){
		$elem
		.parent()
		.removeClass("has-success has-error")
		.find(".form-control-feedback")
		.show()
		.removeClass("glyphicon-ok glyphicon-remove");
		if(isValid){// 성공인 상태
			$elem.parent().addClass("has-success")
			.find(".form-control-feedback").addClass("glyphicon-ok");
		}else{// 실패인 상태 
			$elem.parent().addClass("has-error")
			.find(".form-control-feedback").addClass("glyphicon-remove");
		}
	}
	
</script>

</body>
</html>