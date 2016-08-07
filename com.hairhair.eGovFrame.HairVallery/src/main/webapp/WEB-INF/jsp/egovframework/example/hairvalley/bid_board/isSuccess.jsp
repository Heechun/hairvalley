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
	
	String user_id = (String)request.getAttribute("user_id");
	
	if(retval == 1 && methodName.equals("login")){
		session.setAttribute("user_id", user_id);
	%>
		<script>
			alert("로그인 되었습니다.");
			location.href="/sample/hairvalley_main.do";
		</script>

	}else{%>
		<script>
			alert("아이디 혹은 비밀번호를 확인하세요.");
			history.back();
		</script>
	
	<% 
	}
	if(retval == 1 && methodName.equals("register")){%>
		<script>
			alert("회원등록이 완료 되었습니다.");
			location.href="/sample/hairvalley_main.do";
		</script>

	}else{%>
		<script>
			alert("회원등록에 실패하였습니다.");
			history.back();
		</script>
		
	<% 
	}
	if(retval == 1 && methodName.equals("insertOffer")){%>
		<script>
			var text_num = ${text_num};
			var content_num = ${content_num};
			
			alert("제안 등록이 완료 되었습니다.");
			location.href="/sample/bid_selectBoardContent.do?text_num=" + text_num + "&content_num="+ content_num;
		</script>
	<% 
	}else{%>
		<script>
			alert("제안 등록에 실패하였습니다.");
			history.back();
		</script>	
<% 
}
%>