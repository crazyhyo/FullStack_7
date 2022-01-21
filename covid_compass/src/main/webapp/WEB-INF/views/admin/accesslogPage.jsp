<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="pageMaker" value="${dataMap.pageMaker}"/>
<c:set var="cri" value="${dataMap.pageMaker.cri}"/>
<c:set var="loginList" value="${dataMap.loginList}"/>

<head></head>
<title></title>
<body>

	<section class="content">
		<div class="card" style="margin: 1px; margin-top: 13px;">
				<div class="card-body" style="height: 70px; padding-bottom: 0px;">
					<!-- search bar -->
					<button type="button" class="btn btn-primary"
						style="background: #1a4f72; border: 0px; width: 90px;" onclick="">다운로드</button>
					
				</div>

				<div class="card col-md-12"
					style="position: relative; left: 0px; top: 0px; margin-bottom: 0px;">
					<div class="card-header ui-sortable-handle" style="cursor: move;">


					</div>
					<!-- /.card-header -->
					<div class="card-body" style="padding: 0px;">
						<div class="table-responsive">
							<table class="table table-hover text-nowrap" style="text-align: center;">
								<thead>
									<tr role="row">
										<!-- <th style="width: 5%;"><input type="checkbox"
											id="selectAll" onclick="selectAll()"></th> -->
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">기관번호</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">회원번호</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">회원명</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">IP</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">발생일자</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${empty loginList}">
										<td colspan="5"><strong>해당 내용이 없습니다.</strong></td>
									</c:if>
									<c:forEach items="${loginList}" var="login">
									<tr>
										<!-- <td onclick="event.cancelBubble=true" style="cursor: default;"><input
											type="checkbox" name="inst" onclick="cancleAll()"></td> -->
										<td>${login.instNo}</td>
										<td>${login.mberNo}</td>
										<td>${login.mberNm }</td>
										<td>${login.userIp}</td>
										<td>${login.userLogTime}</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>

					</div>

					<div class="card-footer clearfix" style="background: white;">
						<%@ include file="/resources/js/pagination.jsp"%>
					</div>

				</div>
		</div>
		<!-- /.card-body -->

	</section>
	<script>
		function selectAll(checkBox){
			var length = document.getElementsByName("inst").length;
			if(document.getElementById('selectAll').checked==true){
				for(var i=0; i<length; i++) document.getElementsByName("inst")[i].checked=true;
			}

			if(document.getElementById('selectAll').checked==false){
				for(var i=0; i<length; i++) document.getElementsByName("inst")[i].checked=false;
			}


		}
				function cancleAll(){

			if(document.getElementById('selectAll').checked==true){
				document.getElementById('selectAll').checked=false;
			}
		}
</script>
</body>
