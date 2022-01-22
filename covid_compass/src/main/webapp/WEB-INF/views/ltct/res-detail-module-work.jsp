<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/x-handlebars-template" id="res-detail-template">
<table class="table table-bordered res-detail-element">
  <thead>
    <tr style="text-align: center;">
      <th>성명</th>
      <td>{{pstiNm}}</td>
      <th>국적</th>
      <td>{{nlty}}</td>
    </tr>
  </thead>
  <tbody>
    <tr class="shittr"  style="text-align: center;">
      <th>검사일자</th>
      <td>{{prettifyDate reqYmd}}</td>
      <th>검사결과</th>
      <td>{{fnPstvYn chkdYn pstvYn}}</td>
    </tr>
    <tr class="shittr"  style="text-align: center;">
      <th>성별</th>
      <td>{{fnGender gender}}</td>
      <th>나이</th>
      <td>{{age}}</td>
    </tr>
    <tr class="shittr"  style="text-align: center;">
      <th>발열여부</th>
      <td>{{feverYn}}</td>
      <th>임신여부</th>
      <td>{{pregnYn}}</td>
    </tr>
    <tr class="shittr"  style="text-align: center;">
      <th>연락처</th>
      <td>{{pstiTelno}}</td>
      <th>누적음성수</th>
      <th>{{ngtvCnt}}</th>
    </tr>
    <tr class="shittr"  style="text-align: center;">
      <th>주민/외국인등록번호</th>
      <td colspan="3">{{rrn}}</td>
    </tr>
    <tr class="shittr"  style="text-align: center;">
      <th>주소</th>
      <td colspan="3">{{pstiAdres}}</td>
    </tr>
    <tr class="shittr"  style="text-align: center;">
      <th>증상</th>
      <td colspan="3">{{symptms}}</td>
    </tr>
    <tr class="shittr"  style="text-align: center;">
      <th>확정일자</th>
      <td colspan="3">{{prettifyDate inYmd}}</td>
    </tr>
    <tr class="shittr"  style="text-align: center;">
      <th>확진자 코드</th>
      <td colspan="3">{{cnfmNo}}</td>
    </tr>
  </tbody>
</table>
</script>
<script>
function showDetail(manageNo){
	var trs = $('tr.each-res-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-manage-no="'+manageNo+'"]');
	
	target.addClass('on');

	var url = '<%=request.getContextPath()%>/rest-ltct/res-detail?manageNo='+manageNo;
	$.ajax({
		url : url,
		type : 'post',
		dataType : 'json',
		success : function(vInspPstiVO){
			printData(vInspPstiVO, $('#res-detail-module'), $('#res-detail-template'), '.res-detail-element')
		},
		error : function(error){
			alert('error' + error.status);
		}
	});
}
</script>
			<div class="row" id="res-detail-module">
				<table class="table table-bordered res-detail-element">
                  <thead>
                    <tr style="text-align: center;">
                      <th>성명</th>
                      <td></td>
                      <th>국적</th>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="shittr"  style="text-align: center;">
                      <th>검사일자</th>
                      <td></td>
                      <th>검사결과</th>
                      <td></td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>성별</th>
                      <td></td>
                      <th>나이</th>
                      <td></td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>발열여부</th>
                      <td></td>
                      <th>임신여부</th>
                      <td></td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>연락처</th>
                      <td></td>
                      <th>누적음성수</th>
                      <th></th>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>주민/외국인등록번호</th>
                      <td colspan="3"></td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>주소</th>
                      <td colspan="3"></td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>증상</th>
                      <td colspan="3"></td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>확정일자</th>
                      <td colspan="3"></td>
                    </tr>
                    <tr class="shittr"  style="text-align: center;">
                      <th>확진자 코드</th>
                      <td colspan="3"></td>
                    </tr>
                  </tbody>
                </table>
           </div>