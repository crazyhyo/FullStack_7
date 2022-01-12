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
		<section class="content">
			<div class="card" style="margin: 1px;">
				<div class="card-body">
					<div class="input-group float-right" style="max-width: 600px;">

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
								style="background: #5bbc71; color: #ffffff; border-color: #5bbc71; display: inline-block; margin-bottom: 4px; margin-left: -7px;"
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
											colspan="1" aria-label="">성명</th>
										<th tabindex="0" aria-controls="example2" rowspan="1" 
											colspan="1" aria-sort="ascending" aria-label="">나이</th>
										<th tabindex="0" aria-controls="example2" rowspan="1" 
										colspan="1" aria-sort="ascending" aria-label="">성별</th>
										<th tabindex="0" aria-controls="example2" rowspan="1" 
											colspan="1" aria-label="">검사요청일</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1" aria-sort="ascending" aria-label="">누적음성수</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1" aria-sort="ascending" aria-label="">재검결과</th>
											
									</tr>
								</thead>
								<tbody>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>2</td>
										<td><span class="badge badge-success">음성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>1</td>
										<td><span class="badge badge-info">양성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>2</td>
										<td><span class="badge badge-info">양성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>0</td>
										<td><span class="badge badge-success">음성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>1</td>
										<td><span class="badge badge-success">음성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>Y</td>
										<td><span class="badge badge-info">양성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>2</td>
										<td><span class="badge badge-info">양성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>1</td>
										<td><span class="badge badge-info">양성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>1</td>
										<td><span class="badge badge-info">양성</span></td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td>홍길동</td>
										<td>34</td>
										<td>남</td>
										<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
												value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
										<td>1</td>
										<td><span class="badge badge-info">양성</span></td>
									</tr>
								</tbody>
							</table>

						</div>
						<div class="card-footer clearfix" style="background: white; margin-left: 28px;">
							<%@ include file="../template/list-footer.jsp"%>
						</div>
					</div>
				</div>
			</div>
			</section>
		</div>
		<div class="col-lg-6" >
			<div class="card" style="margin: 1px;">
				<div class="card-body">
					<div class="tab-content" style="height: 658px;" id="custom-tabs-three-tabContent">
						<div class="tab-pane fade show active" id="custom-psti-detail"
							role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
							<%@ include file="./isoptnt-res-smple-list-detail-module.jsp"%>
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