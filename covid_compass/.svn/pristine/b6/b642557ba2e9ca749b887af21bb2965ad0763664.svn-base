<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<head>
<!--  임신여부 예 누르고 남자 누르고 여자 누르면 예 그대로 선택되있는거 풀어줘야함. -->
<!-- 모달 버블링 방지해야함. -->
<!--  모달에서 등록버튼누르면 체크되게해야함. -->
<style>
.fontred{
	color: red;
}
.modal {
        text-align: center;
}

@media screen and (min-width: 768px) {
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}

.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
}
</style>
</head>
<title></title>
<body>
	<div class="wrapper" style="max-width: 1280px; margin: 0 auto;">
		<div class="row">
			<div class="col-md-12" style="margin-top: 10px;">
				<div class="card card-default">
					<div class="card-header">
						<h3 class="card-title">문진표 작성</h3>
					</div>
					
					<form name="psti-regist-form">
										
					<div class="card-body p-0">
						<div class="bs-stepper linear">
							<div class="bs-stepper-header" role="tablist">
								<!-- your steps here -->
								<div class="step active" data-target="#logins-part">
									<button type="button" class="step-trigger" role="tab" aria-controls="logins-part" id="logins-part-trigger" aria-selected="true">
										<span class="bs-stepper-circle">1</span>
										<span class="bs-stepper-label">개인정보</span>
									</button>
								</div>
								<div class="line"></div>
								<div class="step" data-target="#information-part">
									<button type="button" class="step-trigger" role="tab" aria-controls="information-part" id="information-part-trigger" aria-selected="false" disabled="disabled">
										<span class="bs-stepper-circle">2</span>
										<span class="bs-stepper-label">증상/기타정보</span>
									</button>
								</div>
							</div>
							
							
							<div class="bs-stepper-content">
								<!-- your steps content here -->
								<div id="logins-part" class="content active dstepper-block"
									role="tabpanel" aria-labelledby="logins-part-trigger">

									<div class="form-group">
										<label for="rechkdYn">검사경위<span class="fontred">*</span></label><br>
										<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:100%">
											<label class="btn btn-outline-primary active" id="code_my">
												<input type="radio" name="rechkdYn" id="rechkdYn_my" autocomplete="off" value="G101" checked="">본인판단
											</label> <label class="btn btn-outline-primary" id="code_sick">
												<input type="radio" name="rechkdYn" id="rechkdYn_sick" autocomplete="off" value="G102">자가격리
											</label>
										</div>
									</div>

									<div class="form-group">
										<label for="rrn">주민/외국인등록번호<span class="fontred">*</span></label>
										 <input type="text" class="form-control" name="rrn" id="rrn" maxlength="14" oninput="rrnAutoHyphen(this)">
									</div>

									<div class="form-group">
										<label for="pstiNm">이름 <span class="fontred">*(숫자,특수문자 입력불가)</span></label>
										<input type="text" class="form-control" name="pstiNm" id="pstiNm" onKeyup="this.value=this.value.replace(/[^ㄱ-ㅎ|가-힣|a-z|A-Z]/g,'');">
									</div>

									<div class="form-group">
										<label for="birth">생년월일<span class="fontred">*</span></label>
										<input type="text" class="form-control" id="birth" placeholder="YYYYMMDD" maxlength="8" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
									</div>

									<div class="form-group">
										<label for="gender">성별<span class="fontred">*</span></label><br>
										<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:100%">
											<label class="btn btn-outline-primary active" id="psti_sex_m">
												<input type="radio" name="gender" id="gender_m" autocomplete="off" value="M" checked>남
											</label>
											<label class="btn btn-outline-primary" id="psti_sex_w">
												<input type="radio" name="gender" id="gender_w" autocomplete="off" value="W">여
											</label>
										</div>
									</div>

									<div class="form-group" id="pregnan" style="display: none;">
										<label for="pregnYn">임신여부</label><br>
										<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:100%">
											<label class="btn btn-outline-primary active">
											<input type="radio" name="pregnYn" id="psti_pregnan_y" autocomplete="off" value="Y">예
											</label>
											<label class="btn btn-outline-primary">
											<input type="radio" name="pregnYn" id="psti_pregnan_n" autocomplete="off" value="N" checked="">아니오
											</label>
										</div>
									</div>

									<div class="form-group">
										<label for="nlty">국적<span class="fontred">*</span></label><br>
										<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:100%">
											<label class="btn btn-outline-primary active" id="nlty_korea">
											<input type="radio" name="nlty" id="nlty_korean" autocomplete="off" value="KOREA" checked="">내국인
											</label>
											<label class="btn btn-outline-primary" id="nlty_foreigner">
											<input type="radio" name="nlty" id="nlty_foreigner_check" value="Foreigner" autocomplete="off">Foreigner
											</label>
										</div>
									</div>
									<input type="text" class="form-control" name="nlty" style="display: none;" id="nlty_foreigner" placeholder="Please enter your nationality.">

									<div class="form-group">
										<label for="pstiTelno">휴대폰번호<span class="fontred">*</span></label>
										<input type="text" class="form-control" id="pstiTelno" name="pstiTelno" maxlength="13" oninput="autoHyphen(this)">
									</div>

									<div class="form-group">
										<label for="pstiAdres">실거주지주소<span class="fontred">*</span></label><br>
										<div class="row">
										<input type="text" class="form-control" id="pstiAdresnum" readonly style="width: 20%">
										<button type="button" onclick="address_go();" class="btn btn-primary">주소검색</button>
										<input type="text" class="form-control" id="pstiAdres1" name="pstiAdres" readonly>
										<input type="text" class="form-control" id="pstiAdres2" name="pstiAdres" placeholder="상세주소를 입력하세요.">
										</div>
									</div>

									<div class="form-group">
										<label for="jobCode">직업<span class="fontred">*</span></label><br>
										<select id="jobCode" name="jobCode">
											<option value="A">의회의원,고위임직원 및 관리자</option>
											<option value="B">전문가</option>
											<option value="C">기술공 및 준전문가</option>
											<option value="D">사무종사자</option>
											<option value="E">서비스종사자</option>
											<option value="F">판매종사자</option>
											<option value="G">농업 및 어업숙련 종사자</option>
											<option value="H">기능원 및 기능관련 종사자</option>
											<option value="I">장치,기계조작 및 조립종사자</option>
											<option value="J">단순노무 종사자</option>
											<option value="K">군인</option>
											<option value="L">(전업) 주부</option>
											<option value="M">학생</option>
											<option value="N">무직</option>
											<option value="O">기타</option>
										</select>
									</div>
									<button type="button" class="btn btn-primary" onclick="ready();" style="width: 100%; margin: 0 auto;" id="nextview">다음</button>
								</div>
