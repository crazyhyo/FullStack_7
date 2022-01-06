<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<head></head>

<title></title>

<body>
<div class="card card-primary col-md-3">
              <div class="card-header">
                <h3 class="card-title">비밀번호 찾기</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                  <div class="form-group">
                    <label for="id">아이디</label>
                    <input type="text" class="form-control" id="id" placeholder="Enter id">
                  </div>
                  <div class="form-group">
                    <label for="name">이름</label>
                    <input type="text" class="form-control" id="name" placeholder="Enter name">
                  </div>
                  <div class="form-group">
                    <label for="birth">생년월일</label>
                    <input type="text" class="form-control" id="birth" placeholder="20220101">
                  </div>
                  <div class="form-group">
                    <label for="phone">연락처</label>
                    <input type="text" class="form-control" id="phone" placeholder="- 없이 번호 입력">
                    <button type="submit" class="btn btn-primary" style="background-color: #5b6f90;">인증번호 받기</button>
                  </div>
                </div>
                  <div class="form-group">
                    <label for="number">인증번호</label>
                    <input type="text" class="form-control" id="number" placeholder="인증번호 입력">
                  	<input type="button" value="확인">
                  </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary" style="background-color: #5b6f90;">확인</button>
                  <button type="submit" class="btn btn-warning" style="background-color: #5b6f90;">닫기</button>
                </div>
              </form>
            </div>

</body>