<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>


<head></head>

<title></title>

<body>

	<div class="content-wrapper" style="background-color:#fff;">
	 	<iframe name="ifr" src="" frameborder="0" 
	 			style="width:100%;height:85vh;"></iframe>
 	</div>

<script>
function goPage(url, mCode){
	// alert(url);
	// alert(mCode);
	$('iframe[name="ifr"]').attr("src", url);
	//document.querySelector('iframe[name="ifr"]').src = url;
	
	if(typeof(history.pushState) == 'function'){
		var renewURL = location.href;
		
		renewURL = renewURL.substring(0, renewURL.indexOf('.do') + 3);
		
		if(mCode != 'M000000'){
			renewURL += "?mCode=" + mCode;
		}
		history.pushState(mCode, null, renewURL);
	}else{
		location.hash = "#"+mCode;
	}
	
}

window.onload = function(){
	goPage('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
}

</script> 	
 	
</body>