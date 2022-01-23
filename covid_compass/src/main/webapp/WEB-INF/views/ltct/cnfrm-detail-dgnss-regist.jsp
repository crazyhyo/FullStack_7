<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=553e55e7a953a05a2adfe2bfc2932452&libraries=services"></script>
	
</head>
<title></title>

<body>

		<div style="float: left;">
			<div class="card" style="margin-left: 53px;  margin-top: 15px;">
			  <div class="card-header" style="background-color: #1a4f72">
				<h3 class="card-title"><span style="color: white">진료 신청</span></h3>
				</div>
				<div class="card-body pb-1">
				<table class="table table-sm table-bordered">
				  <tr style="text-align: center;">
					<th>확진자 성명</th>
					<td>홍길동</td>
				  </tr>
				</table>
				</div>
			  <div id="" class="card-header d-flex p-0">
			  				<h3 class="card-title p-3">병원 목록</h3>
							<ul class="nav nav-pills ml-auto p-2" role="tablist">
								<li class="nav-item">
								  <a onclick="deleteSearch()" class="nav-link active" style="background-color: #1a4f72;" id="itct-bookmark-list-tab" data-toggle="pill" href="#itct-bookmark-list" role="tab" aria-controls="custom-tabs-three-home" aria-selected="true">연계기관</a>
								</li>
								<li class="nav-item">
								  <a onclick="makeSearch()" class="nav-link" id="itct-all-list-tab" data-toggle="pill" href="#itct-all-list" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="false">전체보기</a>
								</li>
							</ul>
			  </div>
			  
			  <div id="placeSearch" style="visibility: hidden; height: 30px;">
						<ul class="nav nav-pills ml-auto p-2" role="tablist">
							<li class="nav-item">
								<div  class="input-group float-right"
									style="max-width: 600px; width: 300px; margin-left: 228px;">
									<!-- search bar -->
									<select class="form-control " name="searchType" id="searchType">
										<option value=""
											${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
										<option value="n"
											${pageMaker.cri.searchType eq 'n' ? 'selected':''}>성
											명</option>
										<option value="p"
											${pageMaker.cri.searchType eq 'p' ? 'selected':''}>전화번호</option>
									</select>

									<!-- keyword -->
									<input class="form-control" type="text" name="keyword"
										value="${pageMaker.cri.keyword }"
										style="width: 18%; display: inline-block;" /> 
										<span class="input-group-append">
										<button class="btn btn-primary" type="button" id="searchBtn"
											style="background:  #1a4f72; color: #ffffff; border-color: #5b6f90; display: inline-block; margin-bottom: 4px; margin-left: -7px;"
											data-card-widget="search" onclick="">
											<i class="fa fa-fw fa-search"></i>
										</button>
									</span>
									<!-- end : search bar -->
								</div>
							</li>
						</ul>
					</div>
			  
				<div class="card-body">
					<div class="tab-content" id="custom-tabs-two-tabContent">
					  <div class='tab-pane fade show active' id="itct-bookmark-list" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
					    <%@ include file="./itct-bookmark-list.jsp" %>
					  </div>
					  <div class='tab-pane fade' id="itct-all-list" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
					    <%@ include file="./itct-all-list.jsp" %>
					  </div>
					</div>
                </div>  
				<div class="card-footer clearfix" style="background: white; margin-left: 28px;">
							<%@ include file="../template/list-footer.jsp"%>
				</div>
				<div style="margin-bottom: 35px;">
				
				</div>
				
			</div>
		</div>
		
		<div style="float: left;">
			<div class="card" style="margin-left: 20px; margin-top: 15px; width: 600px;">
				<div class="card-header" style="background-color: #1a4f72">
					<h3 class="card-title">
						<span style="color: white">병원 정보</span>
					</h3>
				</div>
				<div id="mapLocation" class="card-body">
					<table class="table table-sm table-bordered">
						<tr style="text-align: center;">
							<th>병원명</th>
							<td>을지대학병원</td>
							<td><button type="button"
									style="width: 50%; margin-left:5px; background: #1a4f72; border: #1a4f72;"
									class="btn btn-success btn-sm">진료 신청</button></td>
						</tr>
					</table>
				</div>
				<!-- <div id="map"
					style="width: 651px; height: 600px; margin-left: 19px;">
			    </div> -->
			</div>
		</div>
	
	<!-- /.card-body -->
	 <script>
	 	function deleteSearch(){
	 		//alert("눌림");
	 		$('#placeSearch').css('visibility','hidden');
	 	}
	 	function makeSearch(){
	 		//alert("눌림");
	 		$('#placeSearch').css('visibility','visible');
	 	}
	 
	 	window.onload=function(){
	 		mapOpen("서울 도봉구 창동 330");
	 	}
          	function mapOpen(addr){
          	  $('#map').remove();
          	  var html="<div id='map' style='width: 560px; height: 492px; margin-left: 20px; margin-bottom: 12px;'></div>";
          	  $('#mapLocation').after(html);
              var mapContainer=document.getElementById('map');		
          		var mapOption = {
          			center : new kakao.maps.LatLng(36.35043075681321,
          					127.3848294267714), // 지도의 중심좌표
          			level : 3
          		// 지도의 확대 레벨
          		};

          		// 지도를 생성합니다    
          		var map = new kakao.maps.Map(mapContainer, mapOption); 

          		// 주소-좌표 변환 객체를 생성합니다
          		var geocoder = new kakao.maps.services.Geocoder();
          			
          			// 주소로 좌표를 검색합니다
          			geocoder.addressSearch(addr,function(result, status) {
          								// 정상적으로 검색이 완료됐으면 
          								if (status === kakao.maps.services.Status.OK) {
          									
          									// 이동할 위도 경도 위치를 생성합니다 
          								    var moveLatLon = new kakao.maps.LatLng(result[0].y, result[0].x);
          								    
          								    // 지도 중심을 이동 시킵니다
          								    map.setCenter(moveLatLon);

          									var coords = new kakao.maps.LatLng(
          											result[0].y, result[0].x);
          									
          									// 결과값으로 받은 위치를 마커로 표시합니다
          									var marker = new kakao.maps.Marker({
          										map : map,
          										position : coords
          									});
											
          									/* // 인포윈도우로 장소에 대한 설명을 표시합니다
          									var infowindow = new kakao.maps.InfoWindow({
          										content : '<div style="width:150px;text-align:center;padding:6px 0;">'+obj.name+'</div>'
          									});
          									
          									infowindow.open(map, marker); */

          									// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
          									var iwContent = '<div class="markerInfo" style="width:150px;text-align:center;padding:6px 0;">'
          											+ "병원(이름)" +'<br>병상수:10'+"<br>가동률:75%"
          											+ '<br><a href="https://map.kakao.com/link/to/33.450701,126.570667" style="color:blue" target="_blank">길찾기</a>'+ '</div>'; 

          									// 인포윈도우를 생성합니다
          									var infowindow = new kakao.maps.InfoWindow(
          											{
          												content : iwContent
          											});

          									// 마커에 마우스오버 이벤트를 등록합니다
          									/*  kakao.maps.event.addListener(marker,
          											'mouseover', function() {
          												// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
          												infowindow
          														.open(map, marker);
          											}); */

          									// 마커에 마우스아웃 이벤트를 등록합니다
          									/* kakao.maps.event.addListener(marker,
          											'mouseout', function() {
          												// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
          												infowindow.close();
          											}); */
          									infowindow.open(map, marker); 
          								}
          							});
          		

          		var zoomControl = new kakao.maps.ZoomControl();
          		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

          			
          		// 지도가 확대 또는 축소되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
          		kakao.maps.event.addListener(map, 'zoom_changed', function() {

          			// 지도의 현재 레벨을 얻어옵니다
          			var level = map.getLevel();

          			var message = '현재 지도 레벨은 ' + level + ' 입니다';
          			var resultDiv = document.getElementById('result');

          		});
          	}
	</script>
</body>

