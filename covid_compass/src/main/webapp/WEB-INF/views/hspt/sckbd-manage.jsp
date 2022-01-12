 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<div class="card">
	<div class="card" style="margin:1px;">
		<div class="card-header center" style="background: #5b6f90; color: white;">
			<h3 class="card-title">병상 관리</h3>
		</div>
	<div class="card-header border-0">

	  <div class="card-tools">
		<a href="#" class="btn btn-tool btn-sm">
		  <i class="fas fa-download"></i>
		</a>
		<a href="#" class="btn btn-tool btn-sm">
		  <i class="fas fa-bars"></i>
		</a>
	  </div>
	</div>
	<div class="card-body table-responsive p-0">
	  <table class="table table-striped table-valign-middle">
		<thead>
		<tr>
		  <th>병원이름</th>
		  <th>전체병상</th>
		  <th>잔여병상</th>
		  <th>수정</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		  <td>
			병원
		  </td>
		  <td>600</td>
		  <td>
			<small class="text-success mr-1">
			  <i class="fas fa-arrow-up"></i>
			  12%
			</small>
			300
		  </td>

		  <td>
			<a href="#" class="text-muted">
			  <i class="fas fa-search"></i>
			</a>
		  </td>
		</tr>
		</tbody>
	  </table>
	</div>
  </div>
  <div class="card-header" style="background-color: #5b6f90; color:white;">
			<h3 class="card-title">통계</h3>
		</div>

        <div class="card-body " style="display: block;">
			<div class="row">
				<div class="col-md-6">
					<div class="chart">
						<div class="chartjs-size-monitor ">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 644px;" width="644" height="250" class="chartjs-render-monitor"></canvas>
					</div>
				</div>
				<div class="col-md-6">
					<div class="chart-responsive">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="pieChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 644px;" width="644" height="250" class="chartjs-render-monitor"></canvas>
					</div>
					<!-- ./chart-responsive -->
				</div>
				<!-- /.row -->
			</div>

		</div>
		<!-- /.card-body -->
  <!-- /.card -->
</div>
<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard3.js"></script>

<script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
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

</body>
</html>
