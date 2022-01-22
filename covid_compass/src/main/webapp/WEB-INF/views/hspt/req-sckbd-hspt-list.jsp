<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template" id="req-sckbd-hspt-list-template">
{{#each .}}
          <tr
			data-manage-no="{{manageNo}}"
            onclick="showDetail('{{manageNo}}')"
            class="each-sckbdreq-element">
            <td>{{pstiNm}}</td>
            <td>{{age}}</td>
            <td>{{pstiTelno}}</td>
            <td>{{hsptNm}}</td>
            <td>{{prettifyDate sckbdreqYmd}}</td>
            <td>{{sckbdreqCode}}</td>
          </tr>
{{/each}}
</script>

<script type="text/x-handlebars-template" id="req-sckbd-ltct-list-template">
{{#each .}}
          <tr
			data-manage-no="{{manageNo}}"
            onclick="showDetail('{{manageNo}}')"
            class="each-sckbdreq-element">
            <td>{{pstiNm}}</td>
            <td>{{age}}</td>
            <td>{{pstiTelno}}</td>
            <td>{{ltctNm}}</td>
            <td>{{prettifyDate sckbdreqYmd}}</td>
            <td>{{sckbdreqCode}}</td>
          </tr>
{{/each}}
</script>

<script type="text/x-handlebars-template" id="inptnt-pagination-template">
    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="1"> <i class="fas fa-angle-double-left" style="color:#1a4f72;"></i>
    </a></li>
    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="{{#if prev}}{{prevPageNum}}{{/if}}"> <i class="fas fa-angle-left" style="color:#1a4f72;"></i>
    </a></li>

{{#each pageNum}}
    <li class="page-item each-inptnt-pagination-element {{signActive this}}" ><a class="page-link" href="{{this}}" >{{this}}</a></li>
{{/each}}

    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="{{#if next}}{{nextPageNum}}{{/if}}"> <i class="fas fa-angle-right" style="color:#1a4f72;"></i>
    </a></li>
    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="{{realEndPage}}"> <i class="fas fa-angle-double-right" style="color:#1a4f72;"></i>
</a></li>
</script>


<script>

function showDetail(manageNo, type){
	
	
	
	var trs = $('tr.each-sckbdreq-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-manage-no="'+manageNo+'"]');
	
	target.addClass('on');
	
	var url = '<%=request.getContextPath()%>/rest-hspt/sckbdreq-detail';
	$.ajax({
	    url : url,
	    type : 'post',
	    dataType : 'json',
	    data : {'manageNo' : manageNo},
	    success : function(sckbdreqDetailCommand){
	    	console.log(sckbdreqDetailCommand);
	    	printData(sckbdreqDetailCommand, $('#sckbdreq-detail-info-module'), $('#sckbdreq-detail-template'), '.sckbdreq-detail-info');
	    },
	    error : function(error){
	      alert('error' + error.status);
	    }
	  });
}
</script>


<script>


Handlebars.registerHelper({
"prettifyDate" : function(timeValue){
  var dateObj = new Date(timeValue);
  var year = dateObj.getFullYear();
  var month = dateObj.getMonth() + 1;
  var date = dateObj.getDate();
  return year + "-" + month + "-" + date;
},
"signActive" : function(pageNum){
  if(pageNum == page) return 'active';
},
"getExist" : function(a, b){
	return a || b;
}

});


</script>
<script>

var page = 1;

var url = '<%=request.getContextPath()%>/rest-hspt/sckbdreq-list';

	var targetId = '';

	var pagenationId = '';

	var templateId = '';

	window.onload = function() {

		addEvnetWaitTab();
		addEvnetReqTab();

		list_go(url, page);
		$('ul.pagination').on('click', 'li a', function(event) {
			if ($(this).attr("href")) {
				page = $(this).attr("href");
				getPage(url, make_form(page), targetId, pagenationId, templateId);
				//			list_go(url, pageParam, targetId, pagenationId);
			}

			return false;
		});
	}

	function make_form(pageParam) {

		var jobForm = $('#jobForm');
		if (!pageParam)
			page = 1;

		page = pageParam;

		jobForm.find("[name='page']").val(page);
		jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
		//  jobForm.find("[name='perPageNum']").val(2);
		jobForm.find("[name='searchType']").val($('select[name="searchType"]').val());
		jobForm.find("[name='keyword']").val($('div.input-group>input[name="keyword"]').val());

		return jobForm;
	}

	function list_go(url, pageParam, targetId, pagenationId, templateId) {
		getPage(url, make_form(pageParam), targetId, pagenationId, templateId);
	}

	function getPage(handelbarsProcessingURL, form, targetId, pagenationId, templateId) {

		console.log(targetId, pagenationId);

		if (!targetId)
			targetId = '#req-sckbd-hspt-list-table-tbody';
		if (!pagenationId)
			pagenationId = '#inptnt-list-pagination-ul';
		if (!templateId)
			templateId = '#req-sckbd-hspt-list-template';

		$.ajax({
			url : handelbarsProcessingURL,
			type : 'get',
			dataType : 'json',
			data : form.serialize(),
			success : function(dataMap) {
				console.log(dataMap.pageMaker);
				printData(dataMap.sckbdreqList, $(targetId), $(templateId), '.each-sckbdreq-element');
				printPagination(dataMap.pageMaker, $(pagenationId), $('#inptnt-pagination-template'), '.each-inptnt-pagination-element');
			},
			error : function(error) {
				alert('error' + error.status);
			}
		})
	}

	//jsonArray는 ResponseEntity에서 넣어준 List가 들어가는 자리
	//target은 handlebars로 생성한 마크업을 append할 대상으로 jquery객체이며 리스트에서 쓸 경우 보통 tbody에 id를 줘서 target으로 잡는다.
	//templateObject는 handlebars를 이용하여 만든 템플릿으로 jquery객체이다.
	//removeClass는 append하기전에 기존에 있던 리스트<여기서는 handlebars로 붙인 요소 목록>를 지우기 위해서 '.(클래스이름)'을 넣는다.
	//이를 위하여 templateObject에서 handlebars로 붙인 요소 목록를 지칭할 class를 주어야 한다. 여기서는 .each-inptnt-element이며,
	//tr태그에 붙어있다.
	function printData(jsonArray, target, templateObject, removeClass) {

		// templateObject를 json data를 받으면 마크업을 return하는 function template로 반환한다.
		var template = Handlebars.compile(templateObject.html());

		// 함수 template에 파라미터 jsonArray를 넣어서 실행하여 html을 생성한다.
		var html = template(jsonArray);

		// 해당 html요소를 append하기 전에 기존에 있던 내용을 지운다. (안그러면 리스트 목록이 10개씩만 보이는 게 아니라 10개, 20개, 30개 등 페이지 클릭할 때마다 10개씩 추가되므로)
		$(removeClass).remove();

		// html요소를 append한다.
		target.append(html);
	}

	function printPagination(pageMaker, target, templateObject, removeClass) {

		var pageNum = new Array(pageMaker.endPage - pageMaker.startPage + 1);

		for (var i = 0; i < pageMaker.endPage - pageMaker.startPage + 1; i++) {
			pageNum[i] = pageMaker.startPage + i;
		}
		pageMaker.pageNum = pageNum;
		pageMaker.prevPageNum = pageMaker.startPage - 1;
		pageMaker.nextPageNum = pageMaker.endPage + 1;

		var template = Handlebars.compile(templateObject.html());
		var html = template(pageMaker);
		target.html("").html(html);
	}
</script>

<script>
	function addEvnetWaitTab() {
		var dgnssWaitTab = $('#custom-req-sckbd-hspt-tab');
		dgnssWaitTab.on('click', function() {
			$('#jobForm').find("[name='typeCode']").val("C103");
			templateId = "#req-sckbd-hspt-list-template";
			targetId = "#req-sckbd-hspt-list-table-tbody";
			pagenationId = "#inptnt-list-pagination-ul";
			page = 1;
			list_go(url, page, targetId, pagenationId, templateId);
		})
	}
	function addEvnetReqTab() {

		var dgnssReqTab = $('#custom-req-sckbd-ltct-tab');
		dgnssReqTab.on('click', function() {
			$('#jobForm').find("[name='typeCode']").val("C104");
			templateId = '#req-sckbd-ltct-list-template'
			targetId = "#req-sckbd-ltct-list-table-tbody";
			pagenationId = "#inptnt-req-list-pagination-ul";
			page = 1;
			list_go(url, page, targetId, pagenationId, templateId);
		})
	}
</script>
<script>
function prettyDate(timeValue){
  var dateObj = new Date(timeValue);
  var year = dateObj.getFullYear();
  var month = dateObj.getMonth() + 1;
  var date = dateObj.getDate();
  return year + "-" + month + "-" + date;
}

function showDetail(manageNo){
	
	detailUrl = '<%=request.getContextPath()%>/rest-hspt/sckbdreq-detail';
	
	var trs = $('tr.each-sckbdreq-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-manage-no="'+manageNo+'"]');
	
	target.addClass('on');	
	
	$.ajax({
		url : detailUrl,
		type : 'get',
		dataType : 'json',
		data : {manageNo : manageNo},
		success : function(sdc) {
			if(sdc.type == "A"){
				$("#hspt-tab-pstiNm").html(sdc.pstiNm);
				$("#hspt-tab-nlty").html(sdc.nlty);
				$("#hspt-tab-reqYmd").html(prettyDate(sdc.reqYmd));
				$("#hspt-tab-vacType").html(sdc.vacType);
				$("#hspt-tab-gender").html(sdc.gender);
				$("#hspt-tab-age").html(sdc.age);
				$("#hspt-tab-resYmd").html(prettyDate(sdc.resYmd));
				$("#hspt-tab-pstvYn").html(sdc.pstvYn);
				$("#hspt-tab-feverYn").html(sdc.feverYn);
				$("#hspt-tab-pregnYn").html(sdc.pregnYn);
				$("#hspt-tab-rrn").html(sdc.rrn);
				$("#hspt-tab-pstiTelno").html(sdc.pstiTelno);
				$("#hspt-tab-pstiAdres").html(sdc.pstiAdres);
				$("#hspt-tab-symptms").html(sdc.symptms);
				$("#hspt-tab-instNm").html(sdc.instNm);
				$("#hspt-tab-instTelno").html(sdc.instTelno);
				$("#hspt-tab-instAdres").html(sdc.instAdres);
				$("#hspt-tab-sckbdreqCode").html(sdc.sckbdreqCode);
				$("#hspt-tab-dgnssNote").html(sdc.dgnssNote);
			}
			if(sdc.type == "B"){
				$("#ltct-tab-pstiNm").html(sdc.pstiNm);
				$("#ltct-tab-nlty").html(sdc.nlty);
				$("#ltct-tab-reqYmd").html(prettyDate(sdc.reqYmd));
				$("#ltct-tab-vacType").html(sdc.vacType);
				$("#ltct-tab-gender").html(sdc.gender);
				$("#ltct-tab-age").html(sdc.age);
				$("#ltct-tab-resYmd").html(prettyDate(sdc.resYmd));
				$("#ltct-tab-pstvYn").html(sdc.pstvYn);
				$("#ltct-tab-feverYn").html(sdc.feverYn);
				$("#ltct-tab-pregnYn").html(sdc.pregnYn);
				$("#ltct-tab-rrn").html(sdc.rrn);
				$("#ltct-tab-pstiTelno").html(sdc.pstiTelno);
				$("#ltct-tab-pstiAdres").html(sdc.pstiAdres);
				$("#ltct-tab-symptms").html(sdc.symptms);
				$("#ltct-tab-ltctNm").html(sdc.ltctNm);
				$("#ltct-tab-ltctTelno").html(sdc.ltctTelno);
				$("#ltct-tab-ltctAdres").html(sdc.ltctAdres);
				$("#ltct-tab-sckbdreqCode").html(sdc.sckbdreqCode);
				$("#ltct-tab-dgnssNote").html(sdc.dgnssNote);				
			}

		},
		error : function(error) {
			alert('error' + error.status);
		}
	})		
	
}


</script>

<!-- 진료 요청 대기환자 목록 -->
<div class="row" style="margin: 1px;">
	<div class="col-md-6 pl-0">
		<div class="card">
			<!-- search bar -->
			<div class="card-body">
				<div class="table-responsive">
					<div style="height: 662px;">
						<table class="table table-hover text-nowrap" style="text-align: center;">
							<thead>
								<tr role="row">
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">성명</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">나이</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">연락처</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">병원이름</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">신청시각</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">신청결과</th>
								</tr>
							</thead>
							<tbody id="req-sckbd-hspt-list-table-tbody">
								<tr class="each-sckbdreq-element">
									<td colspan="6">테스트입니다.</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="card-footer clearfix pb-0 pt-0" style="background-color: white;">
						<ul class="pagination justify-content-center m-0" id="inptnt-list-pagination-ul">
						</ul>
					</div>
					<form id="jobForm">
						<input type='hidden' name="page" value="" /> 
						<input type='hidden' name="perPageNum" value="" /> 
						<input type='hidden' name="searchType" value="" /> 
						<input type='hidden' name="keyword" value="" /> 
						<input type='hidden' name="typeCode" value="" />
					</form>
				</div>
				<!-- /.table-responsive -->
			</div>
		</div>
	</div>
	<div class="col-md-6 pr-0">
		<!-- /.card-body -->
		<div class="card">
			<div class="card-body">
				<div class="sckbdreq-detail-info">
					<table class="table table-bordered">
						<thead>
							<tr style="text-align: center;">
								<th>성명</th>
								<td id="hspt-tab-pstiNm">{{pstiNm}}</td>
								<th>국적</th>
								<td id="hspt-tab-nlty">{{nlty}}</td>
							</tr>
						</thead>
						<tbody>
							<tr class="shittr" style="text-align: center;">
								<th>진료요청일자</th>
								<td id="hspt-tab-reqYmd">{{prettifyDate reqYmd}}</td>
								<th>백신접종</th>
								<td id="hspt-tab-vacType">{{vacType}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>성별</th>
								<td id="hspt-tab-gender">{{gender}}</td>
								<th>나이</th>
								<td id="hspt-tab-age">{{age}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>확정일자</th>
								<td id="hspt-tab-resYmd">{{prettifyDate resYmd}}</td>
								<th>결과</th>
								<td id="hspt-tab-pstvYn">{{pstvYn}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>발열여부</th>
								<td id="hspt-tab-feverYn">{{feverYn}}</td>
								<th>임신여부</th>
								<td id="hspt-tab-pregnYn">{{pregnYn}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>주민/외국인등록번호</th>
								<td id="hspt-tab-rrn">{{rrn}}</td>
								<th>연락처</th>
								<td id="hspt-tab-pstiTelno">{{pstiTelno}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>주소</th>
								<td colspan="3" id="hspt-tab-pstiAdres">{{pstiAdres}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>증상</th>
								<td colspan="3" id="hspt-tab-symptms">{{symptms}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>병상신청기관</th>
								<td id="hspt-tab-instNm">{{getExist ltctNm instNm}}</td>
								<th>기관연락처</th>
								<td id="hspt-tab-instTelno">{{getExist ltctTelno instTelno}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>신청기관 주소</th>
								<td colspan="3" id="hspt-tab-instAdres">{{getExist ltctAdres instAdres}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>신청결과</th>
								<td colspan="3" id="hspt-tab-sckbdreqCode">{{sckbdreqCode}}</td>
							</tr>
						</tbody>
					</table>

					<table class="table table-bordered">
						<tr>
							<td colspan="4">
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-12 control-label text-center" style="padding-top: 7px;">진료 메모</label>
								</div>
								<div class="form-group row">
									<div class="col-sm-12">
										<div style="border: 1px solid #e9e9e9; width: 520px; height: 100px; overFlow: auto; margin-left: 23px;">
											<span id="hspt-tab-dgnssNote">{{dgnssNote}}</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="form-group row" style="padding-top: 6px;">
					<div class="col-md-6"></div>
					<div class="col-md-3"></div>
					<div class="col-md-3">
						<button type="button" class="btn btn-block btn-primary btn-sm" style="background-color: #1a4f72; border-color: #1a4f72;">취소</button>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>