<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="../resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../resources/bootstrap/dist/css/adminlte.min.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=553e55e7a953a05a2adfe2bfc2932452&libraries=services"></script>
<script type="text/javascript" src="../resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<style>
.page-item{
 color: #1a4f72;
}

.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
    color: #fff;
    background-color: #1a4f72;
}
.page-item.active .page-link {
    z-index: 3;
    color: #fff;
    background-color: #1a4f72!important;
    border-color: #1a4f72!important;
}
th{
	background: #f5fafc;
}   

</style>
</head>
<body>
	<div class="wrapper" style="max-width: 1280px; margin: 0 auto;">
		<c:if test="${question eq 'question'}">
			<div class="card mb-0">
				<div class="card-body pb-0">
		</c:if>
		<c:choose>
			<c:when test="${question eq 'question'}">
				<div class="row pl-3 pt-2" style="height: 100px; align-items: center; padding-right: 2%; justify-content: right;">
					<div class="col-md-2">
						<div style="width: 200px;height: 80px; background-image: url(<%=request.getContextPath()%>/resources/image/logoblack.png);   background-size: cover;"></div>
					</div>
					<div class="col-md-8">
						<div style="width: 100%; text-align: center; align-self: flex-end; align-items: center;">
							<label style="font-size: 3.0rem; color: #1a4f72; text-align: center;">????????? ??????</label>
						</div>
					</div>


					<div class="col-md-2">
						<button class="btn btn-block btn-danger" type="button" onclick="winClose();">??????</button>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="row pl-3 pt-2" style="height: 100px; align-items: center; padding-right: 2%; justify-content: right;">
					<div class="col-md-2">
						<div style="width: 200px;height: 80px; background-image: url(<%=request.getContextPath()%>/resources/image/logoblack.png);   background-size: cover;"></div>
					</div>
					<div class="col-md-8">
						<div style="width: 100%; text-align: center; align-self: flex-end; align-items: center;">
							<label style="font-size: 3.0rem; color: #1a4f72; text-align: center;">????????? ??????</label>
						</div>
					</div>
					<div class="col-md-2">
						<button class="btn btn-block btn-primary" type="button" onclick="historyBack();" style="background: #1a4f72; border-color: #1a4f72;">????????????</button>
					</div>
				</div>
			</c:otherwise>
		</c:choose>

		<form role="form" action="insp-list" method="get">
			<div class="row mt-2" style="justify-content: space-around; text-align: center;">
				<div class="form-group row">
					<input style="width: 500px;" type="text" placeholder="???????????? ???????????????" name="keyword" value="${keyword}"/>
					<input type="hidden" name="backPage" value="${question}"/>
					<div>
						<button style="margin-left: 5px; background: #1a4f72; border-color: #1a4f72;" type="button" onclick="list_go(1, true);" class="btn btn-block btn-primary">??????</button>
					</div>
				</div>
			</div>
		</form>
		<div class="row" style="justify-content: space-around; text-align: center;">
			<strong>?????? ??? ?????????, ~??????, ??????????????? ???????????? ???????????????.</strong>
		</div>
		<div class="row" style="justify-content: space-around; text-align: center;">
			<p style="color: #5e7ff7;">
				????????? ??????: <strong>'??????'</strong> ?????? <strong>'??????'</strong> ?????? <strong>'~??????'</strong> ?????? <strong>'042'</strong>(???????????? ??????)
			</p>
		</div>
		<div class="card-body pb-3">
			<table class="table table-sm table-bordered" style="font-size: 15px;table-layout: fixed;"> 
				<thead>
					<tr style="text-align: center;">
						<th style="width: 5%;">??????</th>
						<th style="width: 5%;">??????</th>
						<th style="width: 40%;">?????????</th>
						<th style="width: ${question eq 'question' ? '20%':'30%'};">?????????</th>
						<th style="width: 10%;">????????????</th>
					<c:if test="${question eq 'question'}">
						<th style="width: 10%;">??????</th>
					</c:if>	
						<th style="width: 10%};">??????</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${inspList}" var="insp" varStatus="status">
						<tr class="shittr" style="text-align: center;">
								<td >${status.index + 1}</td>
							<c:set var="addrDivision" value="${insp.instAdres} "/>
								<td >${fn:substring(addrDivision,0,2) }</td>
								<td style="text-align: left;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;" title="${insp.instAdres}">${insp.instAdres}</td>
								<td style="text-align: left;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;" title="${insp.instNm}">${insp.instNm}</td>
								<td >${insp.instTelno}</td>
						
							
						<c:if test="${question eq 'question'}">
								<td>
									<button style="width: 70px; margin: 0 auto;" type="button" onclick="inspCheck('${insp.inspNo}', '${insp.instNm}');" class="btn btn-block btn-success btn-xs">??????</button>
								</td>
						</c:if>			
							
							<td >
								<button addr="${insp.instAdres}" inspNm="${insp.instNm}" checkNum="0" style="width: 60px; margin: 0 auto;" type="button" class="btn btn-block btn-secondary btn-xs map">??????</button>
							</td>
						</tr>
					</c:forEach>
					<!-- <tr id="maptest">
                    	<td colspan="6"><div id="map" style="height: 400px;"></div></td>
                      </tr> -->
				</tbody>
			</table>
		</div>
	</div>
	<nav aria-label="Navigation">
		<ul class="pagination justify-content-center">
			<li class="page-item">
				<a class="page-link" href="javascript:list_go(1);">
					<i class="fas fa-angle-double-left" style="color:#1a4f72;"></i>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go('${pageMaker.prev ? pageMaker.startPage-1 : pageMaker.cri.page}');">
					<i class="fas fa-angle-left" style="color:#1a4f72;"></i>
				</a>
			</li>
			<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
			
			<li class="page-item ${pageMaker.cri.page == pageNum?'active':''}">
				<a class="page-link" ${pageMaker.cri.page == pageNum?'': 'style="color:#1a4f72;"'} href="javascript:list_go('${pageNum}');" >${pageNum }</a>
			</li>
			
			</c:forEach>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go('${pageMaker.next ? pageMaker.endPage+1 :pageMaker.cri.page}');">
					<i class="fas fa-angle-right" style="color:#1a4f72;"></i>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go('${pageMaker.realEndPage}');">
					<i class="fas fa-angle-double-right" style="color:#1a4f72;"></i>
				</a>
			</li>	
		</ul>    					
	</nav>
