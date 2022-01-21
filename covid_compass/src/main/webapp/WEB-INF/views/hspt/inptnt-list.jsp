<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<style>
.on{
	background-color: rgb(236, 236, 236);
}
</style>
</head>
<title></title>

<body>
  <section class="content">
    <div class="row" style="margin: 1px; margin-top: 7px;">
      <div class="col-lg-6 pl-0">
        <section class="content">
          <div class="card" style="margin: 1px; height: 763px; margin-top: 13px;">
            <div class="card-header d-flex p-0">
              <ul class="nav nav-pills ml-auto p-2" role="tablist">
								<li class="nav-item"><button type="button" class="btn btn-primary float-left" style="background: #1a4f72; border: 0px; width: 90px; margin-top: 1px;
   																													 margin-right: 200px;">재검요청</button></li>
								<li class="nav-item"><div class="input-group float-right" style="max-width: 600px; width:300px;">
					<!-- search bar -->
					<select class="form-control " name="searchType" id="searchType">
						<option value="" ${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
						<option value="n"
							${pageMaker.cri.searchType eq 'n' ? 'selected':''}>성명</option>
						<option value="t"
							${pageMaker.cri.searchType eq 't' ? 'selected':''}>연락처</option>
					</select>

					<!-- keyword -->
					<input class="form-control" type="text" name="keyword"
						value="${pageMaker.cri.keyword }"
						style="width: 18%; display: inline-block;" /> <span
						class="input-group-append">
						<button class="btn btn-primary" type="button" id="searchBtn"
							style="background: #1a4f72; color: #ffffff; border-color: #1a4f72; display: inline-block; margin-bottom: 4px; margin-left: -7px;"
							data-card-widget="search" onclick="list_go(1, '<%=request.getContextPath() %>/rest-hspt/inptnt-list');">
							<i class="fa fa-fw fa-search"></i>
						</button>
					</span>
					<!-- end : search bar -->
				</div></li>
							</ul>
            </div>
            <div class="card-body">
              <div class="tab-content" id="custom-tabs-three-tabContent">
                <div class="tab-pane fade show active" id="custom-psti-detail" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
                  <%@ include file="./inptnt-list-module-work.jsp"%>
                </div>
              </div>
            </div>
            <!-- /.card -->
          </div>

        </section>

      </div>
			<div class="col-lg-6 pr-0">
				<section class="content">
					<div class="card"
						style="margin: 1px; height: 763px; margin-top: 13px;">
						<div class="card-header d-flex p-0">
							<ul class="nav nav-pills ml-auto p-2" role="tablist">
								<li class="nav-item"><a class="nav-link active" id="psti-detail-tab" data-toggle="pill" href="#custom-dgnss-detail" role="tab" aria-controls="custom-tabs-three-home" aria-selected="true" style="cursor: default; background-color: #1a4f72;">환자 상세</a></li>
							</ul>
						</div>
						<div class="card-body">
							<div class="tab-content" id="custom-tabs-three-tabContent">
								<div class="tab-pane fade show active" id="custom-inptnt-detail"
									role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
									<%@ include file="./inptnt-detail-module-work.jsp"%>
								</div>
							</div>
						</div>
						<!-- /.card -->
					</div>
					<!-- search bar -->
				</section>
			</div>


		</div>
		<!-- /.card-body -->
	</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="inptnt-list-template" >
{{#each .}}
          <tr
			data-manage-no="{{manageNo}}"
            ondblclick="OpenWindow('sckbd-request?manageNo={{manageNo}}', '진료 신청 정보', 1250, 800)"
            onclick="showDetail('{{manageNo}}')"
            class="each-inptnt-element">
            <td><input type="checkbox" name="checkSmple"
              onclick="cancleAll()"></td>
            <td>{{pstiNm}}</td>
            <td>{{age}}</td>
            <td>{{gender}}</td>
            <td>{{pstiTelno}}</td>
            <td>{{inYmd}}</td>
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
    <li class="page-item each-inptnt-pagination-element {{this}}" ><a class="page-link" href="{{this}}" >{{this}}</a></li>
{{/each}}

    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="{{#if next}}{{nextPageNum}}{{/if}}"> <i class="fas fa-angle-right" style="color:#1a4f72;"></i>
    </a></li>
    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="{{realEndPage}}"> <i class="fas fa-angle-double-right" style="color:#1a4f72;"></i>
</a></li>
</script>

<script type="text/x-handlebars-template"  id="inptnt-detail-template" >
	<div class="inptnt-detail-info">
		<div class="register-card-body" style="padding: 0px;">
			<div class="card" style="padding: 10px;">
				<div class="row">
					<div class="form-group col-lg-4">
						<div class="row">
							<input type="hidden" name="pstiNo" id="pstiNo"
								value="{{pstiNo }}"> <label for="pstiNm"
								class="col-sm-5 control-label text-left">성명</label>
						</div>
						<div class="row">
							<div class="col-sm-12" style="padding-left: 5px;">
								<input name="pstiNm" type="text" class="form-control"
									id="pstiNm" value="{{pstiNm }}" readonly>
							</div>
						</div>
					</div>

					<div class="form-group col-lg-4">
						<div class="row">
							<label for="nlty" class="col-sm-6 control-label text-left"
								style="padding-top: 0px;">국적</label>
							<div class="col-sm-12">
								<input name="nlty" type="text" class="form-control" id="nlty"
									value="{{nlty }}" readonly>
							</div>
						</div>
					</div>

					<div class="form-group col-lg-4">
						<div class="row">
							<div class="col-lg-6">
								<label for="age" class="col-sm-12 control-label text-left">나이</label>
								<div class="row">
									<div class="col-sm-12">
										<input name="age" type="text" class="form-control" id="age"
											value="{{age }}" readonly>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<label for="gender" class="col-sm-12 control-label text-left">성별</label>
								<div class="row">
									<div class="col-sm-12">
										<input name="gender" type="text" class="form-control"
											id="gender" value="{{gender}}" readonly>
									</div>
								</div>
							</div>

						</div>

					</div>
				</div>


				<div class="row">
					<div class="form-group col-lg-4">
						<div class="row">
							<label for="rrn" class="col-sm-12 control-label text-left">주민/외국인등록번호
							</label>
						</div>
						<div class="row">
							<div class="col-sm-12" style="padding-left: 5px;">
								<input name="rrn" type="text" class="form-control" id="rrn"
									value="{{rrn }}" readonly>
							</div>
						</div>
					</div>

					<div class="form-group col-lg-4">
						<div class="row">
							<label for="pstiTelno" class="col-sm-4 control-label text-left">연락처</label>
							<div class="col-sm-12">
								<input name="pstiTelno" type="text" class="form-control"
									id="pstiTelno" value="{{pstiTelno }}" readonly>
							</div>
						</div>
					</div>

					<div class="form-group col-lg-4">
						<div class="row">
							<label for="job" class="col-sm-4 control-label text-left">직업</label>
							<div class="col-sm-12">
								<input name="jobCode" type="text" class="form-control" id="job"
									value="{{jobCode}}" readonly>
							</div>
						</div>
					</div>

				</div>

				<div class="row">
					<div class="form-group col-lg-12">
						<div class="row">
							<label for="pstiAdres" class="col-sm-12 control-label text-left">주소</label>
						</div>
						<div class="row">
							<div class="col-sm-12" style="padding-left: 5px;">
								<input name="pstiAdres" type="text" class="form-control"
									id="pstiAdres" value="{{pstiAdres }}" readonly>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="card" style="padding: 10px;">
				<div class="row">
					<div class="form-group col-lg-3">
						<div class="row">
							<label for="inYmd" class="col-sm-12 control-label text-left">입원일자</label>
						</div>
						<div class="row">
							<div class="col-sm-12" style="padding-left: 5px;">
								<input name="inYmd" type="text" class="form-control" id="inYmd"
									value="{{prettifyDate inYmd }}" readonly>
							</div>
						</div>
					</div>

					<div class="form-group col-lg-3">
						<div class="row">
							<label for="dgnssResultCode" class="col-sm-12 control-label text-left">중증도</label>
							<div class="col-sm-12">
								<input name="dgnssResultCode" type="text" class="form-control"
									id="dgnssResultCode" value="{{dgnssResultCode }}" readonly>
							</div>
						</div>
					</div>


					<div class="form-group col-lg-2">
						<div class="row">
							<label for="ngtvCnt" class="col-sm-12 control-label text-left"
								style="padding-top: 0px;">누적음성수</label>
							<div class="col-sm-12">
								<input name="ngtvCnt" type="text" class="form-control"
									id="ngtvCnt" value="{{ngtvCnt }}" readonly>
							</div>
						</div>
					</div>

					<div class="form-group col-lg-2">
						<div class="row">
							<label for="feverYn" class="col-sm-12 control-label text-left"
								style="padding-top: 0px;">발열여부</label>
							<div class="col-sm-12">
								<input name="feverYn" type="text" class="form-control"
									id="feverYn" value="{{feverYn }}" readonly>
							</div>
						</div>
					</div>
					<div class="form-group col-lg-2">
						<div class="row">
							<label for="pregnYn" class="col-sm-12 control-label text-left"
								style="padding-top: 0px;">임신여부</label>
							<div class="col-sm-12">
								<input name="pregnYn" type="text" class="form-control"
									id="pregnYn" value="{{pregnYn }}" readonly>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-lg-12">
						<div class="row">
							<label for="symptms" class="col-sm-12 control-label text-left">증상</label>
						</div>
						<div class="row">
							<div class="col-sm-12" style="padding-left: 5px;">
								<input name="symptms" type="text" class="form-control"
									id="symptms" value="{{symptms }}" readonly>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<table class="table table-bordered">
			<tbody>
				<tr>
					<td colspan="4" style="padding-bottom: 0px; text-align: center;">
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-12 control-label text-center"
								style="padding-top: 7px;">진료 메모</label>
						</div>
						<div class="form-group row">
							<div class="col-sm-12">
								<div
									style="border: 1px solid #e9e9e9; width: 520px; height: 154px; overFlow: auto; margin-left: 23px;">
									<span>{{dgnssNote}}</span>
								</div>
							</div>
						</div>
						<div class="form-group row pr-5" style="float: right;">
							<button
								style="background-color: #1a4f72; border-color: #1a4f72; width: 120px; margin-left: 10px; margin-top: 8px;"
								type="button" id="inptnt-sckbd-req-btn"
								class="btn btn-block btn-primary btn-sm"
								onclick="OpenWindow('sckbd-request', '병원 병상신청', 1250, 800)">병상신청</button>
							<button
								style="background-color: #1a4f72; border-color: #1a4f72; width: 120px; margin-left: 10px; margin-top: 8px;"
								type="button" id="inptnt-sckbd-req-btn"
								class="btn btn-block btn-primary btn-sm"
								onclick="OpenWindow('sckbd-ltct-request', '생활치료센터 신청', 1250, 800)">입소신청</button>
							<button
								style="background-color: #1a4f72; border-color: #1a4f72; width: 120px; margin-left: 10px;"
								type="button" id="inptnt-modify-btn"
								class="btn btn-block btn-primary btn-sm" onclick="modify();">수정</button>
							<button
								style="background-color: #1a4f72; border-color: #1a4f72; display: none; width: 120px; margin-left: 10px;"
								type="button" id="inptnt-save-btn"
								class="btn btn-block btn-primary btn-sm" onclick="save();">저장</button>
							<button
								style="background-color: #1a4f72; border-color: #1a4f72; display: none; width: 120px; margin-left: 10px;"
								type="button" id="inptnt-cancle-btn"
								class="btn btn-block btn-primary btn-sm" onclick="cancle();">취소</button>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</script>


<script>
    function checkAllBox(checkBox){
      var length = document.getElementsByName("checkSmple").length;
      if(document.getElementById('all').checked==true){
        for(var i=0; i<length; i++) document.getElementsByName("checkSmple")[i].checked=true;
      }
      
      if(document.getElementById('all').checked==false){
        for(var i=0; i<length; i++) document.getElementsByName("checkSmple")[i].checked=false;
      }
      
      
    }
    
    function cancleAll(){
      //alert("눌림");
      if(document.getElementById('all').checked==true){
        document.getElementById('all').checked=false;
      }
    }

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
	"getInstNm" : function(pbhtNm, ltctNm){
		
		return pbhtNm || ltctNm;
	},
	"addClass" : function(pbhtNm, ltctNm){
		if(pbhtNm){
			return "pbht";
		}
		if(ltctNm){
			return "ltct";
		}
	}
	});


var page = 1;

window.onload = function(){

  var url = '<%=request.getContextPath() %>/rest-hspt/inptnt-list';

  list_go(page, url);
	$('ul.pagination').on('click','li a',function(event){
		if($(this).attr("href")) {
			page=$(this).attr("href");
			getPage(url, make_form(page));
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

function list_go(pageParam, url){
	
  getPage(url, make_form(pageParam));
}

function getPage(handelbarsProcessingURL, form){

	$.ajax({
    url : handelbarsProcessingURL,
    type : 'get',
    dataType : 'json',
    data : form.serialize(),
    success : function(dataMap){
    	printData(dataMap.inptntList, $('#inptnt-list-table-tbody'), $('#inptnt-list-template'), '.each-inptnt-element');
        printPagination(dataMap.pageMaker, $('#inptnt-list-pagination-ul'), $('#inptnt-pagination-template'), '.each-inptnt-pagination-element');
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

function showDetail(manageNo){
	
	var trs = $('tr.each-inptnt-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-manage-no="'+manageNo+'"]');
	
	target.addClass('on');
	
	var url = '<%=request.getContextPath()%>/rest-hspt/inptnt-detail';
	$.ajax({
	    url : url,
	    type : 'post',
	    dataType : 'json',
	    data : {'manageNo': manageNo},
	    success : function(inptntDetailCommand){
// 	    	alert('show detail inptnt!!');
	    	printData(inptntDetailCommand, $('#inptnt-detail-info-module'), $('#inptnt-detail-template'), '.inptnt-detail-info');
	    },
	    error : function(error){
	      alert('error' + error.status);
	    }
	  });
}
</script>
 <script type="text/javascript">
    function modify(){
      alert("수정후 저장 버튼을 눌러주세요");
      $('.modifyPossible').attr('readonly', false);
      $('.modifyPossible').css('border-color', 'blue');
      
      $('#inptnt-cancle-btn').css('display', '');
      $('#inptnt-save-btn').css('display', '');
      $('#inptnt-sckbd-req-btn').css('display','none');
      $('#inptnt-modify-btn').css('display','none');
    }
    function cancle(){
      //alert("취소!");
      location.reload();
      $('#inptnt-cancle-btn').css('display', 'none');
      $('#inptnt-save-btn').css('display', 'none');
      $('#inptnt-sckbd-req-btn').css('display','');
      $('#inptnt-modify-btn').css('display','');
    }
  </script>
</body>
