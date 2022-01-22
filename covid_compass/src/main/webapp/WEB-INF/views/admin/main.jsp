<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
<style>
	.nav-link:active{
		background-color: #1A4F72;
	}
</style>
</head>
<script>
	window.onload = function(){
		$('.nav-link').on('click',function(){
			$(this).css('background-color', '#1A4F72');
		})
	}
</script>
<body>
<!-- 메인 에러로그 div 시작 -->

	<div class="row" style="box-sizing: content-box; padding: 1px;">
		<div class="col-6" style="margin-top: 10px;">
			<!-- Custom Tabs -->
			<div class="card">
				<div class="card-header d-flex p-0">
					<h3 class="card-title p-3">에러로그 관리</h3>
					<ul class="nav nav-pills ml-auto p-2">
						<li class="nav-item"><a class="nav-link active" style="background: #1A4F72" href="#tab_1"
							data-toggle="tab">검사소</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_2"
							data-toggle="tab">보건소</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_3"
							data-toggle="tab">병원</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_4"
							data-toggle="tab">생활치료센터</a></li>

					</ul>
				</div>
				<!-- /.card-header -->

				<div class="tab-content">
					<div class="tab-pane active" id="tab_1">
						<div class="card col-md-12"
							style="position: relative; left: 0px; top: 0px; margin-bottom: 0px;">
							<div class="card-header ui-sortable-handle" style="cursor: move;">
								<div class="input-group float-left" style="width: 180px;">
									<input type="text" name="table_search" class="form-control"
										placeholder="Search" style="width: 35px; height: 30px;">

									<div class="input-group-append"
										style="width: 35px; height: 30px;">
										<button type="submit" class="btn btn-default">

											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>
								<div class="card-tools">
									<ul class="pagination pagination-sm">
										<li class="page-item"><a href="#" class="page-link">«</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</ul>
								</div>
							</div>

							<!-- /.card-header -->
							<div class="card-body" style="padding: 0px;">
								<div class="table-responsive">
									<table class="table table-hover text-nowrap"
										style="text-align: center;">
										<thead>
											<tr role="row">
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">레벨</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">구분</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">파일이름</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">클라이언트
													IP</th>
											</tr>
										</thead>
										<tbody>

											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-primary">emerg</span></td>
												<td>500</td>
												<td>abc.csv</td>
												<td>000.0.0.0</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-primary">alert</span></td>
												<td>404</td>
												<td>abc.csv</td>
												<td>111.1.1.1</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-primary">crit</span></td>
												<td>400</td>
												<td>abc.csv</td>
												<td>111.1.1.2</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-primary">error</span></td>
												<td>404</td>
												<td>abc.csv</td>
												<td>111.1.1.1</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-primary">warn</span></td>
												<td>404</td>
												<td>abc.csv</td>
												<td>111.1.1.1</td>
											</tr>
										</tbody>
									</table>

								</div>

							</div>
							<!-- /.card-body -->
						</div>
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_2"></div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_3"></div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_4"></div>
					<!-- /.tab-pane -->
				</div>
				<!-- /.tab-content -->
			</div>
		</div>
		<!-- /.col -->

