<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/x-handlebars-template" id="isoptnt-template">
{{#each .}}
	<tr class="each-isoptnt-element">
		<td><a href="pages/examples/invoice.html">{{pstiNm}}</a></td>
		<td>{{age}}</td>
		<td>{{fnGender gender}}</td>
		<td>{{pstiTelno}}</td>
		<td>{{prettifyDate inYmd}}</td>
		<td>{{instNm}}</td>
	</tr>
{{/each}}
</script>
<script type="text/x-handlebars-template" id="isoptnt-pagination-template">
	<li class="page-item each-isoptnt-pagination-element">
		<a class="page-link" href="1">
			<i class="fas fa-angle-double-left" style="color:#1a4f72;"></i>
		</a>
	</li>

	<li class="page-item each-isoptnt-pagination-element">
		<a class="page-link" href="{{#if prev}}{{prevPageNum}}{{/if}}">
			<i class="fas fa-angle-left" style="color:#1a4f72;"></i>
		</a>
	</li>
	
	{{#each pageNum}}
		<li class="page-itemeach-isoptnt-pagination-element {{isoptntSignActive this}}" >
			<a class="page-link" style="{{isoptntStyleActive this}}" href="{{this}}">
				{{this}}
			</a>
		</li>
	{{/each}}
	
	<li class="page-item each-isoptnt-pagination-element">
		<a class="page-link" href="{{#if next}}{{nextPageNum}}{{/if}}">
			<i class="fas fa-angle-right" style="color:#1a4f72;"></i>
		</a>
	</li>

	<li class="page-item eeach-isoptnt-pagination-element">
		<a class="page-link href="{{realEndPage}}">
			<i class="fas fa-angle-double-right" style="color:#1a4f72;"></i>
		</a>
	</li>
</script>
<div class="card" style="position: relative; left: 0px; top: 0px; width: 850px;">
					<div class="card-header ui-sortable-handle" style="cursor: move;">
						<h3 class="card-title">
							<i class="ion ion-clipboard mr-1"></i> 입소자 리스트
						</h3>

						<div class="card-tools">
							<ul class="isoptnt-pagination pagination pagination-sm" id="isoptnt-pagination-ul">
						</ul>
						</div>
					</div>
					<form id="isoptntListForm">
						<input type='hidden' name="page" value="" />
						<input type='hidden' name="perPageNum" value="" />
						<input type='hidden' name="searchType" value="" />
						<input type='hidden' name="keyword" value="" />
					</form>
					<div class="card-body" style="padding: 0px;">
						<div class="table-responsive">
							<table class="table m-0" style="text-align: center;">
								<thead>
									<tr>
										<th style="text-align: center;">성명</th>
										<th style="text-align: center;">나이</th>
										<th style="text-align: center;">성별</th>
										<th style="text-align: center;">연락처</th>
										<th style="text-align: center;">입소일자</th>
										<th style="text-align: center;">신청기관</th>
									</tr>
								</thead>
								<tbody id="isoptnt-table-tbody">
									<tr class="each-isoptnt-element">
										<td colspan="6">페이지 로딩중 입니다.</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>

				</div>