<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	
	var choice = prompt("메인화면 선택\n(1:common/main.jsp\n2.insp/main.jsp\n3.pbhlth/main.jsp\n4.hsptl/main.jsp\n5.ltctr/main.jsp)");
	
	if(choice == "1"){
		location.href="index?murl=/common/main&mcode=M000000";
	}
	if(choice == "2"){
		location.href="index?murl=/insp/main&mcode=M010000";
	}
	if(choice == "3"){
		location.href="index?murl=/pbhlth/main&mcode=M020000";
	}
	if(choice == "4"){
		location.href="index?murl=/hsptl/main&mcode=M030000";
	}
	if(choice == "5"){
		location.href="index?murl=/ltctr/main&mcode=M040000";
	}
	
</script>