<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head></head>
<title></title>

<body>
<div class="card" style="margin:1px;">
		<div class="card-header center" style="background: #5bbc71; color: white;">
				<h3 class="card-title">자가격리자 목록</h3>
		</div>
		
		<div class="card-body" style="height: 70px;">
		<button type="button" class="btn btn-primary" style="background:#5bbc71;border:0px;width: 90px;">재검신청</button>
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
						<option value="n" ${pageMaker.cri.searchType eq 'n' ? 'selected':''}>이름</option>
						<option value="p" ${pageMaker.cri.searchType eq 'p' ? 'selected':''}>나이</option>
						<option value="p" ${pageMaker.cri.searchType eq 'p' ? 'selected':''}>격리일</option>
						<option value="p" ${pageMaker.cri.searchType eq 'p' ? 'selected':''}>중증도</option>
				</select>
				
				<!-- keyword -->
				<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${pageMaker.cri.keyword }" style="width: 18%;display: inline-block;"/>
				<span class="input-group-append"> 
					<button class="btn btn-primary" type="button" id="searchBtn" 
						    style="background: #5bbc71; color: #ffffff; border-color: #5bbc71;
						    	   display: inline-block;margin-bottom: 4px;margin-left: -7px;"
						data-card-widget="search" onclick="">
						<i class="fa fa-fw fa-search" ></i>
					</button>
				</span>
				<!-- end : search bar -->
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
							aria-label="">연락처</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">격리일</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">누적음성횟수</th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				<tr>
					<td>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									name="psti_req_check"
									data-psti-innb="${pstiReadyListVO.pstiInnb}">
							</div>
					<td>강건</td>
					<td>남자</td>
					<td>27</td>
					<td class="dtr-control sorting_1" tabindex="0">010-5678-1234</td>
					<td>2022-01-01</td>
					<td><span class="badge badge-info">3</span></td>
				</tr>
				</tbody>
			</table>

		</div>
		<%@ include file="../template/list-footer.jsp" %>		
	</div>
	<!-- /.card-body -->
</body>
