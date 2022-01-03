<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<head></head>
<title></title>

<body>

<canvas id="myCanvas" width="300" height="150" style="border:1px solid #d3d3d3;">Your browser does not support the HTML5 canvas tag.</canvas>

<img src='https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=http://192.168.43.23/ddit/common/loginForm.do'>

<script>

window.onload = function(){
	let c = document.getElementById("myCanvas");
	let ctx = c.getContext("2d");
	
	let img = new Image();
	img.src = 'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=http://192.168.43.23/ddit/common/loginForm.do';
	img.onload = function(){
		ctx.drawImage(img,0,0,150,150);
	}

	
}

function copy() {
  let imgData = ctx.getImageData(0, 0, 150, 150);
  ctx.putImageData(imgData, 0, 0);
}
</script>

<button onclick="copy()">Copy</button>

</body>
