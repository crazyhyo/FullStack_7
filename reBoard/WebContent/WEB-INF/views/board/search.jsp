<%@page import="java.util.Date"%>
<%@page import="kr.or.ddit.jdbcBoard.vo.JdbcBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<JdbcBoardVO> boardList = (List<JdbcBoardVO>)request.getAttribute("searchBoard");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

	window.onload = function() {
		let btnList = document.getElementById("btnList");
		btnList.addEventListener("click", function() {
			location.href("boardlist.do");
		})
	}
</script>
</head>
<body>
	<table border="1" id="tblBoardList">
		<tr>
			<th>BOARD_NO</th>
			<th>BOARD_TITLE</th>
			<th>BOARD_WRITER</th>
			<th>BOARD_DATE</th>
			<th>BOARD_CONTENT</th>
		</tr>

<%
	for(JdbcBoardVO board : boardList){
		int board_no = board.getBoard_no();
		String board_title = board.getBoard_title();
		String board_writer = board.getBoard_writer();
		Date board_date = board.getBoard_date();
		String board_content = board.getBoard_content();
%>
		<tr>
			<td><%=board_no %></td>
			<td><a href="detail.do?board_no=<%= board_no %>"><%=board_title %></a></td>
			<td><%=board_writer %></td>
			<td><%=board_date %></td>
			<td><%=board_content %></td>
		</tr>
<%
	}
%>
	</table>
	<div id="boardListButton">
		<input type="button" value="목록" onclick="location.href='boardlist.do'">&nbsp;&nbsp;
		<form action="search.do" method="post" id="frmSeasrch" name="frmSearch">
			<select name="cboSearchType" id="cboSearchType">
				<option value="optByTitle">제목</option>
				<option value="optByWriter">작성자</option>
				<option value="optByContent">내용</option>
			</select>
			<input type="text" id="txtQuery" name="txtQuery">
			<input type="submit" value="검색" id="btnSearch" name="btnSearch">
		</form>
	</div>
</body>
</html>