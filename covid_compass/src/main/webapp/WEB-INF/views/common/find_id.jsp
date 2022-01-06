<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<head></head>

<title></title>

<body>
<div class="card-primary">
  <div class="card-header" style="background-color: #5b6f90;">
    <h3 class="card-title">아이디 찾기</h3>
  </div>
  <!-- /.card-header -->
  <!-- form start -->
  <form>
    <div class="card-body">
      <div class="form-group">
        <label for="name">이름</label>
        <input type="text" class="form-control" id="name" placeholder="Enter name">
      </div>
      <div class="form-group">
        <label for="birth">생년월일</label>
        <input type="text" class="form-control" id="birth" placeholder="20220101">
      </div>
    </div>
    <!-- /.card-body -->

    <div class="row">
     <div class="col-sm-1"></div>
      <button type="submit" class="btn btn-primary col-md-5" style="background-color: #5b6f90; border-color: #5b6f90; margin-right: 5px;">확인</button>
      <button type="submit" class="btn btn-primary col-md-5" style="background-color: #5b6f90; border-color: #5b6f90; margin-left: 5px;">닫기</button>
      <div class="col-sm-1"></div>
    </div>
  </form>
</div>
</body>