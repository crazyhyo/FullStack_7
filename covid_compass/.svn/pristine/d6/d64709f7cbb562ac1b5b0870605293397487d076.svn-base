<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<section class="content">
	<div class="card" style="margin:1px; margin-top: 13px;">
			<div class="card-body" style="height: 70px;">
			<!-- search bar -->
				<button type="button" class="btn btn-primary" style="background:#5bbc71;border:0px;width: 90px;">재검신청</button>
				
				
				<div class="input-group  float-right" style="max-width:600px;">
					<!-- sort num -->
					<select class="form-control " name="perPageNum"	id="perPageNum" onchange="list_go(1);" >
						<option value="10">정렬개수</option>
						<option value="2" ${pageMaker.cri.perPageNum == 2 ? 'selected':''}>20개씩</option>
						<option value="3" ${pageMaker.cri.perPageNum == 3 ? 'selected':''}>30개씩</option>
						<option value="5" ${pageMaker.cri.perPageNum == 5 ? 'selected':''}>50개씩</option>
					</select>
					
					<!-- search bar -->
					<select class="form-control " name="searchType" id="searchType" >
							<option value=""  ${pageMaker.cri.searchType eq '' ? 'selected':''}>전체</option>
							<option value="i" ${pageMaker.cri.searchType eq 'i' ? 'selected':''}>이름</option>
							<option value="n" ${pageMaker.cri.searchType eq 'n' ? 'selected':''}>연락처</option>
							<option value="n" ${pageMaker.cri.searchType eq 'n' ? 'selected':''}>주소</option>
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
                      <th style="width: 10%;"><input id="all" type="checkbox" onclick="checkAllBox()" name="all"></th>
                      <th style="width: 10%;">체온</th>
                      <th style="width: 10%;">이름</th>
                      <th style="width: 10%;">나이</th>
                      <th style="width: 10%;">성별</th>
                      <th>연락처</th>
                      <th>센터 배정일</th>
                      <th>신청기관</th>
                      <th>누적 음성수</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr onclick="OpenWindow('isoptnt-detail','입소자 상세화면','1400','710')">
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">37.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>남</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-danger">37.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>여</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td> <span class="badge badge-warning">38.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>남</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-warning">38.2</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>여</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">37.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>남</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-danger">39.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>여</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-danger">39.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>남</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">37.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>남</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">37.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>남</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
                      <td><span class="badge badge-primary">37.5</span></td>
                      <td>하기재</td>
					  <td>27</td>
					  <td>남</td>
					  <td>010-7777-7777</td>
					  <td>2021/01/10</td>
					  <td>기재병원</td>
					  <td>2</td>
                    </tr>
                    
                  </tbody>
                </table>
              </div>
              <div class="card-footer clearfix"  >
                	<%@ include file="../template/list-footer.jsp" %>
              </div>
	</div>
			 
	</section>
	<script>
	
		function noneHover(){
			//alert("씨발");
			document.getElementById('hover').style.background="white";
		}	
	
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