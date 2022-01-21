<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/x-handlebars-template" id="sckbd-detail-template">
<div class="each-sckbd-element">
<table class="table table-bordered">
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
      <th>신청일자</th>
      <td>{{prettifyDate sckbdreqYmd}}</td>
      <th>백신접종</th>
      <td>{{vacCode}}</td>
    </tr>
    <tr class="shittr" style="text-align: center;">
      <th>성별</th>
      <td>{{gender}}</td>
      <th>나이</th>
      <td>{{age}}</td>
    </tr>
    <tr class="shittr" style="text-align: center;">
      <th>발열여부</th>
      <td>{{feverYn}}</td>
      <th>임신여부</th>
      <td>{{pregnYn}}</td>
    </tr>
    <tr class="shittr" style="text-align: center;">
      <th>확정일자</th>
      <td>{{inYmd}}</td>
      <th>결과</th>
      <td>{{fnPstvYn chkdYn, pstvYn}}</td>
    </tr>
    <tr class="shittr" style="text-align: center;">
      <th>주민/외국인등록번호</th>
      <td colspan="3">rrn</td>
    </tr>
    <tr class="shittr" style="text-align: center;">
      <th>주소</th>
      <td colspan="3">{{pstiAdres}}</td>
    </tr>
    <tr class="shittr" style="text-align: center;">
      <th>연락처</th>
      <td colspan="3">{{pstiTelno}}</td>
    </tr>
    <tr class="shittr" style="text-align: center;">
      <th>증상</th>
      <td colspan="3">{{symptms}}</td>
    </tr>
    <tr class="shittr" style="text-align: center;">
      <th>확진자 코드</th>
      <td colspan="3">{{cnfmNo}}</td>
    </tr>
  </tbody>
</table>
<div class="form-group row">
  <div class="col-md-6"></div>
  <div class="col-md-3">
    <button type="button" class="btn btn-block btn-success btn-sm">승인</button>
  </div>
  <div class="col-md-3">
    <button type="button" class="btn btn-block btn-warning btn-sm">반려</button>
  </div>
</div>
</div>
</script>
<script>
function showDetail(manageNo){
	var trs = $('tr.each-sckbd-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-manage-no="'+manageNo+'"]');
	
	target.addClass('on');

	var url = '<%=request.getContextPath()%>/rest-ltct/sckbd-detail?manageNo='+manageNo;
	$.ajax({
		url : url,
		type : 'post',
		dataType : 'json',
		success : function(isoptntVO){
			printData(isoptntVO, $('#sckbd-detail-module'), $('#sckbd-detail-template'), '.sckbd-detail-element')
		},
		error : function(error){
			alert('error' + error.status);
		}
	});
}
</script>

<div id="sckbd-detail-module">
<div class="sckbd-detail-element">
  <table class="table table-bordered">
    <thead>
      <tr style="text-align: center;">
        <th>성명</th>
        <td></td>
        <th>국적</th>
        <td></td>
      </tr>
    </thead>
    <tbody>
      <tr class="shittr" style="text-align: center;">
        <th>신청일자</th>
        <td></td>
        <th>백신접종</th>
        <td></td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>성별</th>
        <td></td>
        <th>나이</th>
        <td></td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>발열여부</th>
        <td></td>
        <th>임신여부</th>
        <td></td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>확정일자</th>
        <td></td>
        <th>결과</th>
        <td></td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>주민/외국인등록번호</th>
        <td colspan="3"></td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>주소</th>
        <td colspan="3"></td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>연락처</th>
        <td colspan="3"></td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>증상</th>
        <td colspan="3"></td>
      </tr>
      <tr class="shittr" style="text-align: center;">
        <th>확진자 코드</th>
        <td colspan="3"></td>
      </tr>
    </tbody>
  </table>
  <div class="form-group row">
    <div class="col-md-6"></div>
    <div class="col-md-3">
      <button type="button" class="btn btn-block btn-success btn-sm">승인</button>
    </div>
    <div class="col-md-3">
      <button type="button" class="btn btn-block btn-warning btn-sm">반려</button>
    </div>
  </div>
  </div>
</div>
