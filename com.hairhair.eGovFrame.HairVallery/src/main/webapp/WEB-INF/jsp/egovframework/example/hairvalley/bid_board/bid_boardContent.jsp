<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<!-- Google Fonts-->
<link href="http://fonts.googleapis.com/css?family=Lato:400,300"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"
	rel="stylesheet" type="text/css">
<link href="assets/css/pgwslideshow.css" rel="stylesheet">
<link href="assets/css/pgwslideshow_light.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
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
					<%-- 
					<div class="nav navbar-nav navbar-right panel-sm panel-primary invert" style="margin-top:0;">
						<div class="panel-heading">
							<i class="fa fa-user"></i>wonjong님 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-sm btn-blue" type="button" onclick="move('/sample/hairvalley_register.do');">
								<i class="fa fa-sign-out"></i>로그아웃
							</button>
						</div>
						<div class="panel-body">Lorem...</div>
					</div>

--%>

					<form class="navbar-form" action="/sample/hairvalley_login.do"
						method="post" style="margin-top: 20px;">
						<div class="form-group" style="margin-bottom: 1px;">
							<input type="text" name="user_id" placeholder="ID or 사업자번호"
								class="form-control" style="width: auto;">
						</div>
						<div class="form-group">
							<input type="password" name="user_pw" placeholder="Password"
								class="form-control" style="width: auto;">
						</div>
						<button class="btn btn-sm btn-blue" type="submit">
							<i class="fa fa-user"></i> Login
						</button>
						<button class="btn btn-sm btn-aqua" type="button"
							onclick="move('/sample/hairvalley_register.do');">
							<i class="fa fa-sign-in"></i> Join
						</button>
					</form>

				</div>
			</div>
			<div class="clear"></div>
			<!-- End Top Menu -->
		</div>
	</div>
	<!-- === END HEADER === -->
	<!-- === BEGIN CONTENT === -->
	<div id="content" class="container" style="padding-top: 30px;">
		<div class="row margin-vert-30">
			<!-- Side Column -->

			<!-- Main Column -->
			<div class="col-md-12">
				<div class="blog-post">
					<div class="blog-item-header">
						<h2>
							<a href="#"> ${bidBoardContent.title} </a>
						</h2>
					</div>
					<br />

					<div class="blog-author panel panel-primary margin-bottom-30">
						<div class="panel-heading">
							<h3 style="color:#fff;">${bidBoardContent.title}</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12">
									<div class="row">
										<div id="textnum" style="display: none;">${bidBoardContent.text_num}</div>
										<div class="col-md-12">
											<div class="table-responsive">
												<table class="table table-bordered">
													<thead>
														<tr>
															<th colspan="2" id="contentHead"></th>
														</tr>
														<tr>
															<th><strong>고객사진 목록</strong></th>
															<th><strong>참고사진 목록</strong></th>
														</tr>
													</thead>
													<tbody>

														<tr>
															<td width="35%" colspan="1"
																style="text-align: left; padding: 0px;">
																<ul class="pgwSlideshow"
																	style="padding: 0px; margin: 0px">
																	<c:forEach items="${bidBoardContentFaceImages}"
																		var="images">
																		<li><img src="${images.image_url}"></li>
																	</c:forEach>
																</ul>
															</td>
															<td width="35%" colspan="1"
																style="text-align: left; padding: 0px;">
																<ul class="pgwSlideshow"
																	style="padding: 0px; margin: 0px">
																	<c:forEach items="${bidBoardContentRefImages}"
																		var="images">
																		<li><img src="${images.image_url}"></li>
																	</c:forEach>
																</ul>
															</td>
														</tr>
														<tr>
															<th colspan="2" id="contentHead"></th>
														</tr>
													</tbody>

												</table>
											</div>

											<table class="table table-bordered">
												<tr>

													<th width="20%" id="contentHead">번호</th>

													<td width="30%" id="data">${bidBoardContent.content_num}</td>

													<th width="20%" id="contentHead">작성일</th>

													<td width="30%">${bidBoardContent.reg_date}</td>

												</tr>
												<tr>
													<th id="contentHead">작성자</th>

													<td>${bidBoardContent.user_id}</td>


													<th id="contentHead">조회수</th>

													<td>${bidBoardContent.hit}</td>


												</tr>
												<tr>
													<th rowspan="3" id="contentHead">요구 사항</th>
													<th id="contentHead">커트</th>
													<td colspan="8">${bidBoardContent.cut}</td>

												</tr>
												<tr>
													<th id="contentHead">펌</th>
													<td colspan="8">${bidBoardContent.perm}</td>
												</tr>
												<tr>
													<th id="contentHead">염색</th>
													<td colspan="8">${bidBoardContent.dye}</td>

												</tr>
												<tr>

													<th colspan="2" id="contentHead">추가 요청 사항</th>

													<td colspan="8" style="text-align: left;">${bidBoardContent.add_request}</td>

												</tr>

											</table>
										</div>

										<!--  <button class="btn btn-green" id="updateContentBtn" onclick="move('/sample/bid_updateBoardData.do?text_num=${bidBoardContent.text_num}');" style="float:right; margin-top:10px;">글수정</button>-->
										<button class="btn btn-red" id="deleteContentBtn"
											onclick="move('/sample/bid_deleteBoardData.do?text_num=${bidBoardContent.text_num}');"
											style="float: right; margin-right: 10px; margin-top: 10px;">글삭제</button>
										<button class="btn btn-blue"
											onclick="move('/sample/bid_boardList.do');"
											style="float: right; margin-right: 10px; margin-top: 10px;">목록으로</button>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- End About the Author -->
					<!-- Comments -->
					<div
						class="blog-recent-comments panel panel-primary margin-bottom-30">
						<div class="panel-heading">
							<div class="row">
								<div class="col-md-10">
									<h3 style="color:#fff;">업체 제안 목록</h3>
								</div>
								<div class="col-md-2">
									<button class="btn btn-blue btn-sm pull-right" onclick="move('/sample/bid_boardOffer.do?text_num=${bidBoardContent.text_num}&content_num=${bidBoardContent.content_num}');">제안 등록</button>
								</div>
							</div>
						
						</div>
						<div class="panel-body">
							<ul class="list-group">
								<c:forEach items="${bidBoardOffers}" var="bidBoardOffers">
									<li class="list-group-item">
										<div class="row">
											<div class="col-md-2 profile-thumb">
												<a href="#"> <img class="media-object"
													src="${bidBoardOffers.company_image}" alt="">
												</a>
											</div>
											<div class="col-md-10">
												<h3><strong>${bidBoardOffers.company_name}</strong></h3><br/>
												
												<label><strong>제안 가격 </strong> <span class="color-white">*</span></label>
												<input class="form-control" type="text" readonly="readonly" value="&nbsp;&nbsp;${bidBoardOffers.offer_price}" style="color:black; border-radius:7px; max-width:17%;"/>
												<br/>
												<label><strong>제안 내용 </strong> <span class="color-white">*</span></label><br/>
												<div class="row margin-bottom-20">
													<div class="col-md-12 col-md-offset-0">
														<textarea name="add_request" rows="3" class="form-control"
															readonly="readonly">${bidBoardOffers.add_offer}</textarea>
													</div>
												</div>	
												<span class="label label-lg label-primary" type="span">
													<i class="fa fa-clock-o"> 5 hours ago</i>
												</span>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
						<%-- 
						<div class="panel-body">
							<div class="row margin-vert-10">
								<div class="col-md-12">
									<div class="tab-content">
										<div class="tab-pane active in fade" id="faq">
											<div class="panel-group" id="accordion">
												<c:forEach items="${bidBoardOffers}" var="bidBoardOffers">
													<div class="panel panel-primary invert panel-faq">
														<div class="panel-heading">
															<a data-toggle="collapse" data-parent="#accordion" href="#${bidBoardOffers.company_name}">
																<h4 class="panel-title" style="color:#fff;">
																${bidBoardOffers.company_name}
																<span class="pull-right"><i class="glyphicon glyphicon-plus"></i></span>
																</h4>
															</a>
														</div>
														<div id="${bidBoardOffers.company_name}" class="panel-collapse collapse">
															<div class="panel-body" style="color:#fff;">
																<p>제안 가격 : ${bidBoardOffers.offer_price}</p><br/>
																<p>제안 내용 :<br/>${bidBoardOffers.add_offer}</p>
																<span class="date"><i class="fa fa-clock-o"></i> 5 hours ago</span>
															</div>
														</div>
													</div>
												</c:forEach>
						
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						--%>
						<%-- 
						
						--%>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- End Main Column -->

	<!-- === END CONTENT === -->

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
</body>
</html>
