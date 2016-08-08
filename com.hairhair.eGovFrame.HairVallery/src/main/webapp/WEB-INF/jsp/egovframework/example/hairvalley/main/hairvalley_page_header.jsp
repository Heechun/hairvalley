<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<!-- Title -->
<title>Welcome to HairValley</title>
<!-- Meta -->
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- Favicon -->
<link href="favicon.html" rel="shortcut icon">
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/tableDesign.css"
	rel="stylesheet">
	<link href="assets/css/pgwslideshow.css" rel="stylesheet">
<link href="assets/css/pgwslideshow_light.css" rel="stylesheet">
<!-- Google Fonts-->
<link href="http://fonts.googleapis.com/css?family=Lato:400,300"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"
	rel="stylesheet" type="text/css">
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script src="assets/js/pgwslideshow.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.pgwSlideshow').pgwSlideshow();
	});
</script>
</head>
<body>
<div id="pre_header" class="visible-lg"></div>
<div id="header" class="container">
	<div class="row">
		<!-- Logo -->
		<div class="logo">
			<a href="/sample//hairvalley_main.do" title=""> <img
				src="assets/hairvalley_images/logo.PNG" alt="Logo"
				style="padding-top: 26px;" />
			</a>
		</div>
		<!-- End Logo -->
		<!-- Top Menu -->
		<div class="col-md-10 col-md-offset-2 margin-top-10">
			<div id="hornav" class="visible-lg">
				<ul class="nav navbar-nav" style="padding-top: 20px;">
					<li><a href="/sample/bid_boardList.do">입찰 게시판</a></li>
					<li><a href="companyMain.do">업체 소개</a></li>
					<li><a href="#">서비스안내</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
				<div id="user_id_hidden" style="display: none;">${user_id}</div>
				<div id="login_sign"
					class="nav navbar-nav navbar-right panel-sm panel-primary invert"
					style="margin-top: 0;">
					<div class="panel-heading">
						<i class="fa fa-user"></i> ${user_id} 님
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-sm btn-blue" id="logoutBtn">
							<i class="fa fa-sign-out"></i>로그아웃
						</button>
					</div>
					<div class="panel-body">
					
						<!-- Single button -->
						<div class="btn-group">
						  <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						    개인 정보 <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#"><i class="fa fa-picture-o"></i>개인정보 확인</a></li>
						    <li><a href="#"><i class="fa fa-picture-o"></i>개인정보 수정</a></li>
						  </ul>
						</div>
						<div class="btn-group">
						  <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						    입찰 정보 <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="/sample/bid_selectUserBidContent.do?user_id=${user_id}"><i class="fa fa-picture-o"></i>입찰 내역 조회</a></li>
						    <li><a href="#"><i class="fa fa-picture-o"></i>입찰 완료 내역 조회</a></li>
						  </ul>
						</div>
						<%-- 
						<button class="btn btn-sm btn-primary" type="button">
							<i class="fa fa-picture-o"></i>개인 정보
						</button>
						<button class="btn btn-sm btn-primary pull-right" type="button">
							<i class="fa fa-picture-o"></i>입찰 정보
						</button>--%>
					</div>
				</div>



				<form id="login_form" class="navbar-form"
					action="/sample/hairvalley_login.do" method="post"
					style="margin-top: 20px;">
					<div class="form-group" style="margin-bottom: 1px;">
						<input id="user_id" type="text" name="user_id"
							placeholder="ID or 사업자번호" class="form-control"
							style="width: auto;">
					</div>
					<div class="form-group">
						<input id="user_pw" type="password" name="user_pw"
							placeholder="Password" class="form-control" style="width: auto;">
					</div>
					<button class="btn btn-sm btn-blue" type="submit">
						<i class="fa fa-user"></i> Login
					</button>
					<button class="btn btn-sm btn-aqua" type="button"
						onclick="location.href='/sample/beforeSignup.do'">
						<i class="fa fa-sign-in"></i> Join
					</button>
				</form>

			</div>
		</div>
		<div class="clear"></div>
		<!-- End Top Menu -->
	</div>
</div>

<script type="text/javascript">
	var isLogin = ${isLogin}; // 로그인 했는지 여부
	if (isLogin) {
		$("#login_sign").show();
		$("#login_form").hide();
	} else {
		$("#login_sign").hide();
		$("#login_form").show();
	}

	

	//로그아웃 버튼을 눌렀을때 실행할 함수 등록
	$("#logoutBtn").on("click", function() {
		var input_id = document.getElementById("user_id_hidden").innerHTML;
		$.ajax({
			url : "/sample/hairvalley_logout.do",
			method : "get",
			dataType : "json",
			data : {
				id : input_id
			},
			success : function(data) {
				alert("로그아웃 되었습니다.");
				$("#user_id").val("");
				$("#user_pw").val("");
				$("#login_sign").hide();
				$("#login_form").show();
			}
		})
	});
</script>
