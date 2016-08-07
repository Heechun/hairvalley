<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Title -->
	<title>회원가입</title>
	<!-- Meta -->
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	<!-- Favicon -->
	<link href="favicon.html" rel="shortcut icon">
	<!-- Bootstrap Core CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
	<!-- Template CSS -->
	<link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
	<!-- Google Fonts-->
	<link href="http://fonts.googleapis.com/css?family=Lato:400,300" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" rel="stylesheet" type="text/css">
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
</head>
<body>
	<div id="pre_header" class="visible-lg"></div>
	<div id="header" class="container">
		<div class="row">
			<!-- Logo -->
			<div class="logo">
				<a href="hairvalley_main.do" title="">
					<img src="assets/hairvalley_images/logo.PNG" alt="Logo" style="padding-top:26px;"/>
				</a>
			</div>
			<!-- End Logo -->
			<!-- Top Menu -->
			<div class="col-md-12 margin-top-30">
				<div id="hornav" class="pull-right visible-lg">
					<ul class="nav navbar-nav">
						<li><a href="hairvalley_main.do">Home</a></li>
						<li><a href="/sample/bid_boardList.do">입찰 게시판</a></li>
						<li><a href="companyMain.do">업체 소개</a></li>
						<li><a href="#">서비스안내</a></li>
						<li><a href="portfolio-3-column.html">고객센터</a></li>
					</ul>				
				</div>
			</div>
			<div class="clear"></div>
				<!-- End Top Menu -->
			</div>
		</div>
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
									<span class="glyphicon glyphicon-remove form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="pwd">비밀번호</label>
									<input class="form-control" type="password" name="company_password" id="pwd" />
									<p class="help-block">비밀번호를 확인하세요.</p>
									<span class="glyphicon glyphicon-remove form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="pwd2">비밀번호 확인</label>
									<input class="form-control" type="password" name="company_password2" id="pwd2" />
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="name">회사이름</label>
									<input class="form-control" type="text" name="company_name" id="company_name"/>
									<p class="help-block">Only use 2~10 korean letters.</p>
									<span class="glyphicon form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="salesman_num">사업자번호</label>
									<input placeholder="010-0000-0000" class="form-control" type="text" name="salesman_num" id="salesman_num"/>
									<p class="help-block" >Only use phone Number type.</p>
									<span class="glyphicon form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="company_location">회사 주소</label>
									<input class="form-control" type="text" name="company_location" id="company_location"/>
									<p class="help-block">Only use 2~10 korean letters.</p>
									<span class="glyphicon form-control-feedback"></span>
								</div>
<!-- 								<div class="form-group has-feedback"> -->
<!-- 									<label class="control-label" for="phone">PhoneNumber</label> -->
<!-- 									<input placeholder="010-0000-0000" class="form-control" type="text" name="phone" id="phone"/> -->
<!-- 									<p class="help-block" >Only use phone Number type.</p> -->
<!-- 									<span class="glyphicon form-control-feedback"></span> -->
<!-- 								</div> -->
									<div class="form-group has-feedback">
										<label for="company_main_img">메인 이미지 첨부(1개)</label>
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
<script>

	var idValid = false;
	var pwdValid = false;
	var nameValid = false;
	var phoneValid = false;
	setSubmitButton();
	
	function setSubmitButton(){
		if(idValid&&pwdValid&&nameValid&&phoneValid){
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
				console.log(data);
				console.log(data.isExist);
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
	
	$("#name").keyup(function(){
		var inputName=$(this).val();
		var reg=/^[가-힝]{2,10}$/;
		var isValid = reg.test(inputName);
		if(isValid){
			$(this).parent().find(".help-block").hide();
			setState($(this), true);
			nameValid = true;
		}
		else{
			$(this).parent().find(".help-block").show();
			setState($(this), false);
			nameValid = false;
		}
		setSubmitButton();
	});
	
	$("#phone").keyup(function(){
		var inputPhone=$(this).val();
		var reg = /^01[016789]-[0-9]{3,4}-[0-9]{4}$/;
		var isValid= reg.test(inputPhone);
		if(isValid){
			$(this).parent().find(".help-block").hide();
			setState($(this), true);
			phoneValid = true;
		}
		else{
			$(this).parent().find(".help-block").show();
			setState($(this), false);
			phoneValid = false;
		}
		setSubmitButton();
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