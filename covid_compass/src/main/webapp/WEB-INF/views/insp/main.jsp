<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>


<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
.card-title {
	font-weight: bold;
	color: #333333;
	font-size: 16px;
}
</style>
<script>
function printData(jsonArray, target, templateObject, removeClass){
	var template = Handlebars.compile(templateObject.html()); // templateObject를 json data로 받으면 마크업을 return하는 function. template로 반환
	
	var html = template(jsonArray); // 함수 template에 파라미터 jsonArray를 넣어서 실행하여 html 생성
	
	$(removeClass).remove(); // 해당 html요소를 append하기 전에 기존 내용 지우기. 안그러면 리스트 목록이 10개씩 보이는게 아니라 10, 20, 30개 등 클릭할때마다 10개씩 추가된다.
	
	target.append(html);
}

function printPagination(pageMaker, target, templateObject, removeClass){
	var pageNum = new Array(pageMaker.endPage-pageMaker.startPage+1);
	
	for(var i=0; i<pageMaker.endPage-pageMaker.startPage+1;i++){
		pageNum[i] = pageMaker.startPage + i;
	}
	
	pageMaker.pageNum = pageNum;
	pageMaker.prevPageNum = pageMaker.startPage - 1;
	pageMaker.nextPageNum = pageMaker.endPage + 1;
	
	var template = Handlebars.compile(templateObject.html());
	var html = template(pageMaker);
	target.html("").html(html);
	
}
</script>
</head>

<title></title>


<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<script>
Handlebars.registerHelper({
"prettifyDate" : function(timeValue){
	var dateObj = new Date(timeValue);
	var year = dateObj.getFullYear();
	var month = dateObj.getMonth() + 1;
	var date = dateObj.getDate();
	return year + "-" + month + "-" + date;
},
"fnRechkdYn" : function(rechkdYn){
	if(rechkdYn == "Y"){
		return "재검";
	}
	return "신규";
},
"signActive" : function(pageNum){
	if(pageNum == pstiListPage){
		return 'active';
	}
},
"chkSignActive" : function(pageNum){
	if(pageNum == chckdListPage){
		return 'active';
	}
},
"resSignActive" : function(pageNum){
	if(pageNum == resultListPage){
		return 'active';
	}
},
"styleActive" : function(pageNum){
	if(pageNum == pstiListPage){
		return 'background:#1a4f72; border-color:#1a4f72;';
	}else{
		return 'color:#1a4f72';
	}
},
"chkStyleActive" : function(pageNum){
	if(pageNum == chckdListPage){
		return 'background:#1a4f72; border-color:#1a4f72;';
	}else{
		return 'color:#1a4f72';
	}
},
"resStyleActive" : function(pageNum){
	if(pageNum == resultListPage){
		return 'background:#1a4f72; border-color:#1a4f72;';
	}else{
		return 'color:#1a4f72';
	}
},
"fnBadgeChk" : function(rechkdYn){
	if(rechkdYn == "Y"){
		return "success";
	}
	return "info";
},
"fnChkdPstv" : function(chkdYn, pstvYn){
	if(chkdYn == "Y"){
		if(pstvYn == "Y"){
			return "양성"
		}
		return "음성";
	}
	return "검사중";
}
});
</script>
<script>
var pstiListPage = 1;
var chckdListPage = 1;
var resultListPage = 1;