<!-- 메인 에러로그 div 끝 -->
<!-- 메인 접속로그 div 시작 -->
		<div class="col-6" style="margin-top: 10px;">
			<!-- Custom Tabs -->
			<div class="card">
				<div class="card-header d-flex p-0">
					<h3 class="card-title p-3">접속로그 관리</h3>
					<ul class="nav nav-pills ml-auto p-2">
						<li class="nav-item"><a class="nav-link active" style="background: #1A4F72" href="#tab_5"
							data-toggle="tab">검사소</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_6"
							data-toggle="tab">보건소</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_7"
							data-toggle="tab">병원</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_8"
							data-toggle="tab">생활치료센터</a></li>
					</ul>
				</div>
				<!-- /.card-header -->

				<div class="tab-content">
					<div class="tab-pane active" id="tab_5">
						<div class="card col-md-12"
							style="position: relative; left: 0px; top: 0px; margin-bottom: 0px;">
							<div class="card-header ui-sortable-handle" style="cursor: move;">
								<div class="input-group float-left" style="width: 180px;">
									<input type="text" name="table_search" class="form-control"
										placeholder="Search" style="width: 35px; height: 30px;">

									<div class="input-group-append"
										style="width: 35px; height: 30px;">
										<button type="submit" class="btn btn-default">

											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>
								<div class="card-tools">
									<ul class="pagination pagination-sm">
										<li class="page-item"><a href="#" class="page-link">«</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</ul>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body" style="padding: 0px;">
								<div class="table-responsive">
									<table class="table table-hover text-nowrap"
										style="text-align: center;">
										<thead>
											<tr role="row">
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">번호</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">파일이름</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">발생일자</th>

												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">기관</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">접속
													IP</th>
											</tr>
										</thead>
										<tbody>

											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td>1</td>
												<td>abc.csv</td>
												<td>2022-01-12</td>
												<td>대덕 검사소</td>
												<td>192.111.0.1</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td>2</td>
												<td>abc.csv1</td>
												<td>2022-01-12</td>
												<td>대덕 검사소</td>
												<td>192.111.0.1</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td>3</td>
												<td>abc.csv</td>
												<td>2022-01-12</td>
												<td>대덕 검사소</td>
												<td>192.111.0.1</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td>4</td>
												<td>abc.csv</td>
												<td>2022-01-12</td>
												<td>대덕 검사소</td>
												<td>192.111.0.1</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td>5</td>
												<td>abc.csv</td>
												<td>2022-01-12</td>
												<td>대덕 검사소</td>
												<td>192.111.0.1</td>
											</tr>
										</tbody>
									</table>

								</div>

							</div>
							<!-- /.card-body -->
						</div>
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_6"></div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_7"></div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_8"></div>
					<!-- /.tab-pane -->
				</div>
				<!-- /.tab-content -->
			</div>
		</div>
		<!-- /.col -->

