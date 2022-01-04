<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<head>

<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

<link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
<link href="<%=request.getContextPath() %>/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="<%=request.getContextPath() %>/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

<link href="<%=request.getContextPath() %>/resources/vendors/nprogress/nprogress.css" rel="stylesheet">

<link href="<%=request.getContextPath() %>/resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

<link href="<%=request.getContextPath() %>/resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">


</head>

<body>

		<div class="#">
		
			<div class="table-responsive">
				<table class="table m-0" style="text-align: center;" id="testDatatable">
					<thead>
						<tr role="row">
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-label="Browser: activate to sort column ascending">이름</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1"
								aria-sort="ascending"
								aria-label="Rendering engine: activate to sort column descending">피검자 등록일</th>
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
		</div>
		<!-- /.card-body -->
	</div>
<!-- 
<script>
window.onload = function(){
    $("#testDatatable").DataTable();
    alert('window onload!');
};
alert('test!!!!!!!!!!');
</script> -->


<%@ include file="./tmpImportFooter.jsp" %>

</body>