<!-- 							</div> -->


							<div id="information-part" class="content" role="tabpanel" aria-labelledby="information-part-trigger">
									<label for="feverYn">발열이 있으신가요?</label><br>
									<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width: 100%;">
											<label class="btn btn-outline-primary active" id="pyrexia_y">
											<input type="radio" name="feverYn" id="psti_pyrexia_y" autocomplete="off" value="Y">예
											</label>
											<label class="btn btn-outline-primary" id="pyrexia_n">
											<input type="radio" name="feverYn" id="psti_pyrexia_n" autocomplete="off" value="N">아니오
											</label>
									</div>

								<div class="form-group" style="display: none;" id="pyrexia" >
									<label for="pyrexia">발열 온도가 몇 도인가요?</label>
									<div>
									<input type="number" step="0.1" class="form-control" name="pyrexia"id="pyrexia_input" placeholder="발열온도를 입력하세요.">
									</div>
									<div class="card" >
										<span id="pyrexiacheck">
											<input type="checkbox" id="pyrexiadonknow" value="Y" style="vertical-align: middle; margin-left: 10px;">&nbsp;&nbsp;&nbsp;<span style="vertical-align: middle;">잘 모릅니다.</span>
										</span>
									</div>
								</div>


								<div class="form-group">
									<label for="symptms">현재 증상을 모두 선택해 주세요.</label>
								</div>

								<div class="symptom-list" style="padding: 1px">
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_999" value="999" data-val="증상없음" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_999" class="symptom-list__label" style="text-align: center;">
											<img src="<%=request.getContextPath()%>/resources/image/ill_999.svg"><br>
											<span>증상없음</span>
										</label>
									</div>
