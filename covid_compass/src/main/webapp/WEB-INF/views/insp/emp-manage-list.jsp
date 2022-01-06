<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head></head>
<title></title>

<body>
	
	  <div class="card" style="margin:1px;" >
		<div class="card-header center" style="background: #5b6f90; color: white;">
			<h3 class="card-title">직원관리</h3>
		</div>
		<div class="card-body" style="height: 70px;">
			<!-- search bar -->
			<button type="button" class="btn btn-primary" style="background:#5b6f90;border:0px;width: 90px;">등록</button>
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
					<option value="i"
						${pageMaker.cri.searchType eq 'i' ? 'selected':''}>아이디</option>
					<option value="n"
						${pageMaker.cri.searchType eq 'n' ? 'selected':''}>이 름</option>
					<option value="p"
						${pageMaker.cri.searchType eq 'p' ? 'selected':''}>전화번호</option>
					<option value="e"
						${pageMaker.cri.searchType eq 'e' ? 'selected':''}>이메일</option>
				</select>
				
				<!-- keyword -->
				<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${pageMaker.cri.keyword }" style="width: 18%;display: inline-block;"/>
				<span class="input-group-append"> 
					<button class="btn btn-primary" type="button" id="searchBtn" 
						    style="background: #5b6f90; color: #ffffff; border-color: #5b6f90;
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
							aria-label="">아이디</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">성명</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-sort="ascending"
							aria-label="">생년월일</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">전화번호</th>
						<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
							aria-label="">이메일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
					<tr>
						<td>test1</td>
						<td>홍길동</td>
						<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
								value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1990-11-15</td>
						<td>010-1234-5678</td>
						<td>kimchiman@kimchi.kim.chi</td>
					</tr>
				</tbody>
			</table>

		</div>
		<!-- /.table-responsive -->
			<%@ include file="../template/list-footer.jsp" %>
		</div>
	
	<!-- /.card-body -->


</body>