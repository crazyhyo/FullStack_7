<%@page import="kr.or.ddit.member.vo.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
		<div>
			<h1>회원관리 카드</h1>
			<hr>
		</div>
		
		<div>
			<div>
				<table class="table table-sm show" id="memDetail">
					<tr>
						<td>이름</td>
						<td colspan="3">${member.name}</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td>${member.id}</td>
						<td>비밀번호</td>
						<td>${member.pwd}</td>
					</tr>
					<tr>
						<td>권한</td>
						<td>${member.authority}</td>
						<td>등록자</td>
						<td>${member.register}</td>
					</tr>
					<tr>
						<td>주소</td>
						<td colspan="3">${member.address}</td>
					</tr>
					<tr>
						<td>입사일</td>
						<td>${member.regdate}</td>
						<td>재직여부</td>
						<td>${status}</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td colspan="3">${member.phone}</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td colspan="3">${member.email}</td>
					</tr>
				</table>
		
				<form id="update" class="hidden" method="post" action="update">
					<table class="table table-sm">
						<tr>
							<td>이름</td>
							<td colspan="3"><input type="text" name="name" id="name" value="${member.name}"></td>
						</tr>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="id" value="${member.id}" id="id" readonly required></td>
							<td>비밀번호</td>
							<td><input type="password" name="pwd" id="pwd" value="${member.pwd}"required></td>
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
							<td><input type="text" name="register" value="${member.register}" readonly></td>
						</tr>
						<tr>
							<td>주소</td>
							<td colspan="3"><input type="text" name="address" value="${member.address}"></td>
						</tr>
						<tr>
							<td>입사일</td>
							<td><input type="date" name="regdate"></td>
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
							<td colspan="3"><input type="text" name="phone" id="phone" value="${member.phone}" required></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td colspan="3"><input type="text" name="email" id="email" value="${member.email}" required></td>
						</tr>
					</table>
					<div class="row">
						<div class="form-group col-sm-1">
							<input type="submit" value="제출" id="btnSubmit" class="form-control hidden">
						</div>
						<div class="form-group col-sm-1">
							<input type="button" value="취소" id="btnCancle" class="form-control hidden" onclick="hideUpdateForm()">
						</div>
				    </div>
				</form>			
			</div>
		</div>
		<div class="row">
			<div class="form-group col-sm-1">
				<input type="button" value="수정" id="btnUpdate" class="form-control show" onclick="showUpdateForm()">
			</div>
			<div class="form-group col-sm-1">
			<form method="post" action="delete">
				<input type="hidden" value="${member.id}" name="id">
				<input type="submit" value="삭제" id="btnDelete" class="form-control show">
			</form>
			</div>
			<div class="form-group col-sm-1">
				<input type="button" value="목록" id="btnList" onclick="location.href='/JSP_bootstrap/list?page=${page}'" class="form-control">      
			</div>   
	    </div>	
      </div>
     </div>
   </div>
</body>
