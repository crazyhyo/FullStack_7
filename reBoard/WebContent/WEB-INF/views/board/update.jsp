<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int board_no = (int)request.getAttribute("board_no");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload = function(){
	
	let btnList = document.querySelector("#btnList");

	btnList.addEventListener("click",function(){
		location.href="boardlist.do";
	})
}
</script>
</head>
<body>
	<form method="post" action="update.do?board_no=<%= board_no %>" name="frmInsert" id="frmInsert">
		<label>제목</label><input type="text" name="title">
		<label>내용</label><input type="text" name="content">
		<input type="submit" value="완료">
		<input type="button" value="목록" id="btnList" name="btnList">
	</form>
</body>
</html>