<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

</head>
<title></title>

<body>

	<div class="row">
			<div class="card" style="margin-left: 20px; margin-top: 20px;">
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
		<div>
			<div class="card" style="margin-left: 10px; margin-top: 20px;">
					<div class="card-outline card-tabs">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="psti-detail-tab" data-toggle="pill"
									href="#custom-psti-detail" role="tab"
									aria-controls="custom-tabs-three-home" aria-selected="true">진료신청</a></li>
								<li class="nav-item"><a class="nav-link"
									id="psti-htsc-regist-tab" data-toggle="pill"
									href="#custom-psti-htsc-regist" role="tab"
									aria-controls="custom-tabs-three-profile" aria-selected="false">재검신청</a>
								</li>
							</ul>
						<div class="card-body">
							<div class="tab-content" id="custom-tabs-three-tabContent">
								<div class="tab-pane fade show active" id="custom-psti-detail"
									role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
									<%@ include file="./isoptnt-detail-info-module.jsp"%>
								</div>
								<div class="tab-pane fade" id="custom-psti-htsc-regist"
									role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
									<%@ include file="./isoptnt-form-module.jsp"%>
								</div>
							</div>
						<!-- /.card -->
					</div>
				</div>
			
			</div>
			<!-- search bar -->
		</div>


	</div>

	<!-- /.card-body -->
	
	
</body>

