<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- 진료 요청 대기환자 목록 -->

		<div class="card-body" style="height: 70px;">
			<!-- search bar -->
			<div class="input-group  float-right" style="max-width: 600px;">
				<!-- sort num -->
				<select class="form-control " name="perPageNum" id="perPageNum"
					onchange="list_go(1);">
					<option value="10">정렬개수</option>
					<option value="2" ${pageMaker.cri.perPageNum == 2 ? 'selected':''}>2개씩</option>
					<option value="3" ${pageMaker.cri.perPageNum == 3 ? 'selected':''}>3개씩</option>
					<option value="5" ${pageMaker.cri.perPageNum == 5 ? 'selected':''}>5개씩</option>
				</select>

				<!-- search bar -->
				<select class="form-control " name="searchType" id="searchType">
					<option value="" ${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
					<option value="n"
						${pageMaker.cri.searchType eq 'n' ? 'selected':''}>이 름</option>
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
			</div>
		</div>

		<div class="table-responsive">
			<table class="table table-hover text-nowrap"
				style="text-align: center;">
				<thead>
					<tr role="row">
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Browser: activate to sort column ascending">이름</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Browser: activate to sort column ascending">나이</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-sort="ascending"
							aria-label="Rendering engine: activate to sort column descending">연락처</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Platform(s): activate to sort column ascending">양성판정일</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="Engine version: activate to sort column ascending">백신접종상태</th>
					</tr>
				</thead>
				<tbody>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist','확진자 진료 신청', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
					<tr onclick="OpenWindow('cnfrm-detail-dgnss-regist', '진료 신청 정보', 1400, 700)">
						<td>강건</td>
						<td>27</td>
						<td>010-5678-1234</td>
						<td>2022-01-01</td>
						<td>2차접종 완료</td>
					</tr>
				</tbody>
			</table>

		</div>
		<!-- /.table-responsive -->
		<%@ include file="../template/list-footer.jsp"%>

	<!-- /.card-body -->
