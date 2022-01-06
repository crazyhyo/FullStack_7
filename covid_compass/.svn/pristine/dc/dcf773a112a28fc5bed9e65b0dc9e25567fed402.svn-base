<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head></head>
<title></title>

<body>
<div class="content-wrapper" style="background: #ffffff;">
		<div class="card-header center"
			style="background: #5b6f90; color: white;">
			<h3 class="card-title">입원환자목록</h3>
		</div>
		<div class="card-header with-border" style="padding-right: 0;height: 70px;padding-top: 24px;">
			<div id="keyword" class="card-tools" style="width: 550px;">
				<div class="input-group row">
					<!-- search bar -->
					<div class="col-md-2">
						<button style="background-color: #5b6f90; border-color: #5b6f90;height: 38px;"
							type="button" class="btn btn-block btn-primary btn-sm">재검요청</button>
					</div>
					<!-- sort num -->
					<select class="form-control col-md-3" name="perPageNum"
						id="perPageNum" onchange="list_go(1);">
						<option value="10">정렬개수</option>
						<option value="2" ${pageMaker.cri.perPageNum == 2 ? 'selected':''}>2개씩</option>
						<option value="3" ${pageMaker.cri.perPageNum == 3 ? 'selected':''}>3개씩</option>
						<option value="5" ${pageMaker.cri.perPageNum == 5 ? 'selected':''}>5개씩</option>
					</select>

					<!-- search bar -->
					<select class="form-control col-md-3" name="searchType"
						id="searchType">
						<option value="" ${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
						<option value="i"
							${pageMaker.cri.searchType eq 'i' ? 'selected':''}>이름</option>
						<option value="n"
							${pageMaker.cri.searchType eq 'n' ? 'selected':''}>나이</option>
						<option value="p"
							${pageMaker.cri.searchType eq 'p' ? 'selected':''}>입원일</option>
						<option value="e"
							${pageMaker.cri.searchType eq 'e' ? 'selected':''}>중증도</option>
					</select>
					<!-- keyword -->
					<input class="form-control" type="text" name="keyword"
						placeholder="검색어를 입력하세요." value="${pageMaker.cri.keyword }" /> <span
						class="input-group-append">
						<button class="btn btn-primary" type="button" id="searchBtn" style="background: #5b6f90; color: #ffffff; border-color: #5b6f90;"
							data-card-widget="search" onclick="">
							<i class="fa fa-fw fa-search" ></i>
						</button>
					</span>
					<!-- end : search bar -->
				</div>
			</div>
		</div>


		<div class="table-responsive">
			<table class="table table-hover text-nowrap" style="text-align: center;">
				<thead>
					<tr role="row">
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Browser: activate to sort column ascending">
							<div class="form-group">
								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										name="psti_check_all">
								</div>
							</div>
						</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">이름</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">성별</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-sort="ascending"
							aria-label="">나이</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">입원일</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">중증도</th>
					</tr>
				</thead>
				<tbody>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
					<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
					<%-- <c:set var="pstiReadyVO" value="" /> --%>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>${pstiReadyListVO.pstiNm }홍길동</td>
					<td>${pstiReadyListVO.sex }남자</td>
					<td>${pstiReadyListVO.age }20</td>
					<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
					<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }중증</span></td>
				</tr>
					<%-- </c:forEach> --%>
				</tbody>
			</table>

		</div>
		<!-- /.table-responsive -->
		<div class="row" style="padding-top: 10px;">
			
			<div class="col-lg-4 col-md-4 col-sm-4 container justify-content-center">
				<div class="dataTables_paginate paging_simple_numbers"
					id="example2_paginate">
					<ul class="pagination">
						<li class="paginate_button page-item previous disabled"
							id="example2_previous"><a href="#" aria-controls="example2"
							data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
						<li class="paginate_button page-item active"><a href="#"
							aria-controls="example2" data-dt-idx="1" tabindex="0"
							class="page-link">1</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="example2" data-dt-idx="2" tabindex="0"
							class="page-link">2</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="example2" data-dt-idx="3" tabindex="0"
							class="page-link">3</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="example2" data-dt-idx="4" tabindex="0"
							class="page-link">4</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="example2" data-dt-idx="5" tabindex="0"
							class="page-link">5</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="example2" data-dt-idx="6" tabindex="0"
							class="page-link">6</a></li>
						<li class="paginate_button page-item next" id="example2_next"><a
							href="#" aria-controls="example2" data-dt-idx="7" tabindex="0"
							class="page-link">Next</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- /.card-body -->
</body>