<!-- 메인 에러로그 div 끝 -->
<!-- 메인 기관관리 div 시작 -->
		<div class="col-9">
			<!-- Custom Tabs -->
			<div class="card">
				<div class="card-header d-flex p-0">
					<h3 class="card-title p-3">기관 관리</h3>
					<ul class="nav nav-pills ml-auto p-2">
						<li class="nav-item"><a class="nav-link active" style="background: #1A4F72" href="#tab_9"
							data-toggle="tab">검사소</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_10"
							data-toggle="tab">보건소</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_11"
							data-toggle="tab">병원</a></li>
						<li class="nav-item"><a class="nav-link" href="#tab_12"
							data-toggle="tab">생활치료센터</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">
								관리메뉴 <span class="caret"></span>
						</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" tabindex="-1" href="#"
									onclick="OpenWindow('./inst-registForm','','600','600');">등록</a>
								<a class="dropdown-item" tabindex="-1" href="#">삭제</a>

							</div></li>
					</ul>
				</div>
				<!-- /.card-header -->

				<div class="tab-content">
					<div class="tab-pane active" id="tab_9">
						<div class="card col-md-12"
							style="position: relative; left: 0px; top: 0px; margin-bottom: 0px;">
							<div class="card-header ui-sortable-handle" style="cursor: move;">
								<div class="input-group float-left" style="width: 180px;">
									<input type="text" name="table_search" class="form-control"
										placeholder="Search" style="width: 35px; height: 30px;">

									<div class="input-group-append"
										style="width: 35px; height: 30px;">
										<button type="submit" class="btn btn-default">

											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>
								<div class="card-tools">
									<ul class="pagination pagination-sm">
										<li class="page-item"><a href="#" class="page-link">«</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</ul>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body" style="padding: 0px;">
								<div class="table-responsive">
									<table class="table table-hover text-nowrap"
										style="text-align: center; table-layout: fixed;">
										<thead>
											<tr role="row">
												<th style="width: 5%;"><input type="checkbox"
													id="selectAll" onclick="selectAll()"></th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center; width: 15%;" colspan="1">구분</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center; width: 15%;" colspan="1">기관명</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center; width: 32%;" colspan="1">주소</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center; width: 15%;" colspan="1">연락처</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center; width: 15%;" colspan="1">직원수</th>
											</tr>
										</thead>
										<tbody>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td onclick="event.cancelBubble=true"
													style="cursor: default;"><input type="checkbox"
													name="inst" onclick="cancleAll()"></td>
												<td><span class="badge badge-primary">검사소</span></td>
												<td
													style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">대전
													검사소</td>
												<td
													style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">대전시
													중구 계룡로 486</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td onclick="event.cancelBubble=true"
													style="cursor: default;"><input type="checkbox"
													name="inst" onclick="cancleAll()"></td>
												<td><span class="badge badge-primary">검사소</span></td>
												<td
													style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">대전
													대덕인재 검사소</td>
												<td
													style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">대전광역시
													중구 대흥동 500-5 영민빌딩 4층</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td onclick="event.cancelBubble=true"
													style="cursor: default;"><input type="checkbox"
													name="inst" onclick="cancleAll()"></td>
												<td><span class="badge badge-primary">검사소</span></td>
												<td>대전 검사소</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td onclick="event.cancelBubble=true"
													style="cursor: default;"><input type="checkbox"
													name="inst" onclick="cancleAll()"></td>
												<td><span class="badge badge-primary">검사소</span></td>
												<td>대전 검사소</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td onclick="event.cancelBubble=true"
													style="cursor: default;"><input type="checkbox"
													name="inst" onclick="cancleAll()"></td>
												<td><span class="badge badge-primary">검사소</span></td>
												<td>대전 검사소</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
										</tbody>
									</table>

								</div>

							</div>
							<!-- /.card-body -->
						</div>
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_10">
						<div class="card col-md-12"
							style="position: relative; left: 0px; top: 0px; margin-bottom: 0px;">
							<div class="card-header ui-sortable-handle" style="cursor: move;">
								<div class="input-group float-left" style="width: 180px;">
									<input type="text" name="table_search" class="form-control"
										placeholder="Search" style="width: 35px; height: 30px;">

									<div class="input-group-append"
										style="width: 35px; height: 30px;">
										<button type="submit" class="btn btn-default">

											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>
								<div class="card-tools">
									<ul class="pagination pagination-sm">
										<li class="page-item"><a href="#" class="page-link">«</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</ul>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body" style="padding: 0px;">
								<div class="table-responsive">
									<table class="table table-hover text-nowrap"
										style="text-align: center;">
										<thead>
											<tr role="row">
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">구분</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">기관명</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1"
													aria-sort="ascending" aria-label="">주소</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">연락처</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">직원수</th>
											</tr>
										</thead>
										<tbody>

											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-success">보건소</span></td>
												<td>대전 보건소</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-success">보건소</span></td>
												<td>대전 보건소</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-success">보건소</span></td>
												<td>대전 보건소</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-success">보건소</span></td>
												<td>대전 보건소</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-success">보건소</span></td>
												<td>대전 보건소</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
										</tbody>
									</table>

								</div>

							</div>
							<!-- /.card-body -->
						</div>
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_11">
						<div class="card col-md-12"
							style="position: relative; left: 0px; top: 0px; margin-bottom: 0px;">
							<div class="card-header ui-sortable-handle" style="cursor: move;">
								<div class="input-group float-left" style="width: 180px;">
									<input type="text" name="table_search" class="form-control"
										placeholder="Search" style="width: 35px; height: 30px;">

									<div class="input-group-append"
										style="width: 35px; height: 30px;">
										<button type="submit" class="btn btn-default">

											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>
								<div class="card-tools">
									<ul class="pagination pagination-sm">
										<li class="page-item"><a href="#" class="page-link">«</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</ul>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body" style="padding: 0px;">
								<div class="table-responsive">
									<table class="table table-hover text-nowrap"
										style="text-align: center;">
										<thead>
											<tr role="row">
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">구분</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">기관명</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1"
													aria-sort="ascending" aria-label="">주소</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">연락처</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">직원수</th>
											</tr>
										</thead>
										<tbody>

											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-danger">병원</span></td>
												<td>대전 병원</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-danger">병원</span></td>
												<td>대전 병원</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-danger">병원</span></td>
												<td>대전 병원</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-danger">병원</span></td>
												<td>대전 병원</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-danger">병원</span></td>
												<td>대전 병원</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
										</tbody>
									</table>

								</div>

							</div>
							<!-- /.card-body -->
						</div>
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_12">
						<div class="card col-md-12"
							style="position: relative; left: 0px; top: 0px; margin-bottom: 0px;">
							<div class="card-header ui-sortable-handle" style="cursor: move;">
								<div class="input-group float-left" style="width: 180px;">
									<input type="text" name="table_search" class="form-control"
										placeholder="Search" style="width: 35px; height: 30px;">

									<div class="input-group-append"
										style="width: 35px; height: 30px;">
										<button type="submit" class="btn btn-default">

											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>
								<div class="card-tools">
									<ul class="pagination pagination-sm">
										<li class="page-item"><a href="#" class="page-link">«</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</ul>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body" style="padding: 0px;">
								<div class="table-responsive">
									<table class="table table-hover text-nowrap"
										style="text-align: center;">
										<thead>
											<tr role="row">
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">구분</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">기관명</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1"
													aria-sort="ascending" aria-label="">주소</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">연락처</th>
												<th tabindex="0" aria-controls="example2" rowspan="1"
													style="text-align: center;" colspan="1" aria-label="">직원수</th>
											</tr>
										</thead>
										<tbody>

											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-warning">생활치료센터</span></td>
												<td>대전 생활치료센터</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-warning">생활치료센터</span></td>
												<td>대전 생활치료센터</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-warning">생활치료센터</span></td>
												<td>대전 생활치료센터</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-warning">생활치료센터</span></td>
												<td>대전 생활치료센터</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
											<tr data-psti-no="${pstiNo }"
												onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
												style="cursor: pointer;">
												<td><span class="badge badge-warning">생활치료센터</span></td>
												<td>대전 생활치료센터</td>
												<td>대전시 서구</td>
												<td>042-123-4567</td>
												<td>50</td>
											</tr>
										</tbody>
									</table>

								</div>

							</div>
							<!-- /.card-body -->
						</div>
					</div>
					<!-- /.tab-pane -->
				</div>
				<!-- /.tab-content -->
			</div>
		</div>
		<!-- ./card -->
