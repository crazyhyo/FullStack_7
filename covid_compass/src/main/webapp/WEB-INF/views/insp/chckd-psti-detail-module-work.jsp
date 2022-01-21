<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/x-handlebars-template" id="chckd-detail-template">
	<table class="table table-bordered chckd-detail-element">
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
				<th>발열여부</th>
				<td>{{feverYn}}</td>
				<th>임신여부</th>
				<td>{{pregnYn}}</td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>주민/외국인등록번호</th>
				<td colspan="3">{{rrn}}</td>
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
				<th>확정일자</th>
				<td colspan="3"></td>
			</tr>
			<tr class="shittr" style="text-align: center;">
				<th>피검자 코드</th>
				<td colspan="3">{{pstiNo}}</td>
			</tr>
		</tbody>
	</table>
		<table class="table table-bordered chckd-detail-element">
                <thead>
                  <tr style="text-align: center;">
                    <th width="165px;">최저혈압</th>
                    <td width="130px;">{{minBrssr}}</td>
                    <th width="165px;">최고혈압</th>
                    <td width="130px;">{{maxBrssr}}</td>
                  </tr>
                </thead>
                <tbody>
                  <tr class="shittr"  style="text-align: center;">
                    <th>확정일자</th>
                    <td></td>
                    <th>검사결과</th>
                    <td></td>
                  </tr>
                  <tr class="shittr"  style="text-align: center;">
                    <th>신장</th>
                    <td>{{bdheight}}</td>
                    <th>체중</th>
                    <td>{{bdweight}}</td>
                  </tr>
                  <tr class="shittr"  style="text-align: center;">
                    <th>체온</th>
                    <td>{{bdheat}}</td>
                    <th></th>
                    <td></td>
                  </tr>
                  </tbody>
               </table>
</script>

<script>
function showDetail(pstiNo){
	
	var trs = $('tr.each-chckd-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-psti-no="'+pstiNo+'"]');
	
	target.addClass('on');
	
	var url = '<%=request.getContextPath()%>/rest-insp/psti-detail?pstiNo='+pstiNo;
	$.ajax({
		url : url,
		type : 'post',
		dataType : 'json',
		success : function(vInspPstiVO){
			printData(vInspPstiVO, $('#chckd-detail-module'), $('#chckd-detail-template'), '.chckd-detail-element');
		},
		error : function(error){
			alert('error' + error.status);
		}
	});
}
</script>
<div id="chckd-detail-module">
<table class="table table-bordered chckd-detail-element">
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
			<th>발열여부</th>
			<td></td>
			<th>임신여부</th>
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
			<th>확정일자</th>
			<td colspan="3"></td>
		</tr>
		<tr class="shittr" style="text-align: center;">
			<th>피검자 코드</th>
			<td colspan="3"></td>
		</tr>
	</tbody>
</table>

<table class="table table-bordered chckd-detail-element">
 <thead>
   <tr style="text-align: center;">
     <th width="165px;">최저혈압</th>
     <td width="130px;"></td>
     <th width="165px;">최고혈압</th>
     <td width="130px;"></td>
   </tr>
 </thead>
 <tbody>
   <tr class="shittr"  style="text-align: center;">
     <th>확정일자</th>
     <td></td>
     <th>검사결과</th>
     <td></td>
   </tr>
   <tr class="shittr"  style="text-align: center;">
     <th>신장</th>
     <td></td>
     <th>체중</th>
     <td></td>
   </tr>
   <tr class="shittr"  style="text-align: center;">
     <th>체온</th>
     <td></td>
     <th></th>
     <td></td>
   </tr>
   </tbody>
</table>

</div>