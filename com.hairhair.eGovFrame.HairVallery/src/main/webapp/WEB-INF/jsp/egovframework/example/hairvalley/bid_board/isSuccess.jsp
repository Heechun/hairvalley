<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<c:choose>
	<c:when test="${retval > 1 && methodName=='deleteBidContent'}">
		<script>
			alert("게시물이 삭제 되었습니다.");
			location.href="/sample/bid_boardList.do";
		</script>
	</c:when>
	<c:when test="${retval < 1 && methodName=='deleteBidContent'}">
		<script>
			alert("게시물이 삭제되지 못했습니다.");
			history.back();
		</script>
	</c:when>
	<c:when test="${retval == 1 && methodName=='insertBidContent'}">
		<script>
			alert("게시물이 등록 되었습니다.");
			location.href="/sample/bid_boardList.do";
		</script>
	</c:when>
	<c:when test="${retval < 1 && methodName=='insertBidContent'}">
		<script>
			alert("게시물이 등록되지 못했습니다.");
			history.back();
		</script>
	</c:when>
	<c:when test="${retval == 1 && methodName=='login'}">
		<% 
			String user_id = (String)request.getAttribute("user_id");
			session.setAttribute("user_id", user_id); 
		%>
		<script>
			alert("로그인 되었습니다.");
			location.href="/sample/hairvalley_main.do";
		</script>
	</c:when>
	<c:when test="${retval < 1 && methodName=='login'}">
		<script>
			alert("아이디 혹은 비밀번호를 확인하세요.");
			history.back();
		</script>
	</c:when>
	<c:when test="${retval == 1 && methodName=='register'}">
		<script>
			alert("회원등록이 완료 되었습니다.");
			location.href="/sample/hairvalley_main.do";
		</script>
	</c:when>
	<c:when test="${retval < 1 && methodName=='register'}">
		<script>
			alert("회원등록에 실패하였습니다.");
			history.back();
		</script>
	</c:when>
	<c:when test="${retval == 1 && methodName=='insertOffer'}">
		<script>
			var text_num = ${text_num};
			var content_num = ${content_num};
			
			alert("제안 등록이 완료 되었습니다.");
			location.href="/sample/bid_selectBoardContent.do?text_num=" + text_num + "&content_num="+ content_num;
		</script>
	</c:when>
	<c:when test="${retval < 1 && methodName=='insertOffer'}">
		<script>
			alert("제안 등록에 실패하였습니다.");
			history.back();
		</script>	
	</c:when>
	<c:when test="${retval == 1 && methodName=='updateBidContract'}">
		<script>
			var user_id = ${user_id};
			alert("업체와 계약이 완료 되었습니다.");
			location.href="sample/bid_selectUserBidCompleteContentList.do?user_id=" + user_id;
		</script>
	</c:when>
	<c:when test="${retval < 1 && methodName=='updateBidContract'}">
		<script>
			alert("업체와 계약이 실패하였습니다.");
			history.back();
		</script>	
	</c:when>
	<c:when test="${retval == 1 && methodName=='company_login'}">
		<% 
			String company_id = (String)request.getAttribute("company_id");
			session.setAttribute("company_id", company_id); 
		%>
		<script>
			alert("로그인 되었습니다.");
			location.href="/sample/hairvalley_main.do";
		</script>
		</c:when>
		<c:when test="${retval < 1 && methodName=='company_login'}">
		<script>
			alert("아이디 혹은 비밀번호를 확인하세요.");
			history.back();
		</script>
	</c:when>
</c:choose>

