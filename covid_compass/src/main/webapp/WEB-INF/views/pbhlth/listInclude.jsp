<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<head></head>
<title></title>

<body>
	<div class="card-body">
		<div id="ptsi-list-wrapper" class="dataTables_wrapper dt-bootstrap4">
			<div class="row">
				<div class="col-sm-12 col-md-6"><h1>문진표 목록조회</h1></div>
				<div class="col-sm-12 col-md-6"></div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<table id="ptsi-list"
						class="table table-bordered table-hover dataTable dtr-inline"
						role="grid">
						<thead>
							<tr role="row">
								<th tabindex="0" aria-controls="example2"
									rowspan="1" colspan="1"
									aria-label="Browser: activate to sort column ascending">선택</th>
								<th tabindex="0" aria-controls="example2"
									rowspan="1" colspan="1"
									aria-label="Browser: activate to sort column ascending">구분</th>
								<th tabindex="0" aria-controls="example2"
									rowspan="1" colspan="1"
									aria-label="Browser: activate to sort column ascending">이름</th>
								<th tabindex="0"
									aria-controls="example2" rowspan="1" colspan="1"
									aria-sort="ascending"
									aria-label="Rendering engine: activate to sort column descending">문진표 작성일</th>
								<th tabindex="0" aria-controls="example2"
									rowspan="1" colspan="1"
									aria-label="Platform(s): activate to sort column ascending">나이</th>
								<th tabindex="0" aria-controls="example2"
									rowspan="1" colspan="1"
									aria-label="Engine version: activate to sort column ascending">생년월일</th>
								<th tabindex="0" aria-controls="example2"
									rowspan="1" colspan="1"
									aria-label="CSS grade: activate to sort column ascending">전화번호</th>
							</tr>
						</thead>
						<tbody>
							<tr >
							
								<%-- <c:forEach items="${pstiReadyVOList }" var="pstiReadoVO"> --%>
								<%-- <c:set var="pstiReadyVO" value="" /> --%>
								<td>
								<div class="form-group">
                        <div class="form-check">
                          <input type="checkbox" class="form-check-input" name="psti_req_check" data-psti-innb="${pstiReadyListVO.pstiInnb}">
                        </div>
                      </div>
								<td><span class="badge badge-${pstiReadyListVO.sttusCode eq 'A101' ? 'primary':'info' }">${pstiReadyListVO.insttNm }검사소</span></td>
								<td>${pstiReadyListVO.pstiNm }pstiNm</td>
								<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd"/>2022-01-01</td>
								<td>${pstiReadyListVO.age }age</td>
								<td><fmt:formatDate value="${pstiReadyListVO.birthDate }" pattern="yyyy-MM-dd"/>1990-01-01</td>
								<td>${pstiReadyListVO.telNo }010-1234-4321</td>
								<%-- </c:forEach> --%>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
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
	</div>

</body>
