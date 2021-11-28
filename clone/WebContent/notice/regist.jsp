<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="memberList" value="${memberList }" />

<title>공지등록</title>

<body>

	<!-- Content Wrapper. Contains page content -->
<div >
  	 <section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>공지등록</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="#">
				        	<i class="fa fa-dashboard">공지사항관리</i>
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	등록
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
  	</section>
	<!-- Main content -->
		  <div class="col-md-12">
			<div class="card">
              <!-- /.card-header -->
              <div class="card-body">
                <form>
                  <div class="row">
                    <div class="col-sm-1" style="text-align: center;">
                        <label>제목</label>
                    </div>
                    <div class="col-sm-7">
                      <div class="form-group">
                        <input type="text" name="title" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-1" style="text-align: center;">
                      <div class="form-group">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" onclick="point_go();">
                          <input type="hidden" name="point">
                          <label class="form-check-label">중요여부</label>
                        </div>
                      </div>
                    </div>                    
                    <div class="col-sm-1" style="text-align: center;">
                        <label>작성자</label>
                    </div>
                    <div class="col-sm-1" style="text-align: center;">
                      <div class="form-group">
                        <select class="form-control">
                          <c:forEach items="${memberList }" var="member">
                          	<option value="${member.id }">${member.id }</option>
                          </c:forEach>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-1" style="text-align: center;">
                        <label>게시 시작일</label>
                    </div>
                    <div class="col-sm-3">
                      <div class="form-group">
                        <input type="date" class="form-control" name="startdate">
                      </div>
                    </div>
                    <div class="col-sm-1" style="text-align: center;">
                        <label>게시 종료일</label>
                    </div>
                    <div class="col-sm-3">
                      <div class="form-group">
                        <input type="date" class="form-control" name="enddate">
                      </div>
                    </div>
                    <div class="col-sm-1" style="text-align: center;">
                      <div class="form-group">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" onclick="disable_go();">
                          <label class="form-check-label">영속게시</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="row" style="text-align: center;">
                    <div class="col-sm-12">
                      <!-- textarea -->
                      <div class="form-group">
                        <label>내용</label>
                        <textarea class="form-control" rows="15"></textarea>
                      </div>
                    </div>
                  </div>
                  
                  <div class="card-footer">
					<div class="row">								
					  <div class="col-sm-6">
						<button type="button" id="registBtn" onclick="regist_go();return false;" class="btn btn-info">등&nbsp;&nbsp;록</button>
					  </div>
							 	
					  <div class="col-sm-6">
					    <button type="button" id="cancelBtn" onclick="CloseWindow();"
						        class="btn btn-default float-right">&nbsp;&nbsp;&nbsp;취 &nbsp;&nbsp;소&nbsp;&nbsp;&nbsp;</button>
					  </div>
					</div>
				 </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
          </div>

<script>

window.onload = function(){
	
	const 
	let date = new Date().toISOString().slice(0, 10);
	
}
</script>
</body>
