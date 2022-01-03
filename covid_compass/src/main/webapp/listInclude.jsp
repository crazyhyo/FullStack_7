<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<head></head>
<title></title>

<body>
	<div class="#">
		<div class="card-header border-transparent"
			style="background-color: #5b6f90;">
			<div class="row">
				<div class="col-sm-12 col-md-10">
				<p class="card-title" style="color: white; font-size: 30px;">피검자 조회</p>
				</div>
				<!-- <div class="col-sm-12 col-md-1">
					<a href="#" class="btn btn-info">등록</a>
				</div>
				<div class="col-sm-12 col-md-1">
					<a href="#" class="btn btn-info">삭제</a>
				</div> -->
			</div>
			<!-- <h3 class="card-title" style="color: white;">문진표 목록</h3>
			<div class="card-tools ">
				<button type="button" class="btn btn-tool" data-card-widget="">
					<i class="fas fa-plus" style="color: white;"> PCR키트 수량 500</i>
				</button>

			</div> -->
		</div>
		<!-- /.card-header -->
		<div class="#">
			<div class="table-responsive">
				<table class="table m-0" style="text-align: center;">
					<thead>
						<tr role="row">
<!-- 							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-label="Browser: activate to sort column ascending">
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_check_all">
									</div>
								</div>
							</th> -->
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-label="Browser: activate to sort column ascending">구분</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-label="Browser: activate to sort column ascending">이름</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-sort="ascending"
								aria-label="Rendering engine: activate to sort column descending">문진표
								작성일</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-label="Platform(s): activate to sort column ascending">나이</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-label="Engine version: activate to sort column ascending">생년월일</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-label="CSS grade: activate to sort column ascending">전화번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
						<tr>

							<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
							<%-- <c:set var="pstiReadyVO" value="" /> --%>
							<%-- <td>
								<div class="form-group">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											name="psti_req_check"
											data-psti-innb="${pstiReadyListVO.pstiInnb}">
									</div>
								</div>
								</td> --%>
							<td>
							<span
								class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'info':'primary' }">${pstiReadyListVO.insttNm }검사소</span></td>
							<td>${pstiReadyListVO.pstiNm }pstiNm</td>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>${pstiReadyListVO.age }age</td>
							<td><fmt:formatDate value="${pstiReadyListVO.birthDate }"
									pattern="yyyy-MM-dd" />1990-01-01</td>
							<td>${pstiReadyListVO.telNo }010-1234-4321</td>
							<%-- </c:forEach> --%>
						</tr>
					</tbody>
				</table>

			</div>
			<!-- /.table-responsive -->
			<div class="row">
				<div class="col-sm-12 col-md-5">
					<div class="dataTables_info" id="example2_info" role="status"
						aria-live="polite">1 - 10 / 57</div>
				</div>
				<div class="col-sm-12 col-md-7">
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
	</div>
</body>
