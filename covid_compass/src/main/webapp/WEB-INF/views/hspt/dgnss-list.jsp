<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head></head>

<title></title>

<body>
	<div class="card" style="margin:1px;">
		<div class="card-header center" style="background: #5b6f90; color: white;">
				<h3 class="card-title">진료요청 목록</h3>
		</div>
		
				
				<div class="card-body" style="height: 70px;">
				<!-- search bar -->
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
								<option value="" ${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
								<option value="i"
									${pageMaker.cri.searchType eq 'i' ? 'selected':''}>성명</option>
								<option value="n"
									${pageMaker.cri.searchType eq 'n' ? 'selected':''}>연락처</option>
						</select>
						
						<!-- keyword -->
						<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${pageMaker.cri.keyword }" style="width: 18%;display: inline-block;"/>
						<span class="input-group-append"> 
							<button class="btn btn-primary" type="button" id="searchBtn" 
								    style="background: #5b6f90; color: #ffffff; border-color: #5b6f90;
								    	   display: inline-block;margin-bottom: 4px;margin-left: -7px;"
								data-card-widget="search" onclick="">
								<i class="fa fa-fw fa-search" ></i>
							</button>
						</span>
						<!-- end : search bar -->
				    </div>
	  
		 	 </div>
					
				
					<div class="card-body table-responsive p-0">
						<table id="example1"
							class="table table-bordered table-striped dataTable dtr-inline"
							role="grid" aria-describedby="example1_info">
							<thead>
								<tr role="row">
									<th class="sorting sorting_asc" tabindex="0"
										aria-controls="example1" rowspan="1" colspan="1"
										aria-sort="ascending"
										aria-label="Rendering engine: activate to sort column descending">요청기관</th>
									<th class="sorting" tabindex="0" aria-controls="example1"
										rowspan="1" colspan="1"
										aria-label="Browser: activate to sort column ascending"
										style="">확진자 이름</th>
									<th class="sorting" tabindex="0" aria-controls="example1"
										rowspan="1" colspan="1"
										aria-label="Platform(s): activate to sort column ascending"
										style="">백신접종 여부</th>
									<th class="sorting" tabindex="0" aria-controls="example1"
										rowspan="1" colspan="1"
										aria-label="Engine version: activate to sort column ascending"
										style="">연락처</th>
									<th class="sorting" tabindex="0" aria-controls="example1"
										rowspan="1" colspan="1"
										aria-label="CSS grade: activate to sort column ascending"
										style="">요청 일시</th>
								</tr>
							</thead>
							<tbody>
                               <tr class="even" onclick="detail()" style="cursor: pointer; background-color: white;">
                                 
									<td class="dtr-control sorting_1" tabindex="0" onclick="detail();">OO보건소</td>
									<td style="">손흥민</td>
									<td style="">미접종</td>
									<td style="">010-1234-5678</td>
									<td style="">2022-01-05 11:34</td>
									
								</tr>
							
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">이강인</td>
									<td style="">1차 접종</td>
									<td style="">010-1234-5679</td>
									<td style="">2022-01-05 12:31</td>
								</tr>
								<tr class="odd" style="background-color: white;">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">김민재</td>
									<td style="">2차 접종</td>
									<td style="">010-4567-8901</td>
									<td style="">2022-01-05 12:32</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">김영권</td>
									<td style="">미접종</td>
									<td style="">010-1234-5678</td>
									<td style="">2022-01-05 12:34</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">김영권</td>
									<td style="">미접종</td>
									<td style="">010-1234-5678</td>
									<td style="">2022-01-05 12:34</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">김영권</td>
									<td style="">미접종</td>
									<td style="">010-1234-5678</td>
									<td style="">2022-01-05 12:34</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">김영권</td>
									<td style="">미접종</td>
									<td style="">010-1234-5678</td>
									<td style="">2022-01-05 12:34</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">김영권</td>
									<td style="">미접종</td>
									<td style="">010-1234-5678</td>
									<td style="">2022-01-05 12:34</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">김영권</td>
									<td style="">미접종</td>
									<td style="">010-1234-5678</td>
									<td style="">2022-01-05 12:34</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">OO보건소</td>
									<td style="">김영권</td>
									<td style="">미접종</td>
									<td style="">010-1234-5678</td>
									<td style="">2022-01-05 12:34</td>
								</tr>
								
							</tbody>
							
						</table>
					</div>
				<%@ include file="../template/list-footer.jsp" %>
	</div>
	<script>
	  function detail() {
		var pop = window.open("<%=request.getContextPath()%>/dgnss/dgnss-detail","환자상세",'width=1280px,height=730px,scrollbars=yes')
	}
	</script>
</body>