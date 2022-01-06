<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head></head>

<title></title>

<body>
	<div class="content-wrapper" style="background: #ffffff;">
		<div class="card card-success">
		<div class="card-header" style="background-color: #5b6f90;">
			<h3 class="card-title">진료요청 목록</h3>
		</div>
		<div class="card-body">
			<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
					<div class="row">
						<div class="col-sm-12 col-md-6">
							<div class="dt-buttons btn-group flex-wrap">
								<button class="btn btn-secondary buttons-copy buttons-html5"
									tabindex="0" aria-controls="example1" type="button">
									<span>Copy</span>
								</button>
								<button class="btn btn-secondary buttons-csv buttons-html5"
									tabindex="0" aria-controls="example1" type="button">
									<span>CSV</span>
								</button>
								<button class="btn btn-secondary buttons-excel buttons-html5"
									tabindex="0" aria-controls="example1" type="button">
									<span>Excel</span>
								</button>
								<button class="btn btn-secondary buttons-pdf buttons-html5"
									tabindex="0" aria-controls="example1" type="button">
									<span>PDF</span>
								</button>
								<button class="btn btn-secondary buttons-print" tabindex="0"
									aria-controls="example1" type="button">
									<span>Print</span>
								</button>
								<div class="btn-group">
									<button
										class="btn btn-secondary buttons-collection dropdown-toggle buttons-colvis"
										tabindex="0" aria-controls="example1" type="button"
										aria-haspopup="true" aria-expanded="false">
										<span>Column visibility</span>
									</button>
								</div>
							</div>
						</div>

						<!-- 게시판 서치바 -->
						<div class="row" style="align-self: auto;">
							<div class="col-md-8 offset-md-2">
								<form action="simple-results.html">
									<div class="input-group">
										<input type="search" class="form-control form-control-lg"
											placeholder="Type your keywords here">
										<div class="input-group-append">
											<button type="submit" class="btn btn-lg btn-default">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
						<!-- 여기까지 -->
					
				</div>
				<div class="row">
					<div class="col-sm-12">
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
								
							</tbody>
							
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 col-md-5">
						<div class="dataTables_info" id="example1_info" role="status"
							aria-live="polite">Showing 1 to 10 of 57 entries</div>
					</div>
					<div class="col-sm-12 col-md-7">
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
	  function detail() {
		var pop = window.open("<%=request.getContextPath()%>/dgnss/dgnss-detail","환자상세",'width=1280px,height=730px,scrollbars=yes')
	}
	</script>
</body>