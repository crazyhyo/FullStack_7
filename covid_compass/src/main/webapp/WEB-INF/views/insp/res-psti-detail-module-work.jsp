<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/x-handlebars-template" id="result-detail-template">
<table class="table table-bordered result-detail-element">
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
				<th>검사일자</th>
				<td>{{prettifyDate htscYmd}}</td>
				<th>백신접종</th>
				<td>{{vac}}</td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>성별</th>
				<td>{{gender}}</td>
				<th>나이</th>
				<td>{{age}}</td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>결과일자</th>
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
				<th>피검자 코드</th>
				<td colspan="3">{{pstiNo}}</td>
			</tr>
		</tbody>
	</table>
</script>
<script>
function showDetail(pstiNo){

	var trs = $('tr.each-result-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-psti-no="'+pstiNo+'"]');
	
	target.addClass('on');
	
	var url = '<%=request.getContextPath()%>/rest-insp/result-detail?pstiNo='+pstiNo;
	$.ajax({
		url : url,
		type : 'post',
		dataType : 'json',
		success : function(vInspPstiResultVO){
			printData(vInspPstiResultVO, $('#result-detail-module'), $('#result-detail-template'), '.result-detail-element');
		},
		error : function(error){
			alert('error' + error.status);
		}
	});
}	
</script>
<div id="result-detail-module">
	<table class="table table-bordered result-detail-element">
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
				<th>검사일자</th>
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
				<th>결과일자</th>
				<td></td>
				<th>결과</th>
				<td></td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>발열여부</th>
				<td></td>
				<th>임신여부</th>
				<td></td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>주민/외국인등록번호</th>
				<td></td>
				<th>연락처</th>
				<td></td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>주소</th>
				<td colspan="3"></td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>증상</th>
				<td colspan="3"></td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>피검자 코드</th>
				<td colspan="3"></td>
			</tr>
		</tbody>
	</table>
</div>
