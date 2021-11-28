<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="notices" value="${dataMap.notices }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="pointNoticeList" value="${pointNoticeList }" />

<title>공지사항</title>
<head></head>
<body>
	<div>
	 <!-- Main content -->
		<section class="content-header">
		  	<div class="container-fluid">
		  		<div class="row md-2">
		  			<div class="col-sm-6">
		  				<h1>공지사항</h1>  				
		  			</div>
		  			<div class="col-sm-6">
		  				<ol class="breadcrumb float-sm-right">
				        <li class="breadcrumb-item">
				        	<a href="list.do">
					        	<i class="fa fa-dashboard"></i>공지사항관리
					        </a>
				        </li>
				        <li class="breadcrumb-item active">
				        	목록
				        </li>		        
		    	  </ol>
		  			</div>
		  		</div>
		  	</div>
		</section>
		 
		 
	   	<section class="content">
	   		<div class="card">
	   			<div class="card-header with-border">
	   				<button type="button" class="btn btn-primary" onclick="OpenWindow('regist','공지등록',800,850);" >공지등록</button>
	   				<div id="keyword" class="card-tools" style="width:550px;">
	   					 <div class="input-group row">
	   					 	<!-- search bar -->
	   					 	
	   					 	 <!-- sort num -->
						  	<select class="form-control col-md-3" name="perPageNum" 
						  			id="perPageNum" onchange="list_go(1);">					  		  		
						  		<option value="10" >정렬개수</option>
						  		<option value="2" ${pageMaker.cri.perPageNum eq 2 ? 'selected' : '' }>2개씩</option>
						  		<option value="3" ${pageMaker.cri.perPageNum eq 3 ? 'selected' : '' }>3개씩</option>
						  		<option value="5" ${pageMaker.cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
						  	</select>
						  	
						  	<!-- search bar -->
						 	<select class="form-control col-md-3" name="searchType" id="searchType">
								<option value="" ${pageMaker.cri.searchType eq '' ? 'selected' : '' }>검색구분</option>
								<option value="w" ${pageMaker.cri.searchType eq 'w' ? 'selected' : '' }>작성자</option>
								<option value="t" ${pageMaker.cri.searchType eq 't' ? 'selected' : '' }>제목</option>
								<option value="c" ${pageMaker.cri.searchType eq 'c' ? 'selected' : '' }>내용</option>
								<option value="tc" ${pageMaker.cri.searchType eq 'tc' ? 'selected' : '' }>제목+내용</option>
								<option value="wt" ${pageMaker.cri.searchType eq 'wt' ? 'selected' : '' }>작성자+제목</option>
								<option value="wtc" ${pageMaker.cri.searchType eq 'wtc' ? 'selected' : '' }>작성자+제목+내용</option>
							</select>
							<!-- keyword -->
	   					 	<input  class="form-control" type="text" name="keyword" 
											placeholder="검색어를 입력하세요." value="${pageMaker.cri.keyword }"/>
							<span class="input-group-append">
								<button class="btn btn-primary" type="button" 
										id="searchBtn" data-card-widget="search" onclick="list_go(1);">
									<i class="fa fa-fw fa-search"></i>
								</button>
							</span>
						<!-- end : search bar -->		
	   					 </div>
	   				</div>   			
	   			</div>
	   			<div class="card-body" style="text-align:center;">
	    		  <div class="row">
		             <div class="col-sm-12">	
			    		<table class="table table-bordered">
			    			<tr>
			                	<th>번호</th>
			                	<th>제목</th>
			                	<th>작성자</th>
			                	<th>작성일</th><!-- yyyy-MM-dd  -->
			                	<th>조회수</th>
			               	</tr>
			               	
			            	<c:if test="${empty pointNoticeList }">
			            		<tr>
			            			<td colspan="5" class="text-center">
			            				중요 공지가 없습니다.
			            			</td>
			            		</tr>
			            	</c:if>
			            				               	
			            	<c:if test="${!empty pointNoticeList }">
			            		<c:forEach items="${pointNoticeList }" var="pointNotice" varStatus="status">
			            			<c:if test="${status.count le 3}">
			            			<tr style="background-color : gray">
			            				<td>중  요</td>
			            				<td>${pointNotice.title }</td>
			            				<td>
			            					<c:if test="${pointNotice.member.authority eq 'ROLE_ADMIN'}">
			            						[관리자]
			            					</c:if>
			            					<c:if test="${pointNotice.member.authority eq 'ROLE_MANAGER'}">
			            						[운영자]
			            					</c:if>
			            					${pointNotice.writer }
			            				</td>
			            				<td>
			            					<fmt:formatDate value="${pointNotice.regDate }" pattern="yyyy-MM-dd" />
			            				</td>
			            				<td>${pointNotice.viewCnt }</td>
			            			</tr>
			            			</c:if>
			            		</c:forEach>
			            	</c:if>			               	
			               	
			            	<c:if test="${empty notices }">
			            		<tr>
			            			<td colspan="5" class="text-center">
			            				해당 내용이 없습니다.
			            			</td>
			            		</tr>
			            	</c:if>
			            	
			            	<c:if test="${!empty notices }">
			            		<c:forEach items="${notices }" var="notice">
			            			<tr>
			            				<td>${notice.nno }</td>
			            				<td>
				            				<c:if test="${notice.point eq 1 }">
				            					[중요] 
				            				</c:if>
			            					${notice.title }
			            				</td>
			            				<td>
			            					<c:if test="${notice.member.authority eq 'ROLE_ADMIN'}">
			            						[관리자]
			            					</c:if>
			            					<c:if test="${notice.member.authority eq 'ROLE_MANAGER'}">
			            						[운영자]
			            					</c:if>
			            					${notice.writer }
			            				</td>
			            				<td>
			            					<fmt:formatDate value="${notice.regDate }" pattern="yyyy-MM-dd" />
			            				</td>
			            				<td>${notice.viewCnt }</td>
			            			</tr>
			            		</c:forEach>
			            	</c:if>
			            </table>
	    		     </div> <!-- col-sm-12 -->
             </div> <!-- row -->
	    		</div> <!-- card-body -->
	    		<div class="card-footer">
	    			<%-- <jsp:include page="/common/pagination.jsp" /> --%>
	    			<%@ include file="/common/pagination.jsp" %>
	    		</div>
		     </div>
	   	</section>	
	</div>
</body>
