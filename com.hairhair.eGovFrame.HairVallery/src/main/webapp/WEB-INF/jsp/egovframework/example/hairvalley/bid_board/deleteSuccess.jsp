<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int retval = (int)request.getAttribute("retval");
	if(retval == 1){%>
		<script>
			alert("게시물이 삭제 되었습니다.");
			location.href="/sample/bid_boardList.do";
		</script>

	}else{%>
		<script>
			alert("게시물이 삭제되지 못했습니다.");
			history.back();
		</script>
		
	<% 
	}
%>