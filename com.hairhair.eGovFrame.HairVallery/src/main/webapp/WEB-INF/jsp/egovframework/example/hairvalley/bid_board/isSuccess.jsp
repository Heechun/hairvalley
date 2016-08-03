<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int retval = (int)request.getAttribute("retval");
	String methodName = (String)request.getAttribute("methodName");
	
	if(retval == 1 && methodName.equals("deleteBidContent")){%>
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
	if(retval == 1 && methodName.equals("insertBidContent")){%>
		<script>
			alert("게시물이 등록 되었습니다.");
			location.href="/sample/bid_boardList.do";
		</script>

	}else{%>
		<script>
			alert("게시물이 등록되지 못했습니다.");
			history.back();
		</script>
	
<% 
}
%>