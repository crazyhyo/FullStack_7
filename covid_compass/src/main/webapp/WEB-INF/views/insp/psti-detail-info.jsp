<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">

	<div class="card card-success">
		<div class="card-header" style="background-color: #5bbc71;">
			<h3 class="card-title">피검자상세</h3>
		</div>
		<div class="register-card-body">
			<div class="form-group row">
				<input type="hidden" name="pstiInnb" value="${pstiInnb }">
				<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">성명</label>
				<div class="col-sm-3">
					<input name="pstiNm" type="text" class="form-control" id="inputEmail3"
						value="${pstiNm }홍길동" readonly>
				</div>
				<label for="inputEmail3" class="col-sm-2 control-label text-right" style="padding-top: 7px;">국적</label>
				<div class="col-sm-3">
					<input name="pstiNlty" type="text" class="form-control" id="inputEmail3"
						value="${pstiNlty }KOREA" readonly>
				</div>
			</div>
			<div class="form-group row">
				<input type="hidden" name="pstiInnb" value="${pstiInnb }">
				<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">검사경위</label>
				<div class="col-sm-3">
					<input name="chckReasonCode" type="text" class="form-control" id="inputEmail3"
						value="${chckReasonCode }본인판단" readonly>
				</div>
				<label for="inputEmail3" class="col-sm-2 control-label text-right" style="padding-top: 7px;">백신접종</label>
				<div class="col-sm-3">
					<input name="inoclCode" type="text" class="form-control" id="inputEmail3"
						value="${inoclCode }3차이상" readonly>
				</div>
			</div>
			
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">성명</label>
				<div class="col-sm-3">
					<input name="pstiSexdstn" type="text" class="form-control" id="inputEmail3"
						value="${pstiSexdstn }남" readonly>
				</div>
				<label for="inputEmail3" class="col-sm-2 control-label text-right">나이</label>
				<div class="col-sm-3">
					<input name="pstiAge" type="text" class="form-control" value="${pstiAge }27" readonly>
				</div>
			</div>
			
			<div class="form-group row">
				<label for="inputPassword3"
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">주민/외국인등록번호</label>
				<div class="col-sm-8">
					<input name="pstiRrn" type="text" class="form-control" value="${pstiRrn }960101-1111111" readonly>
				</div>
			</div>
			
			
			
			<div class="form-group row">
				<label for="inputPassword3"
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">발열여부</label>
				<div class="col-sm-3">
					<input name="pstiPyrexiaYn" type="text" class="form-control"
						id="inputPassword3" value="${pstiPyrexiaYn }Y" readonly>
				</div>
				<label for="inputPassword3"
					class="col-sm-2 control-label text-right" style="padding-top: 7px;">임신여부</label>
				<div class="col-sm-3">
					<input name="pstiPregnanYn" type="text" class="form-control"
						id="inputPassword3" value="${pstiPregnanYn }N" readonly>
				</div>
			</div>
			
			<div class="form-group row">
				<label for="inputPassword3"
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">증상</label>
				<div class="col-sm-8">
					<input name="pstiSymptms" type="text" class="form-control"
						id="inputPassword3" value="${pstiSymptms }기침, 두통, 어지럼증" readonly>
				</div>
			</div>
			
			<div class="form-group row">
				<label for="inputPassword3"
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">연락처</label>
				<div class="col-sm-8">
					<input name="pstiTelno" type="text" class="form-control"
						id="inputPassword3" value="${pstiTelno }000-0000-0000" readonly>
				</div>
			</div>

			<div class="form-group row">
				<label for="inputPassword3"
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">주소</label>
				<div class="col-sm-8">
					<input name="pstiAdres" type="text" class="form-control"
						id="inputPassword3" value="${pstiAdres }oo시 oo로 oo-oo 상세주소" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label for="inputPassword3"
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">직업</label>
				<div class="col-sm-8">
					<input name="pstiAdres" type="text" class="form-control"
						id="inputPassword3" value="${pstiAdres }군인" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label for="inputPassword3"
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">작성일</label>
				<div class="col-sm-8">
					<input name="wrtYmd" type="text" class="form-control"
						id="inputPassword3" value="${wrtYmd }2022-01-05" readonly>
				</div>
			</div>
		</div>
	</div>
</div>