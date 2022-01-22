<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="cnfrm-manage-list-template" >
{{#each .}}
          <tr 
			data-inst-no="{{pbhtNo}}" data-manage-no="{{manageNo}}"
            class="each-smpl-result-element">
            <td>{{pstiNm}}</td>
            <td>{{pstiTelno}}</td>
            <td>{{prettifyDate inYmd}}</td>
            <td>{{sttusCode}}</td>
            <td>{{instNm}}</td>
          </tr>
{{/each}}
</script>

<script type="text/x-handlebars-template"  id="cnfrm-slf-req-list-template" >
{{#each .}}
         <tr 
			data-inst-no="{{pbhtNo}}" data-manage-no="{{manageNo}}"
            class="each-smpl-result-element">
            <td>{{pstiNm}}</td>
            <td>{{pstiTelno}}</td>
            <td>{{prettifyDate inYmd}}</td>
            <td>{{prettifyDate slfInYmd}}</td>
            <td>{{ngtvCnt}}</td>
          </tr>
{{/each}}
</script>
<script type="text/x-handlebars-template"  id="inptnt-pagination-template" >
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
}


});


</script>
<script>

var page = 1;

var url = '<%=request.getContextPath() %>/rest-pbht/cnfrm-manage-list';

var targetId = '';

var pagenationId = '';

var templateId = '';

window.onload = function(){
	
	addEvnetWaitTab();
	addEvnetReqTab();
	
  list_go(url, page);
	$('ul.pagination').on('click','li a',function(event){
		if($(this).attr("href")) {
			page=$(this).attr("href");
 			getPage(url, make_form(page), targetId, pagenationId, templateId);
//			list_go(url, pageParam, targetId, pagenationId);
		}
		
		return false;
	});
}

function make_form(pageParam){
  
  var jobForm=$('#jobForm');
  if(!pageParam) page = 1;
  
  page = pageParam;
  
  
  jobForm.find("[name='page']").val(page);
  jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
//  jobForm.find("[name='perPageNum']").val(2);
  jobForm.find("[name='searchType']").val($('select[name="searchType"]').val());
  jobForm.find("[name='keyword']").val($('div.input-group>input[name="keyword"]').val());
  
  
  
  return jobForm;
}

function list_go(url, pageParam, targetId, pagenationId, templateId){
	
  getPage(url, make_form(pageParam), targetId, pagenationId, templateId);
}

function getPage(handelbarsProcessingURL, form, targetId, pagenationId, templateId){

	console.log(targetId, pagenationId);
	
	if(!targetId) targetId = '#cnfrm-manage-list-table-tbody';
	if(!pagenationId) pagenationId = '#inptnt-list-pagination-ul';
	if(!templateId) templateId = '#cnfrm-manage-list-template';
	
	$.ajax({
    url : handelbarsProcessingURL,
    type : 'get',
    dataType : 'json',
    data : form.serialize(),
    success : function(dataMap){
    	console.log(dataMap.pageMaker);
      printData(dataMap.cfmList, $(targetId), $(templateId), '.each-smpl-result-element');
      printPagination(dataMap.pageMaker, $(pagenationId), $('#inptnt-pagination-template'), '.each-inptnt-pagination-element');
    },
    error : function(error){
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
function printData(jsonArray, target, templateObject, removeClass){

	// templateObject를 json data를 받으면 마크업을 return하는 function template로 반환한다.
	var template = Handlebars.compile(templateObject.html());
	
	// 함수 template에 파라미터 jsonArray를 넣어서 실행하여 html을 생성한다.
	var html = template(jsonArray);
	
	// 해당 html요소를 append하기 전에 기존에 있던 내용을 지운다. (안그러면 리스트 목록이 10개씩만 보이는 게 아니라 10개, 20개, 30개 등 페이지 클릭할 때마다 10개씩 추가되므로)
	$(removeClass).remove();
	
	// html요소를 append한다.
	target.append(html);
}

function printPagination(pageMaker, target, templateObject, removeClass){
	
	
	var pageNum = new Array(pageMaker.endPage-pageMaker.startPage+1);
	
	for(var i=0;i<pageMaker.endPage-pageMaker.startPage+1;i++){
		pageNum[i]=pageMaker.startPage+i;
	}	
	pageMaker.pageNum=pageNum;  
	pageMaker.prevPageNum=pageMaker.startPage-1;
	pageMaker.nextPageNum=pageMaker.endPage+1;
	
	var template=Handlebars.compile(templateObject.html());	
	var html = template(pageMaker);	
	target.html("").html(html);
}
</script>

<script>
function addEvnetWaitTab(){
	var dgnssWaitTab = $('#custom-cnfrm-dgnss-regist-tab');
	dgnssWaitTab.on('click',function(){
		$('#jobForm').find("[name='typeCode']").val("");
		templateId = "#cnfrm-manage-list-template";
		targetId = "#cnfrm-manage-list-table-tbody";
		pagenationId = "#inptnt-list-pagination-ul";
		page = 1;
		list_go(url, page, targetId, pagenationId, templateId);
	})
}
function addEvnetReqTab(){
	
	var dgnssReqTab = $('#custom-cnfrm-dgnss-regist-list-tab');
	dgnssReqTab.on('click',function(){
		$('#jobForm').find("[name='typeCode']").val("A107");
		templateId = '#cnfrm-slf-req-list-template';
		targetId = "#cnfrm-slf-req-list-table-tbody";
		pagenationId = "#inptnt-req-list-pagination-ul";
		page = 1;
		list_go(url, page, targetId, pagenationId, templateId);
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
			<div class="ddoing" style="height: 673px;">
			<table class="table table-hover text-nowrap"
				style="text-align: center;">
				<thead>
					<tr role="row">
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Browser: activate to sort column ascending">이름</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-sort="ascending"
							aria-label="Rendering engine: activate to sort column descending">연락처</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Platform(s): activate to sort column ascending">확정일자</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Engine version: activate to sort column ascending">상태</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Engine version: activate to sort column ascending">담당기관</th>
					</tr>
				</thead>
				<tbody id="cnfrm-manage-list-table-tbody">
				</tbody>
			</table>
			</div>
			<div class="card-footer clearfix pb-0 pt-0" style="background-color: white;">
			   	 	<ul class="pagination justify-content-center m-0" id="inptnt-list-pagination-ul">
			   	 	</ul>
			 	</div>
			<form id="jobForm"> 
			  <input type='hidden' name="page" value="" />
			  <input type='hidden' name="perPageNum" value=""/>
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
				<table class="table table-bordered">
                  <thead>
                  	<tr>
                  		<th colspan="4">확진자 진료 요청 정보</th>
                  	</tr>
                  </thead>
                  <tbody>
                    <tr style="text-align: center;">
                      <th>성명</th>
                      <td>홍길동</td>
                      <th>국적</th>
                      <td>KOREA</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>검사경위</th>
                      <td>본인판단</td>
                      <th>백신접종</th>
                      <td>3차 이상</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>성별</th>
                      <td>남</td>
                      <th>나이</th>
                      <td>27</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>발열여부</th>
                      <td>Y</td>
                      <th>임신여부</th>
                      <td>N</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>확정일자</th>
                      <td>2022-01-01</td>
                      <th>결과</th>
                      <td>양성</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>주민/외국인등록번호</th>
                      <td colspan="3">960101-1111111</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>주소</th>
                      <td colspan="3">대전광역시 서구 둔산동 1032 708호</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>연락처</th>
                      <td colspan="3">010-5678-1234</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>증상</th>
                      <td colspan="3">기침, 두통, 복통, 어지러움</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>확진자 코드</th>
                      <td>CNFM202201061000005</td>
                      <th>상태</th>
                      <td>진료병원지정대기</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>담당기관</th>
                      <td>을지대학병원</td>
                      <th>기관 연락처</th>
                      <td >042-222-4568</td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>기관 주소</th>
                      <td colspan="3">대전광역시 서구 둔산동  1232 을지대학병원</td>
                    </tr>
                  </tbody>
                </table>
                		<div style="margin-bottom: 182px;"></div>
                 </div>
                 </div>
			</div>
</div>