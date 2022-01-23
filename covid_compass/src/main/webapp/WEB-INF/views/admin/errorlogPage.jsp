<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section class="content">
		<div style="height: 683px;">
			<div class="card" style="margin: 1px; margin-top: 13px;">

				<div class="card-body" style="height: 70px; padding-bottom: 0px;">

					<!-- search bar -->
					<button type="button" class="btn btn-primary"
						style="background: #1a4f72; border: 0px; width: 90px;" onclick="">다운로드</button>
					<button type="button" class="btn btn-primary"
						style="background: #1a4f72; border: 0px; width: 90px;" onclick="">삭제</button>

					<div class="input-group  float-right" style="max-width: 600px;">
						<!-- sort num -->
						<select class="form-control " name="perPageNum" id="perPageNum"
							onchange="list_go(1);">
							<option value="10">정렬개수</option>
							<option value="2"
								${pageMaker.cri.perPageNum == 2 ? 'selected':''}>2개씩</option>
							<option value="3"
								${pageMaker.cri.perPageNum == 3 ? 'selected':''}>3개씩</option>
							<option value="5"
								${pageMaker.cri.perPageNum == 5 ? 'selected':''}>5개씩</option>
						</select>

						<!-- search bar -->
						<select class="form-control " name="searchType" id="searchType">
							<option value=""
								${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
							<option value="l"
								${pageMaker.cri.searchType eq 'l' ? 'selected':''}>레벨</option>
							<option value="d"
								${pageMaker.cri.searchType eq 'd' ? 'selected':''}>구분</option>
							<option value="n"
								${pageMaker.cri.searchType eq 'n' ? 'selected':''}>파일이름</option>
							<option value="p"
								${pageMaker.cri.searchType eq 'p' ? 'selected':''}>IP</option>
						</select>

						<!-- keyword -->
						<input class="form-control" type="text" name="keyword"
							placeholder="검색어를 입력하세요." value="${pageMaker.cri.keyword }"
							style="width: 18%; display: inline-block;" /> <span
							class="input-group-append">
							<button class="btn btn-primary" type="button" id="searchBtn"
								style="background: #1a4f72; color: #ffffff; border-color: #1a4f72; display: inline-block; margin-bottom: 4px; margin-left: -7px;"
								data-card-widget="search" onclick="">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
						<!-- end : search bar -->
					</div>
				</div>

				<div class="card col-md-12"
					style="position: relative; left: 0px; top: 0px; margin-bottom: 0px;">
					<div class="card-header ui-sortable-handle" style="cursor: move;">


					</div>
					<!-- /.card-header -->
					<div class="card-body" style="padding: 0px;">
						<div class="table-responsive">
							<table class="table table-hover text-nowrap"
								style="text-align: center;">
								<thead>
									<tr role="row">
										<th style="width: 5%;"><input type="checkbox"
											id="selectAll" onclick="selectAll()"></th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">레벨</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">구분</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">파일
											이름</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">클라이언트
											IP</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											style="text-align: center;" colspan="1" aria-label="">생성일
										</th>
									</tr>
								</thead>
								<tbody>

									<tr data-psti-no="${pstiNo }"
										onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
										style="cursor: pointer;">
										<td onclick="event.cancelBubble=true" style="cursor: default;"><input
											type="checkbox" name="inst" onclick="cancleAll()"></td>
										<td><span class="badge badge-primary">emerg</span></td>
										<td>500</td>
										<td>abc.csv</td>
										<td>000.0.0.0</td>
										<td>2022-01-13 13:56</td>
									</tr>
									<tr data-psti-no="${pstiNo }"
										onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
										style="cursor: pointer;">
										<td onclick="event.cancelBubble=true" style="cursor: default;"><input
											type="checkbox" name="inst" onclick="cancleAll()"></td>
										<td><span class="badge badge-primary">alert</span></td>
										<td>500</td>
										<td>abc.csv</td>
										<td>000.0.0.0</td>
										<td>2022-01-13 13:56</td>
									</tr>
									<tr data-psti-no="${pstiNo }"
										onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
										style="cursor: pointer;">
										<td onclick="event.cancelBubble=true" style="cursor: default;"><input
											type="checkbox" name="inst" onclick="cancleAll()"></td>
										<td><span class="badge badge-primary">crit</span></td>
										<td>500</td>
										<td>abc.csv</td>
										<td>000.0.0.0</td>
										<td>2022-01-13 13:56</td>
									</tr>
									<tr data-psti-no="${pstiNo }"
										onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
										style="cursor: pointer;">
										<td onclick="event.cancelBubble=true" style="cursor: default;"><input
											type="checkbox" name="inst" onclick="cancleAll()"></td>
										<td><span class="badge badge-primary">error</span></td>
										<td>500</td>
										<td>abc.csv</td>
										<td>000.0.0.0</td>
										<td>2022-01-13 13:56</td>
									</tr>
									<tr data-psti-no="${pstiNo }"
										onclick="OpenWindow('psti-registform?pstiInnb=${pstiReadyListVO.pstiInnb}','','1200','750');"
										style="cursor: pointer;">
										<td onclick="event.cancelBubble=true" style="cursor: default;"><input
											type="checkbox" name="inst" onclick="cancleAll()"></td>
										<td><span class="badge badge-primary">warn</span></td>
										<td>500</td>
										<td>abc.csv</td>
										<td>000.0.0.0</td>
										<td>2022-01-13 13:56</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
					<div class="card-footer clearfix" style="background: white;">
						<%@ include file="../template/list-footer.jsp"%>
					</div>
				</div>
				<!-- /.card-body -->
			</div>
		</div>

	</section>
	<script>
		function selectAll(checkBox){
			var length = document.getElementsByName("inst").length;
			if(document.getElementById('selectAll').checked==true){
				for(var i=0; i<length; i++) document.getElementsByName("inst")[i].checked=true;
			}

			if(document.getElementById('selectAll').checked==false){
				for(var i=0; i<length; i++) document.getElementsByName("inst")[i].checked=false;
			}


		}
				function cancleAll(){

			if(document.getElementById('selectAll').checked==true){
				document.getElementById('selectAll').checked=false;
			}
		}
</script>
</body>
</html>