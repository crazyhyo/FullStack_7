<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<script>
	alert("${member.id}님의 활성화 상태이 실패했습니다.");
	location.href = '<%=request.getContextPath()%>/member/detail?id=${member.id}';
</script>