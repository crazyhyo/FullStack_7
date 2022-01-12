<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="card card-success">
		<div class="card-header" style="background-color: #5bbc71;">
			<h3 class="card-title" style="color: white">기관등록</h3>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="">

					<!--end card-header  -->
					<div class="card-body">
						<form enctype="multipart/form-data" role="form" method="post"
							action="inst-regist" name="registForm">
							<div class="form-group">
								<label>담당자</label> <input type="text" id="writer"
									readonly="readonly" name="writer" class="form-control"
									value="관리자">
							</div>
							<div class="form-group">
								<label>기관</label> <br> <input id="insp" checked
									type="radio" name="inst" value="검사소">검사소&nbsp; <input
									id="pbhlth" type="radio" name="inst" value="보건소">보건소&nbsp;
								<input id="hspt" type="radio" name="inst" value="병원">병원&nbsp;
								<input id="ltctr" type="radio" name="inst" value="생활치료센터">생활치료센터

							</div>
							<div class="form-group">
								<div class="input-group" style="width: auto;">
									<input type="text" class="form-control float-left" placeholder="주소 검색" readonly="readonly">

									<div class="input-group-append">
										<button type="submit" class="btn btn-default">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="card card-outline card-secondary">
									<div class="card-header">
										<h5 style="display: inline; line-height: 40px;">첨부파일</h5>
										&nbsp;&nbsp;
									</div>
									<div class="card-footer fileInput">
										<input type="file" name="instFile" onchange="fileCheck()">
									</div>
								</div>
							</div>
						</form>

						<div>
							<button type="button"
								style="background: #5bbc71; color: #ffffff; border-color: #5b6f90;"
								class="btn btn-secondary" id="registBtn" onclick="regist_go();">등
								록</button>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button"
								style="background: #5bbc71; color: #ffffff; border-color: #5b6f90;"
								class="btn" id="cancelBtn" onclick="CloseWindow();">취 소</button>
						</div>
					</div>
					<!--end card-body  -->
					<!--end card-footer  -->
				</div>
				<!-- end card -->
			</div>
			<!-- end col-md-6 -->
		</div>
		<!-- end row -->

	</div>
	<script>
 		$('input[name="inst"]').click(function(){

 			$('input[name="inst"]').attr("checked",false);
 			$(this).attr("checked",true);
		})

		function fileCheck(){
			var files=$('input[name="uploadFile"]');
			for(var file of files){
				//alert(file.value);
				var fileType = file.value.substr(file.value.lastIndexOf(".")+1).toUpperCase();
				//alert(fileType);
				if(!(file.value=="")){
					if(!(fileType=="XLSX")){
						alert("파일은 xlsx 형식만 가능합니다.");
						file.value="";
						return;
					}
				}
			}
		}


		function regist_go(){
			var files=$('input[name="uploadFile"]');
			for(var file of files){
				if(file.value==""){
					alert("파일을 선택하세요");
					file.focus();
					file.click();
					return;
				}
			}
			//구현때

			/* var writer = $('form[role="form"] input[name="writer"]');

			alert("writer:"+writer.val()); */

			document.registForm.submit();

			/* var form = $('form[role="form"]');
			form.submit(); */

		}

	</script>

</body>
</html>