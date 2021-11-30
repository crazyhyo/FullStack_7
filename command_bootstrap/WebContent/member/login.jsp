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
			        	상세보기
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
  	</section>
    <!-- Main content -->
    <section class="content register-page">       
		<div class="register-box">         
	    	<form role="form" class="form-horizontal"  method="post">
	    		<div class="register-card-header" >
	    			<h1 class="text-center">로그인</h1>
	    		</div>
	        	<div class="register-card-body" >
	                <div class="form-group row" >
	                  <label for="inputEmail3" class="col-sm-3 control-label text-right">아이디</label>
	
	                  <div class="col-sm-9">
	                    <input name="id" type="text" class="form-control" id="inputEmail3" >
	                  </div>
	                </div>	               
	                <div class="form-group row">
	                  <label for="inputPassword3" class="col-sm-3 control-label text-right">비밀번호</label>
	                  <div class="col-sm-9">
	                    <input name="pwd" type="text" class="form-control" id="inputPassword3">
	                  </div>
	                </div>
	              </div>  
		          <div class="card-footer" style="padding:5px 0;" >
		          		<div class="row">
		          	<%-- 	<c:if test="${loginUser.id eq member.id }"> --%>
			          		<div class="col-sm-3 text-center">
			          			<button type="button" onclick="login_do();" id="modifyBtn" class="btn btn-warning ">로그인</button>
			          		</div>
			          		<div class="col-sm-3 text-center">
			            		<button type="button" id="listBtn" onclick="CloseWindow();" class="btn btn-primary pull-right">닫 기</button>
			            	</div>
		          	    </div>  	
		          </div>
	      	  </form>
      	  </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<script>
function login_do(){
	var form = document.querySelector('form[role="form"]');
	form.action = "login";
	form.submit();
}
</script>
 </body>