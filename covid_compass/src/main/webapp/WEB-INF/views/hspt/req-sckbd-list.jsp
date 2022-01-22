<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<style>
.on{
	background-color: rgb(236, 236, 236);
}
</style>
</head>

<title></title>

<body>




<section class="content">
<div class="row" style="margin: 1px;">
  <div class="col-12 pl-0 pr-0" style="margin-top: 17px;">
    <div class="">
      <div class="card-header p-0 t-1">
        <ul class="nav nav-pills ml-auto p-2" id="custom-tabs-two-tab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="custom-req-sckbd-hspt-tab" data-toggle="pill" href="#custom-req-sckbd-hspt" role="tab" aria-controls="custom-tabs-three-home-tab" aria-selected="true">이원신청 목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="custom-req-sckbd-ltct-tab" data-toggle="pill" href="#custom-req-sckbd-ltct" role="tab" aria-controls="custom-tabs-three-profile-tab" aria-selected="false">입소신청 목록</a>
          </li>
          
          <li style="margin-left: 685px;">
					<!-- search bar -->
					<div class="input-group float-right" style="max-width: 600px; width:300px;">
								
						<!-- search bar -->
                    	
						<select class="form-control " name="searchType" id="searchType" >
							<option value="" ${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
							<option value="n"
								${pageMaker.cri.searchType eq 'n' ? 'selected':''}>시료번호</option>
							<option value="p"
								${pageMaker.cri.searchType eq 'p' ? 'selected':''}>요청기관</option>
						</select>

						<!-- keyword -->
						<input class="form-control" type="text" name="keyword"
							value="${pageMaker.cri.keyword }"
							style="width: 18%; display: inline-block;" />
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" id="searchBtn"
								style="background: #1a4f72; color: #ffffff; border-color: #1a4f72; display: inline-block; margin-bottom: 4px; margin-left: -7px;"
								data-card-widget="search" onclick="">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
						</div>
					</li>
        </ul>
      </div>
      <div class="card-body">
        <div class="tab-content" id="custom-tabs-two-tabContent">
          <div class="tab-pane fade show active" id="custom-req-sckbd-hspt" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
          	<%@ include file="./req-sckbd-hspt-list.jsp" %>
          </div>
          <div class="tab-pane fade" id="custom-req-sckbd-ltct" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
            <%@ include file="./req-sckbd-ltct-list.jsp"%>
          </div>
        </div>
      </div>
      <!-- /.card -->
    </div>
  </div>
</div>
</section>
</body>