<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head></head>

<title></title>

<body>
	<div class="card card-success">
		<div class="card-header" style="background-color: #5b6f90;">
			<h3 class="card-title">PCR키트 등록</h3>
		</div>
		<div class="card-body ">
			<div class="row">
				<input class="form-control form-control-lg col-md-4" type="number"
					placeholder="kit input" />
				<button type="button"
					class="btn btn-block btn-primary btn-sm col-md-1"
					style="height: 48px;">등록</button>
				<i class="fas fa-medkit fa-3x"
					style="margin-left: 130px; color: #c2c7d0;"></i> <span
					class="col-md-2" style="font-size: 36px; color: #6c757d;">&nbsp;&nbsp;500개</span>
			</div>

		</div>
		
		<div class="card-header" style="background-color: #5b6f90;">
			<h3 class="card-title">사용현황</h3>
		</div>
		
		<div class="card-body">
			<div class="table-responsive">
				<table class="table m-0" style="text-align: center;">
					<thead>
						<tr role="row">
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" class="col-md-4"
								aria-label="Browser: activate to sort column ascending">누적수량</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" class="col-md-4"
								aria-label="Browser: activate to sort column ascending">사용수량</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" class="col-md-4"
								aria-label="Platform(s): activate to sort column ascending">사용률</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>500</td>
							<td>500</td>
							<td>100%</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<div class="card-header" style="background-color: #5b6f90;">
			<h3 class="card-title">History</h3>
		</div>
		
		<div class="card-body">
			<div class="table-responsive">
				<table class="table m-0" style="text-align: center;">
					<thead>
						<tr role="row">
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" class="col-md-4"
								aria-label="Browser: activate to sort column ascending">등록일</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" class="col-md-4"
								aria-label="Browser: activate to sort column ascending">이름</th>
							<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" class="col-md-4"
								aria-label="Platform(s): activate to sort column ascending">수량</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>홍길동</td>
							<td>500</td>
						</tr>
						<tr>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>홍길동</td>
							<td>500</td>
						</tr>
						<tr>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>홍길동</td>
							<td>500</td>
						</tr>
						<tr>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>홍길동</td>
							<td>500</td>
						</tr>
						<tr>
							<td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate
									value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-01</td>
							<td>홍길동</td>
							<td>500</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- /.card-body -->
	</div>

</body>