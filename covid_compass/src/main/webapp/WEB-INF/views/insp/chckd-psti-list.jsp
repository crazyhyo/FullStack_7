<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head></head>
<title></title>

<body>

	<div class="row" style="height: 70px; margin-top: 7px;">
		<div class="col-lg-6">
			<div class="card" style="margin: 1px;">
				<div class="card-body">
					<div class="input-group float-right" style="max-width: 600px;">
						<button type="button" class="btn btn-primary"
							style="background: #5b6f90; border: 0px; width: 90px;">검사요청</button>
						<!-- sort num -->
						<select class="form-control " name="perPageNum" id="perPageNum"
							onchange="list_go(1);">
							<option value="10">정렬개수</option>
							<option value="2"
								${pageMaker.cri.perPageNum == 2 ? 'selected':''}>2개씩</option>
							<option value="3"
								${pageMaker.cri.perPageNum == 3 ? 'selected':''}>3개씩</option>
							<option value="5"
								${pageMaker.cri.perPageNum == 5 ? 'selected':''}>5개씩</option>
						</select>

						<!-- search bar -->
						<select class="form-control " name="searchType" id="searchType">
							<option value=""
								${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
							<option value="n"
								${pageMaker.cri.searchType eq 'n' ? 'selected':''}>성 명</option>
							<option value="p"
								${pageMaker.cri.searchType eq 'p' ? 'selected':''}>전화번호</option>
						</select>

						<!-- keyword -->
						<input class="form-control" type="text" name="keyword"
							placeholder="검색어를 입력하세요." value="${pageMaker.cri.keyword }"
							style="width: 18%; display: inline-block;" /> <span
							class="input-group-append">
							<button class="btn btn-primary" type="button" id="searchBtn"
								style="background: #5b6f90; color: #ffffff; border-color: #5b6f90; display: inline-block; margin-bottom: 4px; margin-left: -7px;"
								data-card-widget="search" onclick="">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
						<!-- end : search bar -->

						<div class="table-responsive">
							<table class="table table-hover text-nowrap"
								style="text-align: center;">
								<thead>
									<tr role="row">
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1"
											aria-label="Browser: activate to sort column ascending">
											<div class="form-group">
												<div class="form-check">
													<input type="checkbox" class="form-check-input"
														name="psti_check_all" id="psti_check_all"
														onclick="checkAll(this, 'psti_check');">
												</div>
											</div>
										</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1" aria-label="">성명</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1" aria-label="">검사일</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1" aria-sort="ascending" aria-label="">나이</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1" aria-label="">생년월일</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1" aria-label="">전화번호</th>
									</tr>
								</thead>
								<tbody>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>홍길동</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>김영희</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>홍길동</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>김영희</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>홍길동</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>김영희</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>홍길동</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>김영희</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>홍길동</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													name="psti_check">
											</div>
										</td>
										<td>김영희</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>34</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
										<td>010-1234-5678</td>
									</tr>
								</tbody>
							</table>

							<%@ include file="../template/list-footer.jsp"%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="card" style="margin: 1px;">
				<div class="card-header d-flex p-0">
					<ul class="nav nav-pills ml-auto p-2" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="psti-detail-tab" data-toggle="pill"
							href="#custom-psti-detail" role="tab"
							aria-controls="custom-tabs-three-home" aria-selected="true">피검자
								상세</a></li>
					</ul>
				</div>
				<div class="card-body">
					<div class="tab-content" id="custom-tabs-three-tabContent">
						<div class="tab-pane fade show active" id="custom-psti-detail"
							role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
							<%@ include file="./psti-detail-info-module.jsp"%>
						</div>
					</div>
				</div>
				<!-- /.card -->
			</div>
			<!-- search bar -->
		</div>


	</div>
	<!-- /.card-body -->


</body>

<tr data-psti="${pstiNo }">
	<td>
		<div class="form-check">
			<input type="checkbox" class="form-check-input" name="psti_check">
		</div>
	</td>
	<td>${pstiNm }</td>
	<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
			value="${wrtYmd }" pattern="yyyy-MM-dd" /></td>
	<td>${pstiAge }</td>
	<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
			value="${birYmd }" pattern="yyyy-MM-dd" /></td>
	<td>${pstiTelno }</td>
</tr>
