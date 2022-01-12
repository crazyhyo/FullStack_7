<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">

	<div class="card card-success">
		<div class="card-header" style="background-color: #5b6f90;">
			<h3 class="card-title">환자상세</h3>
		</div>
		<div class="register-card-body">
			<div class="form-group row">
				<input type="hidden" name="pstiInnb" value="${pstiInnb }">
				<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">환자번호</label>
				<div class="col-sm-3">
					<input name="pstiNm" type="text" class="form-control" id="inputEmail3"
						value="${pstiNm }HSPL3939203" readonly>
				</div>
				<label for="inputEmail3" class="col-sm-2 control-label text-right" style="padding-top: 7px;">담당의</label>
				<div class="col-sm-3">
					<input name="pstiNlty" type="text" class="form-control" id="inputEmail3"
						value="${pstiNlty }이순신" readonly>
				</div>
			</div>
			<div class="form-group row">
				<input type="hidden" name="pstiInnb" value="${pstiInnb }">
				<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">성명</label>
				<div class="col-sm-3">
					<input name="chckReasonCode" type="text" class="form-control" id="inputEmail3"
						value="${chckReasonCode }홍길동" readonly>
				</div>
				<label for="inputEmail3" class="col-sm-2 control-label text-right" style="padding-top: 7px;">입원일</label>
				<div class="col-sm-3">
					<input name="inoclCode" type="text" class="form-control" id="inputEmail3"
						value="${inoclCode }2022-01-05" readonly>
				</div>
			</div>
			
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">성별</label>
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
				<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">백신접종</label>
				<div class="col-sm-3">
					<input name="pstiSexdstn" type="text" class="form-control" id="inputEmail3"
						value="${pstiSexdstn }남" readonly>
				</div>
				<label for="inputEmail3" class="col-sm-2 control-label text-right">중증도</label>
				<div class="col-sm-3">
					<input name="pstiAge" type="text" class="form-control" value="${pstiAge }중증" readonly>
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
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">진료 메모</label>
				<div class="col-sm-8">
					<input name="wrtYmd" type="text" class="form-control"
						id="inputPassword3" value="${wrtYmd }기저질환이 있으므로 주의깊게 지켜봐야함." readonly>
				</div>
			</div>
			
			<div class="form-group row">
				<label for="inputPassword3"
					class="col-sm-4 control-label text-right" style="padding-top: 7px;">음성판정 누적수</label>
				<div class="col-sm-8">
					<input name="wrtYmd" type="text" class="form-control"
						id="inputPassword3" value="${wrtYmd }2022-01-05" readonly>
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-4"></div>
				
				<button type="button" class="btn btn-primary col-sm-2" style="background-color: #5b6f90; border-color:#5b6f90; float: left; margin-left:7px; margin-right: 17px;">사망 처리</button>
				<button type="button" class="btn btn-primary col-sm-3" style="background-color: #5b6f90; border-color:#5b6f90; margin-right: 17px;">재검 신청</button>
				<button type="button" class="btn btn-primary col-sm-2" style="background-color: #5b6f90; border-color:#5b6f90;">닫기</button>
			</div>
		</div>
	</div>
</div>