<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<head></head>

<title></title>

<body>

	<div class="content-wrapper" style="background-color:#fff;">
	 	<iframe name="ifr" src="<%=request.getContextPath() %>/test/main" frameborder="0" style="width:100%;height:91vh;"></iframe>
 	</div>

<script>
function goPage(menuUrl, menuInnb){
	
	document.querySelector('iframe[name="ifr"]').src = menuUrl;
	
	if(typeof(history.pushState) == 'function'){
		var renewURL = location.href;
		renewURL = renewURL.substring(0, renewURL.indexOf('?'));
		renewURL += "?mCode=" + menuInnb;
		history.pushState(mCode, null, renewURL);
	}else{
		location.hash = "#"+mCode;
	}
	
}

window.onload = function(){
	
	goPage('<%=request.getContextPath()%>${menu.menuUrl}','${menu.menuInnb}');
	
}


</script> 	
 	
</body>

