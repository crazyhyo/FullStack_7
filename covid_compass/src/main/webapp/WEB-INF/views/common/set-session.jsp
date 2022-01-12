<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head></head>

<title></title>

<body>

<h1>Test : ${loginUser.mberId}</h1>
<br />
${loginUser.mberPwd}


<script>
// 멤버 코드 로 공통구분코드랑 비교해서 각 기관 코드 직원 || 대표  해당 위치로 location.href 
// var instNo = '${loginUser.mberCode}';
// var subNo = instNo.substring(0,4);
// alert(subNo);


// if()
<%-- location.href = '<%=request.getContextPath() %>/pbht/main'; --%>

</script>

</body>
