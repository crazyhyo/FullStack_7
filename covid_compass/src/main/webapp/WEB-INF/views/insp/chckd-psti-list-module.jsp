<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content">
	<div class="card" style="margin: 1px; margin-top: 13px;">
		<div style="height: 613px;">
			<div class="card-body" style="height: 70px; padding-bottom: 0px;">
				<div class="input-group float-right" style="max-width: 600px;">
					<!-- search bar -->
					<select class="form-control " name="searchType" id="searchType">
						<option value="" ${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
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
														name="psti_check_all" id="psti_check_all">
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

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="card-footer clearfix" style="background-color:white;">
			<%@ include file="../template/list-footer.jsp"%>
		</div>
	</div>
</section>
