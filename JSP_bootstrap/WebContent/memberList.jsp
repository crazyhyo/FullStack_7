<%@page import="org.eclipse.jdt.internal.compiler.ast.MemberValuePair"%>
<%@page import="kr.or.ddit.member.vo.PagingVO"%>
<%@page import="kr.or.ddit.member.vo.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="members" value="${dataMap.members }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:if test="${pageMaker.cri.page * pageMaker.cri.perPageNum > pageMaker.totalCount}">
<c:set var="endRecord" value="${pageMaker.totalCount }" />
</c:if>
<c:if test="${pageMaker.cri.page * pageMaker.cri.perPageNum <= pageMaker.totalCount}">
<c:set var="endRecord" value="${pageMaker.cri.page * pageMaker.cri.perPageNum }" />
</c:if>

<body>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
		      	
		<div>
			<h1 style="cursor:pointer;" onclick="location.href='/JSP_bootstrap/list'">회원관리</h1>
			<hr>
		</div>
		<div class="row">
			<select class="form-control col-sm-2" name="perPageNum"
				id="perPageNum" onchange="list_go(1);">
				<option value="10">정렬개수</option>
				<option value="2"
					${pageMaker.cri.perPageNum == 2 ? 'selected' : '' }>2개씩</option>
				<option value="3"
					${pageMaker.cri.perPageNum == 3 ? 'selected' : '' }>3개씩</option>
				<option value="5"
					${pageMaker.cri.perPageNum == 5 ? 'selected' : '' }>5개씩</option>
			</select>
			<div class="form-group col-sm-2">
			<select name="searchKey" id="sltSearchTag" class="form-control toggle">
				<option value=''>검색구분</option>
				<option value="id" 
						${pageMaker.cri.searchKey == 'id' ? 'selected' :  ''}>id</option>
				<option value="name" 
						${pageMaker.cri.searchKey == 'name' ? 'selected' :  ''}>이름</option>
				<option value="email" 
						${pageMaker.cri.searchKey == 'email' ? 'selected' :  ''}>이메일</option>
				<option value="phone" 
						${pageMaker.cri.searchKey == 'phone' ? 'selected' :  ''}>전화번호</option>
			</select>
	        </div>
			<div class="form-group col-sm-3">
				<input type="text" class="form-control toggle" name="searchWord"  id="inputSearch"
						value="${pageMaker.cri.searchWord == null ? '' :  pageMaker.cri.searchWord}">
	        </div>
	        <div style="display:inline" class="col-md-1">
				<input type="submit" value="검색" id="btnSearch" class="btn btn-primary toggle" 
						onclick="list_go(1);">
			</div>
        </div>	
		
		
		<div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title" style="cursor:pointer;" onclick="location.href='/JSP_bootstrap/list'">회원관리</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              	<label>총 ${pageMaker.totalCount } 중 ${endRecord - pageMaker.cri.perPageNum + 1}/${endRecord }</label>
                <table class="table table-sm toggle">
                	<thead>
						<tr>
							<th>NAME</th>					
							<th>ID</th>
							<th>EMAIL</th>
							<th>PHONE</th>
							<th>ENABLED</th>
						</tr>
					</thead>
					<tbody>
		            <c:forEach items="${members}" var="member">
			            <c:if test="${member.enabled eq 0}">
			                <c:set var="status" value="퇴사" />
			            </c:if>
			            <c:if test="${member.enabled eq 1}">
			                <c:set var="status" value="재직" />
			            </c:if>
			            <c:if test="${member.enabled eq 2}">
			                <c:set var="status" value="휴직" />
			            </c:if>
							<tr>
			               <!--     <td><a href="/JSP_bootstrap/detail?id=${member.id}&page=${page}">${member.name}</a></td>  -->
			                    <td><a href="javascript:detail_go('${member.id }', '${pageMaker.cri.page }')">${member.name}</a></td>
								<td>${member.id}</td>
								<td>${member.email}</td>
								<td>${member.phone}</td>
								<td>${status}</td>
							</tr>
		            </c:forEach>
					</tbody>
                </table>
				<form id="detailForm">
					<input type='hidden' name='page' value="" />
					<input type='hidden' name='id' value="" />
				</form>
				<script>
					function detail_go(id, page){
						if(!page) page = 1;
						
						var detailForm = $('#detailForm');
						detailForm.find("[name='page']").val(page);
						detailForm.find("[name='id']").val(id);
						
						detailForm.attr({
							action:'detail',
							method:'get'
						}).submit();
					}
				</script>
				
               	<div class="card-footer">
	    			<nav aria-label="Navigation">
	    				<ul class="pagination justify-content-center m-0">
	    					<li class="page-item">
	    						<a class="page-link" href="javascript:list_go(1);">
	    							<i class="fas fa-angle-double-left"></i>
	    						</a>
	    					</li>
	    					<li class="page-item">
	    						<a class="page-link" href="javascript:list_go(${pageMaker.startPage - 1});">
	    							<i class="fas fa-angle-left"></i>
	    						</a>
	    					</li>
	    					<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="i" >
	    					<li class="page-item ${pageMaker.cri.page == i ? 'active' : '' }">
	    						<a class="page-link" href="javascript:list_go(${i});">
	    							${i }
	    						</a>
	    					</li>	    						
	    					</c:forEach>
	    					
	    					<li class="page-item">
	    						<a class="page-link" href="javascript:list_go(${pageMaker.endPage + 1});">
	    							<i class="fas fa-angle-right"></i>
	    						</a>
	    					</li>
	    					<li class="page-item">
	    						<a class="page-link" href="javascript:list_go(${pageMaker.realEndPage });">
	    							<i class="fas fa-angle-double-right"></i>
	    						</a>
	    					</li>
	    				</ul>
	    			</nav>
	    		</div>
                
                <form id="register" class="toggle hidden" method="post" action="regist">
					<table class="table table-sm">
						<tr>
							<td>이름</td>
							<td colspan="3"><input type="text" name="name" id="name"></td>
						</tr>
						<tr>
							<td>아이디</td>
							<td>
							<input type="text" name="id" value="" id="id" required>
							<input type="button" value="중복확인" id="idCheck"></td>
							<td>비밀번호</td>
							<td><input type="password" name="pwd" id="pwd" required></td>
						</tr>
						<tr>
							<td>권한</td>
							<td>				
								<select name="authority" id="authority">
									<option value="ROLE_USER" selected>ROLE_USER</option>
									<option value="ROLE_ADMIN">ROLE_ADMIN</option>
								</select>
							</td>
							<td>등록자</td>
							<td><input type="text" name="register" value="mimi"></td>
						</tr>
						<tr>
							<td>주소</td>
							<td colspan="3"><input type="text" name="address" value=""></td>
						</tr>
						<tr>
							<td>입사일</td>
							<td><input type="date" name="regdate" value=""></td>
							<td>재직여부</td>
							<td>
								<select name="enabled" id="enabled">
									<option value="0">퇴사</option>
									<option value="1" selected>재직</option>
									<option value="2">휴직</option>
								</select>						
							</td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td colspan="3"><input type="text" name="phone" id="phone" value="" required></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td colspan="3"><input type="text" name="email" id="email" value="" required></td>
						</tr>
					</table>
					
					<input type="submit" value="제출" id="btnSubmit" class="btn btn-primary toggle hidden btn-foot" disabled >
					<input type="button" value="취소" id="btnCancle" class="btn btn-primary toggle hidden btn-foot" onclick="hideRegisterForm()">
					<label id="lblcheck"></label>
				</form>
                
                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
		
		<div class="row">
			<input type="button" value="등록" id="btnRegister" class="toggle btn btn-primary btn-foot" onclick="showRegisterForm()">
			<button type="button" value="목록" id="btnList" class="toggle btn btn-primary btn-foot" onclick="location.href='/JSP_bootstrap/list'">목록</button>
        </div>
        
		<form id="listForm">
			<input type='hidden' name='page' value="" />
			<input type='hidden' name='perPageNum' value="" />
			<input type='hidden' name='searchKey' value="" />
			<input type='hidden' name='searchWord' value="" />
		</form>

		<script>
		function list_go(page, url){
			
			console.log("list_go");
			
			if(!url) url="list";
			
			var listForm=$('#listForm');
			
			listForm.find("[name='page']").val(page);
			listForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
			listForm.find("[name='searchKey']").val($('select[name="searchKey"]').val());
			listForm.find("[name='searchWord']").val($('#inputSearch').val());
			
			listForm.attr({
				action:url,
				method:'get'
			}).submit();
		}
		</script>
      </div>
     </div>
   </div>
</body>