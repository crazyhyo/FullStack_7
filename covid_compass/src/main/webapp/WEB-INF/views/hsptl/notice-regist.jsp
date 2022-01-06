<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head></head>

<title></title>

<body class="hold-transition sidebar-mini">
	<div class="wrapper" style="background: #ffffff;">
		<div class="card card-success">
			<div class="card-header" style="background-color: #5b6f90;">
				<h3 class="card-title">공지사항 게시판</h3>
			</div>
			<!-- Main content -->

			<div class="row">
				<div class="col-md-12">
					<div class="card card-outline card-info">
						<div class="card-header">
							<h3 class="card-title">게시글 등록</h3>
						</div>
						<!-- /.card-header -->


						<div class="col-md-12">


							<div class="card-body">
								<div class="form-group">
									<label for="inputName">제목</label> <input type="text"
										id="inputName" class="form-control">
								</div>

								<div class="form-group">
									<label for="inputStatus">상태</label> <select id="inputStatus"
										class="form-control custom-select">
										<option>일반</option>
										<option>긴급</option>
									</select>
								</div>

								<div class="form-group">
									<label for="inputDescription">내용</label>
									<textarea id="summernote"></textarea>
								</div>

								<div class="form-group" style="border: none;">
									<label for="inputClientCompany">파일 첨부</label> <input
										type="file" id="inputFile"
										style="border: none; display: block;">
								</div>

								<div class="form-group" style="border: none; text-align: right;">
									<button class="btn btn-primary">등록</button>
									<button class="btn btn-warning" style="margin-left: 1%;">리셋</button>
									<button class="btn btn-danger" style="margin-left: 1%;">취소</button>
								</div>

							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>

				</div>

			</div>
		</div>
		<!-- /.col-->
	</div>

	<!-- /.content-wrapper -->




</body>