<div id="unchecked">
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_100" value="100" data-val="기침" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_100" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_100.svg"><br>
											<span>기침</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_101" value="101" data-val="가래" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_101" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_101.svg"><br>
											<span>가래</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_102" value="102" data-val="인후통" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_102" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_102.svg"><br>
											<span>인후통</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_103" value="103" data-val="호흡곤란" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_103" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_103.svg"><br>
											<span>호흡곤란</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_110" value="110" data-val="근육통" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_110" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_110.svg"><br>
											<span>근육통</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_111" value="111" data-val="두통" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_111" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_111.svg"><br>
											<span>두통</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_112" value="112" data-val="오한" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_112" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_112.svg"><br>
											<span>오한</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_120" value="120" data-val="미각소실" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_120" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_120.svg"><br>
											<span>미각소실</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_121" value="121" data-val="후각소실" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_121" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_121.svg"><br>
											<span>후각소실</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_200" value="200" data-val="설사" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_200" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_200.svg"><br>
											<span>설사</span>
										</label>
									</div>
									<div class="card col-3" style="float: left;">
										<input type="checkbox" class="symptom-list__checkbox" name="symptms" id="smptm_300" value="300" data-val="폐렴" placeholder="현재 증상을 모두 선택해 주세요." style="margin-top: 10px;">
										<label for="smptm_300" class="symptom-list__label" style="text-align: center">
											<img src="<%=request.getContextPath()%>/resources/image/ill_300.svg"><br>
											<span>폐렴</span>
										</label>
									</div>
</div> <!-- unchecked div -->
								</div>

								<br>
								<div class="form-group">
									<label>백신 접종 상태</label>
									<select name="vacCode">
										<option value="0">미접종</option>
										<option value="1">1차 접종</option>
										<option value="2">2차 접종</option>
										<option value="3">3차 접종이상</option>
									</select>
								</div>

								<div class="card">
									<label for="chk_agree" id="personokay">
										<span>
											<input type="checkbox" id="chk_person" value="Y" style="vertical-align: middle; margin-left: 10px;">&nbsp;&nbsp;&nbsp;<span style="vertical-align: middle;">개인정보 수집 동의</span>
												<span>
													<a id="modal" data-toggle="modal" data-target="#myModal" style="vertical-align: middle;">[개인정보취급방침]</a>
												</span>
										</span>
									</label>
								</div>
								<br> <br>
								<div class="row">
									<div class="col-md-6">
									<button type="button" class="btn btn-primary" onclick="previous();" style="width: 98%; float: left;">이전</button>
									</div>
									<div class="col-md-6">
									<button type="button" id="psti_submit" class="btn btn-primary" style="width: 98%; float: right;">제출하기</button>
									</div>
								</div>
							</div>

							</div>
							
							</form>
						</div>
					</div>
					<!-- /.card-body -->
					
					
					
					</form>
				</div>
				<!-- /.card -->
			</div>
		</div>
	</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
                <div class="modal-content" style="width: 450px;">
                        <div class="modal-header">
                                <h5 class="modal-title" id="myModalLabel">개인정보 수집 및 이용동의</h5><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></p>
                        </div>
                        <div class="modal-body">
	                        <table class="table table-bordered">
                  <tbody>
                    <tr style="text-align: center;">
                      <th style="width: 120px">목적</th>
                      <td style="text-align: left;">검사소 기초역학조사 정보등록</td>
                    </tr>

                    <tr style="text-align: center;">
                      <th style="width: 120px; vertical-align : middle;">항목</th>
                      <td style="text-align: left;">주민/외국인등록번호, 이름, 생년월일, 성별, 국적, 휴대폰번호, 실거주지 주소, 직업, 증상, 검사경위</td>
                    </tr>
                    <tr style="text-align: center">
                      <th style="width: 120px">보유기간</th>
                      <td style="text-align: left;">코로나19 경계상황 종료 후 즉시 폐기</td>
                    </tr>
                    <tr>
                   	  <td colspan="2" align="center">
                   	    <button class="btn btn-primary" style="width: 50%">동의</button>
                   	  </td>
                    </tr>
                  </tbody>
                </table>

                        </div>
                </div>
        </div>
</div>

