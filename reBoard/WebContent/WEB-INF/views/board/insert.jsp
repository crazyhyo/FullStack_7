<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insert</title>
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
	<form method="post" action="insert.do" name="frmInsert" id="frmInsert">
		<label>제목</label><input type="text" name="title">
		<label>내용</label><input type="text" name="content">
		<label>작성자</label><input type="text" name="writer">
		<input type="submit" value="제출">
		<input type="button" value="목록" id="btnList" name="btnList">
	</form>
	
</body>
</html>