<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="card" style="margin:1px;">
			<div class="card-header center" style="background: #5bbc71; color: white;">
				<h3 class="card-title">기관관리</h3>
			</div>
			
			
			<div class="card-body" style="height: 70px;">
			<!-- search bar -->
				<button type="button" class="btn btn-primary" style="background:#5bbc71;border:0px;width: 90px;" onclick="OpenWindow('inst-registForm','기관등록','800','700')">기관등록</button>
				<button type="button" class="btn btn-primary" style="background:#5bbc71;border:0px;width: 90px;">기관삭제</button>
				
				<div class="input-group  float-right" style="max-width:600px;">
					<!-- sort num -->
					<select class="form-control " name="perPageNum"	id="perPageNum" onchange="list_go(1);" >
						<option value="10">정렬개수</option>
						<option value="2" ${pageMaker.cri.perPageNum == 2 ? 'selected':''}>2개씩</option>
						<option value="3" ${pageMaker.cri.perPageNum == 3 ? 'selected':''}>3개씩</option>
						<option value="5" ${pageMaker.cri.perPageNum == 5 ? 'selected':''}>5개씩</option>
					</select>
					
					<!-- search bar -->
					<select class="form-control " name="searchType" id="searchType" >
							<option value=""  ${pageMaker.cri.searchType eq '' ? 'selected':''}>전체</option>
							<option value="i" ${pageMaker.cri.searchType eq 'i' ? 'selected':''}>검사소</option>
							<option value="n" ${pageMaker.cri.searchType eq 'n' ? 'selected':''}>보건소</option>
							<option value="n" ${pageMaker.cri.searchType eq 'n' ? 'selected':''}>병원</option>
							<option value="n" ${pageMaker.cri.searchType eq 'n' ? 'selected':''}>생활치료센터</option>
					</select>
					
					<!-- keyword -->
					<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${pageMaker.cri.keyword }" style="width: 18%;display: inline-block;"/>
					<span class="input-group-append"> 
						<button class="btn btn-primary" type="button" id="searchBtn" 
							    style="background: #5bbc71; color: #ffffff; border-color: #5b6f90;
							    	   display: inline-block;margin-bottom: 4px;margin-left: -7px;"
							data-card-widget="search" onclick="">
							<i class="fa fa-fw fa-search" ></i>
						</button>
					</span>
					<!-- end : search bar -->
			    </div>
	  
			</div>
			
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table style="text-align: center;" class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th><input id="all" type="checkbox" onclick="checkAllBox()" name="all"></th>
                      <th>구분</th>
                      <th>기관코드</th>
                      <th>기관명</th>
                      <th>기관연락처</th>
                      <th>기관주소</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">검사소</span></td>
                      <td> 183</td>
                      <td>청동역 검사소</td>
                      <td>11-7-2014</td>
                      <td>서울 송파구 잠실동 10</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">검사소</span></td>
                      <td>219</td>
                      <td>월드컵공원 검사소</td>
                      <td>11-7-2014</td>
                      <td>서울 마포구 성산동 390-1</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-success">보건소</span></td>
                      <td>657</td>
                      <td>곡성군보건의료원</td>
                      <td>11-7-2014</td>
                      <td>전라남도 곡성군 곡성읍 곡성로 854</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-success">보건소</span></td>
                      <td>175</td>
                      <td>산청군보건의료원</td>
                      <td>11-7-2014</td>
                      <td>전라남도 구례군 구례읍 동편제길 30</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-warning">생활치료센터</span></td>
                      <td>183</td>
                      <td>청동역 생활치료센터</td>
                      <td>11-7-2014</td>
                      <td>서울 송파구 잠실동 10</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">검사소</span></td>
                      <td>183</td>
                      <td>청동역 검사소</td>
                      <td>11-7-2014</td>
                      <td>서울 송파구 잠실동 10</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">검사소</span></td>
                      <td>219</td>
                      <td>월드컵공원 검사소</td>
                      <td>11-7-2014</td>
                      <td>서울 마포구 성산동 390-1</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-success">보건소</span></td>
                      <td>657</td>
                      <td>곡성군보건의료원</td>
                      <td>11-7-2014</td>
                      <td>전라남도 곡성군 곡성읍 곡성로 854</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-warning">생활치료센터</span></td>
                      <td>175</td>
                      <td>산청군생활치료센터</td>
                      <td>11-7-2014</td>
                      <td>전라남도 구례군 구례읍 동편제길 30</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">검사소</span></td>
                      <td>219</td>
                      <td>월드컵공원 검사소</td>
                      <td>11-7-2014</td>
                      <td>서울 마포구 성산동 390-1</td>
                    </tr>
                    
                  </tbody>
                </table>
              </div>
             
             <%@ include file="../template/list-footer.jsp" %>
	</div>
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
		
	</script>
</body>
</html>