<!-- //Stepper js -->
<script	src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>
<!-- 주소API js -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

 
//Stepper setting
window.onload = function() {
$(function() {
	document.addEventListener('DOMContentLoaded', function() {
		window.stepper = new Stepper(document
				.querySelector('.bs-stepper'))
	})
})

// 여자일때 임신 여부 출력
$('input[type=radio][id=gender_w]').on('click', function(){
	var chkValuew = $('input[type=radio][id=gender_w]:checked');
	if(chkValuew){
		$('#pregnan').css('display', 'block');
	}
})
// 남자일때 임신 여부 숨기기
$('input[type=radio][id=gender_m]').on('click', function(){
	var chkValuem = $('input[type=radio][id=gender_m]:checked');
	if(chkValuem){
		$('#pregnan').css('display', 'none');
	}
})
// 내국일 일때 국적 입력칸 숨기기
$('input[type=radio][id=nlty_korean]').on('click', function(){
	var chkValueKorea = $('input[type=radio][id=nlty_korean]:checked');
	if(chkValueKorea){
		$('#nlty_foreigner').css('display', 'none');
		$('#nlty_foreigner').val("");
	}
})
// 외국인 일때 국적 입력칸 출력
$('input[type=radio][id=nlty_foreigner_check]').on('click', function(){
	var chkValueForeigner = $('input[type=radio][id=nlty_foreigner_check]:checked');
	if(chkValueForeigner){
		$('#nlty_foreigner').css('display', 'block');
	}
})
// 발열 여부 예 일때 입력칸 출력
$('input[type=radio][id=psti_pyrexia_y]').on('click', function(){
	var chkValuepyrexiaY = $('input[type=radio][id=psti_pyrexia_y]:checked');
	if(chkValuepyrexiaY){
		$('#pyrexia').css('display', 'block');
	}
})
// 발열 여부 아니오 일때 입력칸 숨기기
$('input[type=radio][id=psti_pyrexia_n]').on('click', function(){
	var chkValuepyrexiaN = $('input[type=radio][id=psti_pyrexia_n]:checked');
	if(chkValuepyrexiaN){
		$('#pyrexia').css('display', 'none');
	}
})
// 온도 모릅니다 버튼 클릭시 input value 사라짐.
$('#pyrexiadonknow').on('change', function(){
	var chkValue = $('input[type=checkbox][id=pyrexiadonknow]:checked');
	if(chkValue){
		$('#pyrexia_input').val("");
	}
})
// 온도 input value 기입시 온도 모릅니다 버튼 클릭 해제
$('#pyrexia_input').on('keyup', function(){
	$('#pyrexiadonknow').prop('checked', false);
})

// 온도 잘 모릅니다 폼 클릭시 체크/해제
$('#pyrexiacheck').on('click', function(){
	var chkValue = $('#pyrexiadonknow').attr('checked');
	if(chkValue == 'checked'){
		$('#pyrexiadonknow').attr('checked', false);
	}else{
		$('#pyrexiadonknow').attr('checked', true);
	}
})
// 개인제공 폼 클릭시 체크/해제
$('#personokay').on('click', function(){
 	var chkValue = $('#chk_person').attr('checked');
 	if(chkValue == 'checked'){
		$('#chk_person').attr('checked', false);
 	}else{
		$('#chk_person').attr('checked', true);
 	}
})
// 주민등록번호 입력시 생년월일, 성별 자동 체크/해제
$('#rrn').on('change', function(){
	var rrn_length = $('#rrn').val().length;

	if(rrn_length == 14){
		var year = $('#rrn').val().substring(0,2)
		if(year <= 22){
		var birth = '20'+ $('#rrn').val().substring(0,6);
		}else{
		var birth = '19'+ $('#rrn').val().substring(0,6);
		}

		$('#birth').val(birth);

		var sex = $('#rrn').val().substring(7,8);
		var response_sexw = sex % 2 == 0;
		var response_sexm = sex % 2 == 1;
		if(response_sexw){
			$('#gender_w').trigger('click');
			$('#psti_pregnan_n').trigger('click');
		}
		if(response_sexm){
			$('#gender_m').trigger('click');
			$('#psti_pregnan_n').trigger('click');
		}
	}

})

// 검사경위 버튼 checked 값 변경
$('#rechkdYn_my').on('click', function(){
	$('#rechkdYn_my').attr('checked', true);
	$('#rechkdYn_sick').attr('checked', false);
})
$('#rechkdYn_sick').on('click', function(){
	$('#rechkdYn_sick').attr('checked', true);
	$('#rechkdYn_my').attr('checked', false);
})

// 국적 버튼 토글 checked 값 변경
$('#nlty_korean').on('click', function(){
	$('#nlty_korean').attr('checked', true);
	$('#nlty_foreigner_check').attr('checked', false);
})
$('#nlty_foreigner_check').on('click', function(){
	$('#nlty_foreigner_check').attr('checked', true);
	$('#nlty_korean').attr('checked', false);
})

// 발열 여부 버튼 checked 값 변경
$('#psti_pyrexia_y').on('click', function(){
	$('#psti_pyrexia_y').attr('checked', true);
	$('#psti_pyrexia_n').attr('checked', false);
})
$('#psti_pyrexia_n').on('click', function(){
	$('#psti_pyrexia_n').attr('checked', true);
	$('#psti_pyrexia_y').attr('checked', false);
	$('#pyrexia_input').val("");
	$('#pyrexiadonknow').attr('checked', false);
})
//문항 입력 확인
$('#nextview').on('click', function(){
	var rrn = $('#rrn').val();
	var nm = $('#pstiNm').val();
	var bth = $('#birth').val();
	var tel = $('#pstiTelno').val();
	var adres = $('#pstiAdres1').val();
	var adress = $('#pstiAdres2').val();

	var rrn_length = $('#rrn').val().length;
	if(rrn_length < 14){
		alert("주민/외국인등록번호를 잘못 입력하셨습니다.\n다시 작성해주세요.")
		return previous();
	}

	if(!(rrn && nm && bth && tel && adres && adress)){
		alert("모든 문항을 입력해주셔야 다음문항으로 이동이 가능합니다.");
		return previous();
	}

})
// 전송 버튼 클릭시, 동의서 체크 확인
$('#psti_submit').on('click', function(){
	var person = $('#chk_person').is(':checked');
	var pyrexiay = $('#psti_pyrexia_y').is(':checked');
	var pyrexian = $('#psti_pyrexia_n').is(':checked');

	if(!(pyrexiay || pyrexian)){
		alert("발열 여부를 선택해주세요.")
		return;
	}

	if(!(person)){
		alert("개인 정보 수집 동의서에 체크를 해주셔야만 문진표 제출이 가능합니다.");
		return;
	}
	
	alert('test');
	location.href = '<%=request.getContextPath()%>/insp/psti-regist-test';
	
})
// 증상없을 클릭시 증상 클릭 체크 해제
$('#smptm_999').on('click', function(){
	var smptm = $('#smptm_999').is(':checked');
	if(smptm){
		$('#unchecked input[name=symptms]').prop('checked', false);
	}
})
// 증상 있음 클릭시 증상 없음 체크 해제
$('#unchecked .symptom-list__checkbox').on('click', function(){
	$('#smptm_999').prop('checked', false);
})

$('#modal').on('click', function(){
	$('#myModal').show();

})

} // window.onload function

// 주민등록번호 하이픈 자동 입력
const rrnAutoHyphen = (target) =>{
	target.value = target.value.replace(/[^0-9]/, '').replace(/^(\d{6})(\d{1,7})$/,`$1-$2`);
}

// 연락처 하이픈 자동 입력
const autoHyphen = (target) => {
	target.value = target.value.replace(/[^0-9]/, '').replace(/^(\d{2,3})(\d{3,4})(\d{4})$/,`$1-$2-$3`);
}

//Stepper setting
function ready() {
	var stepper = new Stepper(document.querySelector('.bs-stepper'));
	stepper.next();
}
function previous() {
	var stepper = new Stepper(document.querySelector('.bs-stepper'));
	stepper.previous();
}

//제출 버튼
function submit(){
	alert('test');
}

//주소 API
function address_go() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("pstiAdres1").value = extraAddr;

            } else {
                document.getElementById("pstiAdres1").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('pstiAdresnum').value = data.zonecode;
            document.getElementById("pstiAdres1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("pstiAdres2").focus();
        }
    }).open();
}

</script>

</body>