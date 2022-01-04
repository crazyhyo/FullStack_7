<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<p class="login-box-msg">피검자 등록</p>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
	<script>
		var data = "";
		window.onload = function() {
			generateQR();
		}

		function generateQR() {
			var qrcode = new QRCode(document.getElementById("qrBox"));
			data = "http://192.168.43.64/ddit/index.do";
			//"${pstiInnb }"
			qrcode.makeCode(data);

		}
		function decode() {
			//alert(data);
			var devalue = document.getElementById('decodetext');
			devalue.value = data;
		}
	</script>

	<form action="regist" method="post" style="text-align: center;">
		<div class="row" style="justify-content: center;">
			<div id="qrBox" class="brand-link mt-2 pb-3 mb-3 d-flex"
			style="background-size:cover;
			background-position:center;
			background-repeat:no-repeat;
			height: 100px;"></div>
		</div>
		<div class="row">
			<div class="input-group mb-3 col-md-6">
				<div class="login-box-msg"
					style="display: inline-block; width: 50px;">
					<i class="fas fa-heart"></i>
				</div>
				<input type="number" class="form-control" name="maxBrssr"
					placeholder="최고혈압 ">
			</div>
			<div class="input-group mb-3 col-md-6">
				<div class="login-box-msg"
					style="display: inline-block; width: 50px;">
					<i class="fas fa-heart"></i>
				</div>
				<input type="number" class="form-control" name="minBrssr"
					placeholder="최저혈압 ">
			</div>
		</div>
		<div class="input-group mb-3">
			<div class="login-box-msg"
				style="display: inline-block; width: 50px;">
				<i class="fas fa-ruler-vertical"></i>
			</div>
			<input type="number" class="form-control" name="bdheight"
				placeholder="키">
		</div>
		<div class="input-group mb-3">
			<div class="login-box-msg"
				style="display: inline-block; width: 50px;">
				<i class="fas fa-weight"></i>
			</div>
			<input type="number" class="form-control" name="bdweight"
				placeholder="몸무게">
		</div>
		<div class="input-group mb-3">
			<div class="login-box-msg"
				style="display: inline-block; width: 50px;">
				<i class="fas fa-thermometer-half"></i>
			</div>
			<input type="number" class="form-control" name="bdheat"
				placeholder="체온">
		</div>
		<input type="hidden" name="pstiInnb" value="${pstiInnb }">
	</form>
