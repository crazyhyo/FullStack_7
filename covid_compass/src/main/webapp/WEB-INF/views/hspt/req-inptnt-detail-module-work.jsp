<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/x-handlebars-template" id="req-inptnt-detail-template">
<div class="req-inptnt-detail-info">
			<table class="table table-bordered req-inptnt-detail-info">
    <thead>
      <tr style="text-align: center;">
        <th>성명</th>
        <td>{{pstiNm}}</td>
        <th>국적</th>
        <td>{{nlty}}</td>
      </tr>
    </thead>
    <tbody>
      <tr class="shittr" style="text-align: center;">
        <th>진료요청일자</th>
        <td>{{prettifyDate reqYmd}}</td>
        <th>백신접종</th>
        <td>{{vacType}}</td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>성별</th>
        <td>{{gender}}</td>
        <th>나이</th>
        <td>{{age}}</td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>확정일자</th>
        <td>{{prettifyDate resYmd}}</td>
        <th>결과</th>
        <td>{{pstvYn}}</td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>발열여부</th>
        <td>{{feverYn}}</td>
        <th>임신여부</th>
        <td>{{pregnYn}}</td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>주민/외국인등록번호</th>
        <td>{{rrn}}</td>
        <th>연락처</th>
        <td>{{pstiTelno}}</td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>주소</th>
        <td colspan="3">{{pstiAdres}}</td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>증상</th>
        <td colspan="3">{{symptms}}</td>
      </tr>
		<tr class="shittr" style="text-align: center;">
						<th>병상신청기관</th>
						<td>{{instNm}}</td>
						<th>기관연락처</th>
						<td>{{instTelno}}</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>신청기관 주소</th>
						<td colspan="3">{{instAdres}}</td>
					</tr>
    </tbody>
  </table>

			<table class="table table-bordered">
				<tr class="shittr" style="text-align: center;">
					<th>진료결과</th>
					<td colspan="3">{{dgnssResultCode}}</td>
				</tr>
				<tr>
					<td colspan="4">
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-12 control-label text-center"
								style="padding-top: 7px;">{{dgnssNote}}</label>
						</div>
						<div class="form-group row">
							<div class="col-sm-12">
								<div
									style="border: 1px solid #e9e9e9; width: 520px; height: 100px; overFlow: auto; margin-left: 23px;">
									<span>진료결과</span>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
</script>

<script>

function showDetail(manageNo){
	
	var trs = $('tr.each-req-inptnt-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-manage-no="'+manageNo+'"]');
	
	target.addClass('on');
	
	var url = '<%=request.getContextPath()%>/rest-hspt/req-inptnt-detail';
	$.ajax({
	    url : url,
	    type : 'post',
	    dataType : 'json',
	    data : {'manageNo' : manageNo},
	    success : function(reqInptntDetailCommand){
	    	console.log(reqInptntDetailCommand);
	    	printData(reqInptntDetailCommand, $('#req-inptnt-detail-info-module'), $('#req-inptnt-detail-template'), '.req-inptnt-detail-info');
	    },
	    error : function(error){
	      alert('error' + error.status);
	    }
	  });
}
</script>	
	
	
<div class="">
	<div id="req-inptnt-detail-info-module">
		<div class="req-inptnt-detail-info">
			<table class="table table-bordered">
				<thead>
					<tr style="text-align: center;">
						<th>성명</th>
						<td>홍길동</td>
						<th>국적</th>
						<td>KOREA</td>
					</tr>
				</thead>
				<tbody>
					<tr class="shittr" style="text-align: center;">
						<th>신청일자</th>
						<td>2021-01-12</td>
						<th>백신접종</th>
						<td>3차 이상</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>성별</th>
						<td>남</td>
						<th>나이</th>
						<td>27</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>확정일자</th>
						<td>2022-01-01</td>
						<th>결과</th>
						<td>양성</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>발열여부</th>
						<td>Y</td>
						<th>임신여부</th>
						<td>N</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>주민/외국인등록번호</th>
						<td>960101-1111111</td>
						<th>연락처</th>
						<td>010-5678-1234</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>환자주소</th>
						<td colspan="3">대전광역시 서구 둔산동 1032 70호8</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>증상</th>
						<td colspan="3">기침, 두통, 복통, 어지러움</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>병상신청기관</th>
						<td>기재병원</td>
						<th>기관연락처</th>
						<td>010-5678-1234</td>
					</tr>
					<tr class="shittr" style="text-align: center;">
						<th>신청기관 주소</th>
						<td colspan="3">대전광역시 서구 둔산동 1032 70호8</td>
					</tr>
				</tbody>
			</table>

			<table class="table table-bordered">
				<tr class="shittr" style="text-align: center;">
					<th>진료결과</th>
					<td colspan="3">중증 및 중등증</td>
				</tr>
				<tr>
					<td colspan="4">
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-12 control-label text-center"
								style="padding-top: 7px;">진료 메모</label>
						</div>
						<div class="form-group row">
							<div class="col-sm-12">
								<div
									style="border: 1px solid #e9e9e9; width: 520px; height: 100px; overFlow: auto; margin-left: 23px;">
									<span>진료결과</span>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div class="form-group row" style="padding-top: 6px;">
		<div class="col-md-6"></div>
		<div class="col-md-3">
			<button type="button" class="btn btn-block btn-primary btn-sm"
				style="background-color: #1a4f72; border-color: #1a4f72;">승인</button>
		</div>
		<div class="col-md-3">
			<button type="button" class="btn btn-block btn-primary btn-sm"
				style="background-color: #1a4f72; border-color: #1a4f72;">반려</button>
		</div>
	</div>
</div>