function makePstiForm(pageParam){
	var pstiListForm=$('#pstiListForm')
	
	if(!pageParam) pstiListPage = 1;
	
	pstiListPage = pageParam;
	
	pstiListForm.find("[name='page']").val(pstiListPage);
	pstiListForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
	
	return pstiListForm;
}
function makeChckdForm(pageParam){
	var chckdListForm=$('#chckdListForm')
	
	if(!pageParam) chckdListPage = 1;
	
	chckdListPage = pageParam;
	
	chckdListForm.find("[name='page']").val(chckdListPage);
	chckdListForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
	
	return chckdListForm;
}
function makeResultForm(pageParam){
	var resultListForm=$('#resultListForm')
	
	if(!pageParam) resultListPage = 1;
	
	resultListPage = pageParam;
	
	resultListForm.find("[name='page']").val(resultListPage);
	resultListForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
	
	return resultListForm;
}
function pstiListGo(pageParam,pstiListURL){
	getPstiList(pstiListURL, makePstiForm(pageParam));
}
function chckdListGo(pageParam,chckdListURL){
	getChckdList(chckdListURL, makeChckdForm(pageParam));
}
function resultListGo(pageParam,resultListURL){
	getResultList(resultListURL, makeResultForm(pageParam));
}
function getPstiList(handlebarsProcessingURL, form){
	$.ajax({
		url : handlebarsProcessingURL,
		type : 'post',
		dataType : 'json',
		data : form.serialize(),
		success: function(dataMap){
			printData(dataMap.pstiList, $('#psti-table-tbody'), $('#psti-template'), '.each-psti-element');
			printPagination(dataMap.pageMaker, $('#psti-list-pagination-ul'), $('#psti-pagination-template'), '.each-psti-pagination-element');
		},
		error : function(error){
			alert("error" + error.status);
		}
	})
}
function getChckdList(handlebarsProcessingURL, form){
	$.ajax({
		url : handlebarsProcessingURL,
		type : 'post',
		dataType : 'json',
		data : form.serialize(),
		success: function(dataMap){
			printData(dataMap.chckdList, $('#chckd-table-tbody'), $('#chckd-template'), '.each-chckd-element');
			printPagination(dataMap.pageMaker, $('#chckd-list-pagination-ul'), $('#chckd-pagination-template'), '.each-chckd-pagination-element');
		},
		error : function(error){
			alert("error" + error.status);
		}
	})
}
function getResultList(handlebarsProcessingURL, form){
	$.ajax({
		url : handlebarsProcessingURL,
		type : 'post',
		dataType : 'json',
		data : form.serialize(),
		success: function(dataMap){
			printData(dataMap.resultList, $('#result-table-tbody'), $('#result-template'), '.each-result-element');
			printPagination(dataMap.pageMaker, $('#result-list-pagination-ul'), $('#result-pagination-template'), '.each-result-pagination-element');
		},
		error : function(error){
			alert("error" + error.status);
		}
	})
}
function getPcrKitList(){
		$.ajax({
			url : '<%=request.getContextPath()%>/rest-insp/main-pcr-list',
			type : 'post',
			dataType : 'json',
			success: function(kitList){
				printData(kitList, $('#pcr-table-tbody'),$('#pcr-template'),'.each-pcr-element');
			},
			error : function(error){
				alert('error'+ error.status);
			}
		})
}
function getKitCount(){
	$.ajax({
		url : '<%=request.getContextPath()%>/rest-insp/main-kit-count',
		type : 'post',
		dataType : 'json',
		success : function(kitCount){
			$('#kitCount').html(kitCount);
		},
		error : function(error){
			alert("error" + error.status);
		}
	})
}
window.onload = function(){
	var pstiListURL = '<%=request.getContextPath()%>/rest-insp/main-psti-list';
	var chckdListURL = '<%=request.getContextPath()%>/rest-insp/main-chckd-list';
	var resultListURL = '<%=request.getContextPath()%>/rest-insp/main-result-list';
	
	pstiListGo(pstiListPage, pstiListURL);
	chckdListGo(chckdListPage, chckdListURL);
	resultListGo(resultListPage, resultListURL);
	
	
	$('ul.psti-pagination').on('click', 'li a', function(event){
		if($(this).attr("href")){
			page = $(this).attr("href");
			getPstiList(pstiListURL, makePstiForm(page));
		}
		return false;
	});
	
	$('ul.chckd-pagination').on('click', 'li a', function(event){
		if($(this).attr("href")){
			page = $(this).attr("href");
			getChckdList(chckdListURL, makeChckdForm(page));
		}
		return false;
	});
	
	$('ul.result-pagination').on('click', 'li a', function(event){
		if($(this).attr("href")){
			page = $(this).attr("href");
			getResultList(resultListURL, makeResultForm(page));
		}
		return false;
	});
	getPcrKitList();
	getKitCount();
}

</script>
	<div class="card" style="box-sizing: content-box; padding: 16px;">
	<div class="ddoing" style="height: 845px;">
	
	<!-- main psti list -->
	<%@include file="./main-psti-list-module-work.jsp"%>
		
		<div class="row" style="padding: 0px;">
			<!-- main chckd list -->
			<%@include file="./main-chckd-list-module-work.jsp" %>
			
			<!-- main result list -->
			<%@include file="./main-result-list-module-work.jsp" %>
			
		</div>

		<div class="row">
			<div class="card " style="width: 976px;">
				<div id="myCarousel" class="carousel slide" data-interval="false">
					<!-- Indicators -->

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">

							<canvas id="barChart"
								style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 644px;"
								width="644" height="250" class="chartjs-render-monitor"></canvas>
						</div>

						<div class="item">

							<canvas id="pieChart"
								style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 644px;"
								width="644" height="250" class="chartjs-render-monitor"></canvas>

						</div>

					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button" style="background-image: none;" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" style="background-image: none;" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			
			<div class="card" style="position: relative; left: 0px; top: 0px; width: 285px; margin-left: 17px;">
				<%@ include file="./main-pcrKit-module-work.jsp" %>
			</div>
			
		</div>
	</div>
</div>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
	<script type="text/javascript">
		var context = document.getElementById('barChart').getContext('2d');
		var myChart = new Chart(context, {
			type : 'bar', // 차트의 형태
			data : { // 차트에 들어갈 데이터
				labels : [
				//x 축
				'1일', '2일', '3일', '4일', '5일', '6일', '7일' ],
				datasets : [
						{ //데이터
							label : 'test1', //차트 제목
							fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
							data : [ 21, 19, 25, 20, 51, 26, 25 //x축 label에 대응되는 데이터 값
							],
							backgroundColor : [
							//색상
							'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [
							//경계선 색상
							'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						//경계선 굵기
						}, {
							label : 'test2',
							fill : false,
							data : [ 8, 34, 12, 24 ],
							backgroundColor : 'rgb(157, 109, 12)',
							borderColor : 'rgb(157, 109, 12)'
						} ]
			},
			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});

		const data = {
			labels : [ 'Red', 'Orange', 'Yellow', 'Green', 'Blue' ],
			datasets : [ {
				label : 'Dataset 1',
				data : [ 21, 19, 25, 20, 51 ], //x축 label에 대응되는 데이터 값

				backgroundColor : [
				//색상
				'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)' ],
				borderColor : [
				//경계선 색상
				'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)', ],
				borderWidth : 1
			} ]
		};

		var context1 = document.getElementById('pieChart').getContext('2d');
		var pieChart = new Chart(context1, {
			type : 'pie',
			data : data,
			options : {
				responsive : true,
				plugins : {
					legend : {
						position : 'right',
					},
					title : {
						display : true,
						text : 'Chart.js Pie Chart'
					}
				}
			},
		});
	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</body>


