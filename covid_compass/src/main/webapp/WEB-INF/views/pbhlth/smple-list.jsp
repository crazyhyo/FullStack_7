<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
 <!-- Font Awesome -->
 <link rel="stylesheet" href="../resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
 <!-- Theme style -->
 <link rel="stylesheet" href="../resources/bootstrap/dist/css/adminlte.min.css">
<script type="text/javascript" src="../resources/bootstrap/plugins/jquery/jquery.min.js"></script>
</head>
<body>
	<div class="wrapper" style="max-width: 1280px; margin: 0 auto;">
		<div class="content-wrapper" style="background: #ffffff;">
		<div class="card card-success">
		<div class="card-header" style="background-color: #5b6f90;">
			<h3 class="card-title">시료 목록</h3>
		</div>
		<div class="card-body">
			<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
				
				</div>
					<div id="keyword" class="card-tools" style="width: 500px; height: 50px; margin-left: 500px;">
					<div class="input-group row" style="float: left;">
						<select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="list_go(1);">
							<option value="10">정렬개수</option>
							<option value="20" ${cri.perPageNum == 20 ? 'selected':''}>20개씩</option>
							<option value="50" ${cri.perPageNum == 50 ? 'selected':''}>50개씩</option>
							<option value="100" ${cri.perPageNum == 100 ? 'selected':''}>100개씩</option>

						</select> 
						<select class="form-control col-md-3" name="searchType" id="searchType">
							<option value="" ${cri.searchType eq '' ? 'selected':'' }>전 체</option>
							<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>제 목</option>
							<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
							<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내 용</option>
						</select>
						<input class="form-control " type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" />
						
						<span class="input-group-append">
							<button class="btn btn-default" style="background-color: #5b6f90;" type="button" onclick="list_go(1);" data-card-widget="search">
								<i style="color: white;" class="fa fa-fw fa-search"></i>
							</button>
						</span>
						
					</div>
				
				</div>
				<div class="row">
					<div class="col-sm-12">
						<table style="text-align: center;" class="table table-hover text-nowrap">
			                  <thead>
			                    <tr>
			                      <th>요청일</th>
			                      <th>요청기관</th>
			                      <th>시료번호</th>
			                      <th>결과</th>
			                      <th>결과일</th>
			                    </tr>
			                  </thead>
			                  <tbody>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    <tr>
			                      <td>요청일</td>
			                      <td>청동역 검사소</td>
			                      <td>11-7-2014</td>
			                      <td>미정</td>
			                      <td>2021/07/23</td>
			                    </tr>
			                    
			                  </tbody>
               			 </table>
					</div>
				</div>
				<div class="row">
					
					<div class="col-sm-12 col-md-7" style="margin: 0 auto;" >
						<div class="dataTables_paginate paging_simple_numbers"
							id="example1_paginate">
							<ul class="pagination">
								<li class="paginate_button page-item previous disabled"
									id="example1_previous"><a href="#"
									aria-controls="example1" data-dt-idx="0" tabindex="0"
									class="page-link">Previous</a></li>
								<li class="paginate_button page-item active"><a href="#"
									aria-controls="example1" data-dt-idx="1" tabindex="0"
									class="page-link">1</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example1" data-dt-idx="2" tabindex="0"
									class="page-link">2</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example1" data-dt-idx="3" tabindex="0"
									class="page-link">3</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example1" data-dt-idx="4" tabindex="0"
									class="page-link">4</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example1" data-dt-idx="5" tabindex="0"
									class="page-link">5</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example1" data-dt-idx="6" tabindex="0"
									class="page-link">6</a></li>
								<li class="paginate_button page-item next" id="example1_next"><a
									href="#" aria-controls="example1" data-dt-idx="7" tabindex="0"
									class="page-link">Next</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	function checkAllBox(checkBox){
		//alert("눌림");
		var length = document.getElementsByName("checkSmple").length;
		//alert("length:"+length);
		if(document.getElementById('all').checked==true){
			for(var i=0; i<length; i++) document.getElementsByName("checkSmple")[i].checked=true;
		}
		
		if(document.getElementById('all').checked==false){
			for(var i=0; i<length; i++) document.getElementsByName("checkSmple")[i].checked=false;
		}
		
		
	}
</script>

</body>
</html>