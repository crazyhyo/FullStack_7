<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!-- <script>
window.onload = function(){
	alert("회원 등록에 성공했습니다.");
	opener.location.href="list";
	CloseWindow();
}
</script> -->
<body>
<script>
	alert("회원등록에 성공했습니다.\n 회원리스트페이지로 이동합니다.");
	
	// window.opener.list_go(1);
	window.opener.location.href="<%=request.getContextPath()%>/member/list";
	window.close();
	
</script>
</body>