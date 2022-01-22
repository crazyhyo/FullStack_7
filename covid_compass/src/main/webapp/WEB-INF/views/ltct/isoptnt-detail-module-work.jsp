<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/x-handlebars-template" id="isoptnt-detail-template">
<div class="isoptnt-detail-element">
			<div class="row">
				<table class="table table-sm table-bordered">
                  <thead>
                    <tr style="text-align: center;">
                      <th width="175px;">성명</th>
                      <td>{{pstiNm}}</td>
                      <th>국적</th>
                      <td>{{nlty}}</td>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="shittr"  style="text-align: center;">
                      <th>입소일자</th>
                      <td>{{prettifyDate inYmd}}</td>
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
                      <td>{{ngtvCnt}}</td>
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
                      <th>확진자 코드</th>
                      <td colspan="3">{{pstiNo}}</td>
                    </tr>
                    <tr>
                    	<td colspan="4">
							<button onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1250, 660)" 
									class="btn btn-success btn-sm" style="width: 100px; margin-left:480px;
								    background: #1a4f72; border: #1a4f72;">진료신청</button>
					    </td>                   
                    </tr>
                  </tbody>
                </table>

			</div>
			
			<div class="row">
				<table class="table table-sm table-bordered">
                  <thead>
                    <tr style="text-align: center;">
                      <th width="175px;">최저혈압</th>
                      <td>{{minBrssr}}</td>
                      <th>최고혈압</th>
                      <td>{{maxBrssr}}</td>
                    </tr>
                  </thead>
                  <tbody>
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
			</div>
			
			<div class="row">
				<table class="table table-sm table-bordered">
                  <thead>
                    <tr style="text-align: center;">
                      <th colspan="4" width="175px;">진료메모</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="shittr"  style="text-align: center;">
                      <td height="210px;">
	                      <div style="margin-left:10px; margin-right:10px; 
	                      			  margin-top: 10px; height:198px; border: " class="card">
	                      		<span>{{dgnssNote}}</span>
	                      </div>
                      </td>
                    </tr>
                    </tbody>
                 </table>
			</div>
</div>
</script>
<script>
function showDetail(manageNo){
	var trs = $('tr.each-isoptnt-element');
	
	trs.removeClass('on');
	
	var target = $('tr[data-manage-no="'+manageNo+'"]');
	
	target.addClass('on');

	var url = '<%=request.getContextPath()%>/rest-ltct/isoptnt-detail?manageNo='+manageNo;
	$.ajax({
		url : url,
		type : 'post',
		dataType : 'json',
		success : function(isoptntVO){
			printData(isoptntVO, $('#isoptnt-detail-module'), $('#isoptnt-detail-template'), '.isoptnt-detail-element')
		},
		error : function(error){
			alert('error' + error.status);
		}
	});
}
</script>
<div id="isoptnt-detail-module">

<div class="isoptnt-detail-element">
			<div class="row">
				<table class="table table-sm table-bordered">
                  <thead>
                    <tr style="text-align: center;">
                      <th width="175px;">성명</th>
                      <td></td>
                      <th>국적</th>
                      <td></td>
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
                      <td></td>
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
                      <th>확진자 코드</th>
                      <td colspan="3"></td>
                    </tr>
                    <tr>
                    	<td colspan="4">
							<button onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1250, 660)" 
									class="btn btn-success btn-sm" style="width: 100px; margin-left:480px;
								    background: #1a4f72; border: #1a4f72;">진료신청</button>
					    </td>                   
                    </tr>
                  </tbody>
                </table>

			</div>
			
			<div class="row">
				<table class="table table-sm table-bordered">
                  <thead>
                    <tr style="text-align: center;">
                      <th width="175px;">최저혈압</th>
                      <td></td>
                      <th>최고혈압</th>
                      <td></td>
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
			
			<div class="row">
				<table class="table table-sm table-bordered">
                  <thead>
                    <tr style="text-align: center;">
                      <th colspan="4" width="175px;">진료메모</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="shittr"  style="text-align: center;">
                      <td height="210px;">
	                      <div style="margin-left:10px; margin-right:10px; 
	                      			  margin-top: 10px; height:198px; border: " class="card">
	                      		<span></span>
	                      </div>
                      </td>
                    </tr>
                    </tbody>
                 </table>
			</div>		
		
				
</div>
</div>				