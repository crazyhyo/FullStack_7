<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  진료 신청 목록 디테일 진료 신청한사람 정보+ 신청한 병원 정보  -->
<head></head>
<title></title>

<body>
	<div class="row">
			<div class="card" style="margin-left: 20px; margin-top: 20px;">
				<div class="card-header" style="background-color: #5bbc71;">
				<h3 class="card-title"><span style="color: white">확진자 상세 정보</span></h3>
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
									id="inputPassword3" value="${pstiAdres }대전광역시 서구 둔산동 1032 708호" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-4 control-label text-right" style="padding-top: 7px;">양성 확정일</label>
							<div class="col-sm-8">
								<input name="wrtYmd" type="text" class="form-control"
									id="inputPassword3" value="${wrtYmd }2022-01-05" readonly>
							</div>
						</div>
					</div>
			</div>
				
				<div>
			<!-- search bar -->
		</div>
			<div class="card" style="margin-left: 10px; margin-top: 20px;">
			  <div class="card-header" style="background-color: #5bbc71;">
				<h3 class="card-title"><span style="color: white">신청 정보</span></h3>
				</div>
				<div class="card-body">
				<div class="row">
				<table class="table table-bordered">
                  <thead>
                  	<tr>
                  		<th colspan="4">병원 정보</th>
                  	</tr>
                    <tr style="text-align: center;">
                      <th>시도</th>
                      <th>시군구</th>
                      <th>병원</th>
                      <th>전화번호</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="shittr"  style="text-align: center;">
                      <td>서울특별시</td>
                      <td>서울시 도봉구</td>
                      <td>병원이름</td>
                      <td>042-7777-777</td>
                    </tr>
                  </tbody>
                </table>
                 </div>
                 
                 
                 <div class="row">
				<table class="table table-bordered">
                  <thead>
                    <tr>
                    	<th colspan="2">신청 내역</th>
                    </tr>
                    <tr style="text-align: center;">
                      <th>진료 요청 상태</th>
                      <th>진료 요청일</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="shittr"  style="text-align: center;">
                      <td>대기</td>
                      <td>2022-01-01 13:57:21</td>
                    </tr>
                    <tr>
                    	<td colspan="2"><button class="btn btn-success btn-sm" style="width: 100%">진료 신청 취소</button></td>
                    </tr>
                  </tbody>
                </table>
                </div>
              </div>  
			</div>
		
	</div>
</body>