<c:if test="${question eq 'question'}">
</div>

</div>
</c:if>	
	
<form id="jobForm">
	<input type='hidden' name="page" value="" />
	<input type='hidden' name="perPageNum" value=""/>
	<input type='hidden' name="keyword" value="${keyword}" />
	<input type='hidden' name="backPage" value="${question}"/>
</form>
<script>

function winClose(){
		window.close();
}

function historyBack(){
	var check = confirm("????????? ????????? ???????????? ??????????????? ?????????????????????????");
	
	if(check){
		location.href="<%=request.getContextPath()%>/guest/guest-main"
	}
}

function inspCheck(inspNo, instNm){
	//console.log(instNo);
	//console.log(instNm);
	var inspNo = inspNo;
	var instNm = instNm;
	
	var check = confirm("???????????? ?????????????????????????");
	if(check){
		
		$(opener.document).find('#inspNo').val(inspNo);
		$(opener.document).find('#inspCheck').val(instNm);
			
		window.close();
	}else{
		return;
	}
}



function list_go(page, search, url){
	if(!url) url="insp-list";
	
	var jobForm=$('#jobForm');
	
	
	jobForm.find("[name='page']").val(page);
	jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
	if(search){
		jobForm.find("[name='keyword']").val($('div.form-group>input[name="keyword"]').val());
	}
	
	jobForm.attr({
		action:url,
		method:'get'
	}).submit();
}
</script>  
  
		

	
	<script>
		var mapContainer;
		var inspNm;

		$('.map')
				.click(
						function() {
							$('#maptd').remove();

							var addr = $(this).attr('addr');
							  inspNm = $(this).attr('inspNm');

							var checkNum = $(this).attr('checkNum');

							if (checkNum == '0') {
								$('.map').attr('checkNum', '0');
								checkNum = 1;
								$(this).attr('checkNum', checkNum);
								var num = $(this).attr('checkNum');
								
								var questionCheck = $('#jobForm').find('[name=backPage]').val();
								if(questionCheck == "question"){
									var html = "<td id='maptd' colspan='7'><div id='map' style='height: 400px;'></div></td>";
								}else{
									var html = "<td id='maptd' colspan='6'><div id='map' style='height: 400px;'></div></td>";
								}

								$(this).parents('tr').after(html);

								mapContainer = document.getElementById('map');

							} else {
								checkNum = 0;
								$(this).attr('checkNum', checkNum);
								var num2 = $(this).attr('checkNum');
								//alert("num2:"+num2);
								$('#maptd').remove();

							}

							mapOpen(addr);
						})

		function mapOpen(addr) {

			var mapOption = {
				center : new kakao.maps.LatLng(36.35043075681321,
						127.3848294267714), // ????????? ????????????
				level : 3
			// ????????? ?????? ??????
			};

			// ????????? ???????????????    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// ??????-?????? ?????? ????????? ???????????????
			var geocoder = new kakao.maps.services.Geocoder();

			// ????????? ????????? ???????????????
			geocoder
					.addressSearch(
							addr,
							function(result, status) {
								// ??????????????? ????????? ??????????????? 
								if (status === kakao.maps.services.Status.OK) {

									// ????????? ?????? ?????? ????????? ??????????????? 
									var moveLatLon = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// ?????? ????????? ?????? ????????????
									map.setCenter(moveLatLon);

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// ??????????????? ?????? ????????? ????????? ???????????????
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									/* // ?????????????????? ????????? ?????? ????????? ???????????????
									var infowindow = new kakao.maps.InfoWindow({
										content : '<div style="width:150px;text-align:center;padding:6px 0;">'+obj.name+'</div>'
									});
									
									infowindow.open(map, marker); */

									// ????????? ????????? ???????????? ??? ?????? ?????? ????????? ?????????????????? ???????????????
									var iwContent = '<div class="markerInfo" style="width:150px;text-align:center;padding-top:6px;display:block; ">'
											+ inspNm
											+ '<br> <button class="btn btn-block btn-secondary btn-xs" type="button" style="width:99%;background:#1a4f72;margin-top: 10px;border-color:#1a4f72">'
									        + '<a href="https://map.kakao.com/link/to/'+inspNm+','+result[0].y +','+ result[0].x+'" style="color:blue;color:white" target="_blank">?????????</a>'
											+ '</buttom></div>';
									// ?????????????????? ???????????????
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : iwContent
											});
									infowindow.open(map, marker);  
									// ????????? ?????????????????? ???????????????
									kakao.maps.event.addListener(marker, 'click', function() {
										  
										var markerDisplay = $('.markerInfo').css('display');
										if(markerDisplay =='block') {
											infowindow.close();
										}else{
											
									      // ?????? ?????? ?????????????????? ???????????????
									      infowindow.open(map, marker);  
										}
										
									});
								}
							});

			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

			// ????????? ?????? ?????? ???????????? ????????? ??????????????? ????????? ????????? ??????????????? ???????????? ???????????????
			kakao.maps.event.addListener(map, 'zoom_changed', function() {

				// ????????? ?????? ????????? ???????????????
				var level = map.getLevel();

				var message = '?????? ?????? ????????? ' + level + ' ?????????';
				var resultDiv = document.getElementById('result');

			});
		}
		
function markerInfoCheck(){
	
}		
	</script>



</body>
</html>