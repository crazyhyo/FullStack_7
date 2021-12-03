<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<title>로그인</title>

<body>

  <!-- Content Wrapper. Contains page content -->
  <div >
  	 <section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>로그인</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="#">
				        	<i class="fa fa-dashboard">회원관리</i>
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	로그인
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
  	</section>
    <!-- Main content -->
    <section class="content register-page">
		<div class="register-box">
			<div class="login-logo">
    			<a href=""><b>로그인</b></a>
  			</div>
  			<div class="card">
  				<form role="form" method="post" action="login.do?redirectURL=${redirectURL}">
		        	<div class="register-card-body" >
						<br />
		                <div class="form-group row" >
		                  <label for="inputId" class="col-sm-3 control-label text-right">아이디</label>
		
		                  <div class="col-sm-9">
		                    <input name="id" type="text" class="form-control" id="inputId">
		                  </div>
		                </div>	               
		                <div class="form-group row" >
		                  <label for="inputPwd" class="col-sm-3 control-label text-right">비밀번호</label>
		
		                  <div class="col-sm-9">
		                    <input name="pwd" type="password" class="form-control" id="inputPwd">
		                  </div>
		                </div>	               
		              </div>
	              </form>
		          <div class="card-footer" style="padding:5px 0;" >
		          		<div class="row">		          		
			          		<div class="col-sm-3 text-center">
			          			<button type="button" onclick="login_go();" 
			          			id="deleteBtn" class="btn btn-danger" >로그인</button>
			          		</div>
		          			
			          		<div class="col-sm-3 text-center">
			            		<button type="button" id="listBtn" onclick="CloseWindow();" class="btn btn-primary pull-right">닫 기</button>
			            	</div>
		          	    </div>  	
		          </div>
      	  	</div>
        </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
<script>
function login_go(){
	var loginForm = document.querySelector("form[role='form']");
	loginForm.submit();
}
</script>
</body>




