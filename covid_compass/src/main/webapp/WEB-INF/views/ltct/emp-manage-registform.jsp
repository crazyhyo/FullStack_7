<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head></head>

<title></title>
<style>
.row {
	margin-bottom: 10px;
}
</style>
<body>
	<div class="card card-success" style="margin-top: 20px;">
	
	<div class="card-body">
		<div class="row" style="margin-bottom: 7px;" >
			
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">아이디</label>
			<div class="col-md-3">
				<input name="pstiNm" type="text" class="form-control"
					id="inputEmail3" value="TEST">
			</div> 
		
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">패스워드</label>
			<div class="col-md-4">
				<input name="pstiNm" type="password" class="form-control"
					id="inputEmail3" value="***********">
			</div>
		</div>
		
 		<div class="row" style="margin-bottom: 7px;">
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">성명</label>
			<div class="col-md-3">
				<input name="pstiNm" type="text" class="form-control"
					id="inputEmail3" value="${pstiNm }홍길동">
			</div>
			<div class="col-md2"></div>
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">생년월일</label>
			<div class="col-sm-4">
				<input name="pstiNm" type="date" class="form-control"
					id="inputEmail3" value="${pstiNm }홍길동">
			</div>
		</div>
		
		<div class="row" style="margin-bottom: 7px;">
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">연락처</label>
			<div class="col-sm-3">
				<input name="pstiNm" type="text" class="form-control"
					id="inputEmail3" value="010-1234-5678">
			</div>
			
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">이메일</label>
			<div class="col-sm-4">
				<input name="pstiNm" type="text" class="form-control"
					id="inputEmail3" value="chokoman@chokoman.cho.ko">
			</div>
		</div>
		
		
		<div class="row" style="margin-bottom: 7px;">
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">주소</label>
			<div class="col-sm-9">
				<input name="pstiNm" type="text" class="form-control"
					id="inputEmail3" value="${pstiNm }홍길동">
			</div>
		</div>
		
		
		<div class="row" style="margin-bottom: 7px;">
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">소속기관</label>
			<div class="col-sm-3">
				<input name="pstiNm" type="text" class="form-control"
					id="inputEmail3" value="대덕검사소" readonly>
			</div>
			<label for="inputEmail3" class="col-md-2 control-label text-right "
				style="padding-top: 7px;">소속번호</label>
			<div class="col-sm-4">
				<input name="pstiNm" type="text" class="form-control"
					id="inputEmail3" value="A123456" readonly>
			</div>
		</div>
		<div class="row" style="margin-bottom: 7px;">
			<div class="col-md-7"></div>
			<div class="col-md-2">
			<button style="background-color: #1a4f72; border-color: #1a4f72;" type="button" class="btn btn-block btn-primary btn-sm">등록</button>
			</div>
			<div class="col-md-2">
			<button style="background-color: #1a4f72; border-color: #1a4f72;" type="button" class="btn btn-block btn-primary btn-sm">취소</button>
			</div>
		</div>
	</div>
	</div>
</body>