<!-- 메인 기관관리 div 끝 -->
<!-- 메인 데이터백업 div 시작 -->
		<div class="col-md-3">
			<div class="card card-default">
				<div class="card-header" style="padding-bottom: 23px;">
					<h3 class="card-title">
						<i class="far fa-copy"></i> 데이터 백업
					</h3>
				</div>
				<!-- /.card-header -->
				<div class="card-body"
					style="padding-bottom: 50px; padding-top: 30px;">
					<div>
						<button type="button" style="margin-left:23px; background:#1a4f72; width: 220px;" class="btn btn-secondary">검사소 데이터 백업</button>
						<br> <br>

						<button type="button" style="margin-left:23px; background:#1a4f72; width: 220px;" class="btn btn-secondary">보건소 데이터 백업</button>
						<br> <br>

						<button type="button" style="margin-left:23px; background:#1a4f72; width: 220px;" class="btn btn-secondary">병원 데이터 백업</button>
						<br> <br>

						<button type="button" style="margin-left:23px; background:#1a4f72; width: 220px;" class="btn btn-secondary">생활치료센터 데이터
							백업</button>
						<br> <br>

						<button type="button" style="margin-left:23px; background:#1a4f72; width: 220px;" class="btn btn-secondary">전체 백업</button>
					</div>
				</div>
			</div>
			<!-- /.card-body -->
		</div>
	</div>
<!-- 메인 데이터백업 div 끝 -->
	<script>
		function selectAll(checkBox){
			var length = document.getElementsByName("inst").length;
			if(document.getElementById('selectAll').checked==true){
				for(var i=0; i<length; i++) document.getElementsByName("inst")[i].checked=true;
			}

			if(document.getElementById('selectAll').checked==false){
				for(var i=0; i<length; i++) document.getElementsByName("inst")[i].checked=false;
			}


		}
				function cancleAll(){

			if(document.getElementById('selectAll').checked==true){
				document.getElementById('selectAll').checked=false;
			}
		}
</script>


</body>