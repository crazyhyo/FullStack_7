<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head></head>
<title></title>

<body>

	<div class="row">
			<div class="card" style="margin-left: 20px; margin-top: 20px;">
				<div class="card-header" style="background-color: #5bbc71;">
				<h3 class="card-title"><span style="color: white">확진자 상세 정보</span></h3>
				</div>
					<div class="register-card-body">
						<div class="form-group row">
							<input type="hidden" name="pstiInnb" value="${pstiInnb }">
							<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">성명</label>
							<div class="col-sm-3">
								<input name="pstiNm" type="text" class="form-control" id="inputEmail3"
									value="${pstiNm }홍길동" readonly>
							</div>
							<label for="inputEmail3" class="col-sm-2 control-label text-right" style="padding-top: 7px;">국적</label>
							<div class="col-sm-3">
								<input name="pstiNlty" type="text" class="form-control" id="inputEmail3"
									value="${pstiNlty }KOREA" readonly>
							</div>
						</div>
						<div class="form-group row">
							<input type="hidden" name="pstiInnb" value="${pstiInnb }">
							<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">검사경위</label>
							<div class="col-sm-3">
								<input name="chckReasonCode" type="text" class="form-control" id="inputEmail3"
									value="${chckReasonCode }본인판단" readonly>
							</div>
							<label for="inputEmail3" class="col-sm-2 control-label text-right" style="padding-top: 7px;">백신접종</label>
							<div class="col-sm-3">
								<input name="inoclCode" type="text" class="form-control" id="inputEmail3"
									value="${inoclCode }3차이상" readonly>
							</div>
						</div>
						
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-4 control-label text-right" style="padding-top: 7px;">성명</label>
							<div class="col-sm-3">
								<input name="pstiSexdstn" type="text" class="form-control" id="inputEmail3"
									value="${pstiSexdstn }남" readonly>
							</div>
							<label for="inputEmail3" class="col-sm-2 control-label text-right">나이</label>
							<div class="col-sm-3">
								<input name="pstiAge" type="text" class="form-control" value="${pstiAge }27" readonly>
							</div>
						</div>
						
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-4 control-label text-right" style="padding-top: 7px;">주민/외국인등록번호</label>
							<div class="col-sm-8">
								<input name="pstiRrn" type="text" class="form-control" value="${pstiRrn }960101-1111111" readonly>
							</div>
						</div>
						
						
						
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-4 control-label text-right" style="padding-top: 7px;">발열여부</label>
							<div class="col-sm-3">
								<input name="pstiPyrexiaYn" type="text" class="form-control"
									id="inputPassword3" value="${pstiPyrexiaYn }Y" readonly>
							</div>
							<label for="inputPassword3"
								class="col-sm-2 control-label text-right" style="padding-top: 7px;">임신여부</label>
							<div class="col-sm-3">
								<input name="pstiPregnanYn" type="text" class="form-control"
									id="inputPassword3" value="${pstiPregnanYn }N" readonly>
							</div>
						</div>
						
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-4 control-label text-right" style="padding-top: 7px;">증상</label>
							<div class="col-sm-8">
								<input name="pstiSymptms" type="text" class="form-control"
									id="inputPassword3" value="${pstiSymptms }기침, 두통, 어지럼증" readonly>
							</div>
						</div>
						
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-4 control-label text-right" style="padding-top: 7px;">연락처</label>
							<div class="col-sm-8">
								<input name="pstiTelno" type="text" class="form-control"
									id="inputPassword3" value="${pstiTelno }000-0000-0000" readonly>
							</div>
						</div>
			
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-4 control-label text-right" style="padding-top: 7px;">주소</label>
							<div class="col-sm-8">
								<input name="pstiAdres" type="text" class="form-control"
									id="inputPassword3" value="${pstiAdres }대전광역시 서구 둔산동 1032 708호" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword3"
								class="col-sm-4 control-label text-right" style="padding-top: 7px;">양성 확정일</label>
							<div class="col-sm-8">
								<input name="wrtYmd" type="text" class="form-control"
									id="inputPassword3" value="${wrtYmd }2022-01-05" readonly>
							</div>
						</div>
					</div>
			</div>
				
				<div>
			<!-- search bar -->
		</div>
			<div class="card" style="margin-left: 10px; margin-top: 20px;">
			  <div class="card-header" style="background-color: #5bbc71;">
				<h3 class="card-title"><span style="color: white">진료 병원 목록</span></h3>
				</div>
				<div class="card-body">
				<table class="table table-bordered">
                  <thead>
                    <tr style="text-align: center;">
                      <th>연번</th>
                      <th>시도</th>
                      <th>시군구</th>
                      <th>병원</th>
                      <th>전화번호</th>
                      <th>병상수</th>
                      <th>신청</th>
                      <th>지도</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="shittr"  style="text-align: center;">
                      <td>1</td>
                      <td>서울</td>
                      <td>서울시 도봉구</td>
                      <td>병원이름</td>
                      <td>042-7777-777</td>
                      <td>10</td>
                      <td><button style="width: 60px; margin: 0 auto;" type="button"  class="btn btn-block btn-success btn-flat">신청</button></td>
                      <td><button addr="서울 도봉구 창동 330" checkNum="0" style="width: 60px; margin: 0 auto;" type="button"  class="btn btn-block btn-secondary btn-flat fuckmap">지도</button></td>
                    </tr>
                    <tr class="shittr" style="text-align: center;">
                      <td>2</td>
                      <td>서울</td>
                      <td>서울시 송파구</td>
                      <td>병원이름</td>
                      <td>042-7777-777</td>
                      <td>10</td>
                      <td><button style="width: 60px; margin: 0 auto;" type="button"  class="btn btn-block btn-success btn-flat">신청</button></td>
                      <td><button addr="서울 송파구 잠실동 10" checkNum="0" style="width: 60px; margin: 0 auto;"  type="button"  class="btn btn-block btn-secondary btn-flat fuckmap">지도</button></td>
                    </tr>
                    <tr  style="text-align: center;">
                      <td>3</td>
                      <td>서울</td>
                      <td>서울시 마포구</td>
                      <td>병원이름</td>
                      <td>042-7777-777</td>
                      <td>10</td>
                      <td><button style="width: 60px; margin: 0 auto;" type="button"  class="btn btn-block btn-success btn-flat">신청</button></td>
                      <td><button addr="서울 마포구 성산동 390-1" checkNum="0" style="width: 60px; margin: 0 auto;"  type="button" class="btn btn-block btn-secondary btn-flat fuckmap">지도</button></td>
                    </tr>
                    <tr  style="text-align: center;">
                      <td>4</td>
                      <td>서울</td>
                      <td>서울특별시</td>
                      <td>병원이름</td>
                      <td>042-7777-777</td>
                      <td>10</td>
                      <td><button style="width: 60px; margin: 0 auto;" type="button"  class="btn btn-block btn-success btn-flat">신청</button></td>
                      <td><button addr="서울 양천구 안양천로 939" checkNum="0" style="width: 60px; margin: 0 auto;"  type="button" class="btn btn-block btn-secondary btn-flat fuckmap">지도</button></td>
                    </tr>
                    <tr  style="text-align: center;">
                      <td>5</td>
                      <td>서울</td>
                      <td>서울특별시</td>
                      <td>병원이름</td>
                      <td>042-7777-777</td>
                      <td>10</td>
                      <td><button style="width: 60px; margin: 0 auto;" type="button"  class="btn btn-block btn-success btn-flat">신청</button></td>
                      <td><button addr="서울 강남구 삼성동 111-8" checkNum="0" style="width: 60px; margin: 0 auto;"  type="button" class="btn btn-block btn-secondary btn-flat fuckmap">지도</button></td>
                    </tr>
                    
                    <tr  style="text-align: center;">
                      <td>6</td>
                      <td>서울</td>
                      <td>서울특별시</td>
                      <td>병원이름</td>
                      <td>042-7777-777</td>
                      <td>10</td>
                      <td><button style="width: 60px; margin: 0 auto;" type="button"  class="btn btn-block btn-success btn-flat">신청</button></td>
                      <td><button addr="서울 강남구 삼성동 111-8" checkNum="0" style="width: 60px; margin: 0 auto;"  type="button" class="btn btn-block btn-secondary btn-flat fuckmap">지도</button></td>
                    </tr>
                    
                    <tr  style="text-align: center;">
                      <td>7</td>
                      <td>서울</td>
                      <td>서울특별시</td>
                      <td>병원이름</td>
                      <td>042-7777-777</td>
                      <td>10</td>
                      <td><button style="width: 60px; margin: 0 auto;" type="button"  class="btn btn-block btn-success btn-flat">신청</button></td>
                      <td><button addr="서울 강남구 삼성동 111-8" checkNum="0" style="width: 60px; margin: 0 auto;"  type="button" class="btn btn-block btn-secondary btn-flat fuckmap">지도</button></td>
                    </tr>
                  </tbody>
                </table>
              </div>  
			</div>
		
	</div>
	
	
	<!-- /.card-body -->
	 <script>
          	var mapContainer;
          	
          	$('.fuckmap').click(function(){
          		$('#maptd').remove();
          		
          		
          		
          		var addr=$(this).attr('addr');
          		
          		var checkNum=$(this).attr('checkNum');
          		
          		if(checkNum=='0'){
          			$('.fuckmap').attr('checkNum', '0');
          			checkNum=1;
          			$(this).attr('checkNum',checkNum);
          			var num=$(this).attr('checkNum');
          			var html="<td id='maptd' colspan='8'><div id='map' style='height: 400px;'></div></td>";
          			
          			$(this).parents('tr').after(html);
          			
          			mapContainer=document.getElementById('map');
          			
          		}else{
          			checkNum=0;
          			$(this).attr('checkNum',checkNum);
          			var num2=$(this).attr('checkNum');
          			//alert("num2:"+num2);
          			$('#maptd').remove();
          			
          		}
          		
          		mapOpen(addr);
          	})
          	
          	
          	function mapOpen(addr){
          					
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
          											+ "병원(이름)" +'<br>병상수:10'
          											+ '<br><a href="https://map.kakao.com/link/to/33.450701,126.570667" style="color:blue" target="_blank">길찾기</a>'+ '</div>'; 

          									// 인포윈도우를 생성합니다
          									var infowindow = new kakao.maps.InfoWindow(
          											{
          												content : iwContent
          											});

          									// 마커에 마우스오버 이벤트를 등록합니다
          									 kakao.maps.event.addListener(marker,
          											'mouseover', function() {
          												// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
          												infowindow
          														.open(map, marker);
          											});

          									// 마커에 마우스아웃 이벤트를 등록합니다
          									kakao.maps.event.addListener(marker,
          											'mouseout', function() {
          												// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
          												infowindow.close();
          											});
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

