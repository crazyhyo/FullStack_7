<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<title></title>

<head></head>

<body>
<div class="col-md-4" style="margin: 250px auto">
<div class="card card-info">
              <div class="card-header" style="background-color: #5b6f90;">
                <h3 class="card-title">COVID - COMPASS Login</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="form-horizontal">
                <div class="card-body">
                  <div class="form-group row">
                    <label for="id" class="col-sm-4 col-form-label">I D</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="id" placeholder="I D">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="password" class="col-sm-4 col-form-label">Password</label>
                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="password" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-sm-6 text-left" style="margin-top: 7px;">
                    	<a id="findid" href="#">아이디 찾기</a>/
                    	<a id="findpwd" href="#">비밀번호 찾기</a>
                    </div>
                  		<button type="submit" class="btn btn-info col-sm-6"style="background-color: #5b6f90;">Sign in</button>
                  </div>
                </div>
                <!-- /.card-body -->
                <!-- /.card-footer -->
              </form>
            </div>
</div>
</body>