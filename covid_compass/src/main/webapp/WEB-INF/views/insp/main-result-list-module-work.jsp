<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/x-handlebars-template" id="result-template">
{{#each .}}
	<tr class="each-result-element" data-psti-no="{{pstiNo}}">
		<td><span class="badge badge-{{fnBadgeChk chkdYn pstvYn}}">{{fnChkdPstv chkdYn pstvYn}}</span></td>
		<td>{{pstiNm}}</td>
		<td>{{prettifyDate htscYmd}}</td>
	</tr>
{{/each}}
</script>
<script type="text/x-handlebars-template" id="result-pagination-template">
	<li class="page-item each-result-pagination-element">
		<a class="page-link" href="1">
			<i class="fas fa-angle-double-left" style="color:#1a4f72;"></i>
		</a>
	</li>

	<li class="page-item each-result-pagination-element">
		<a class="page-link" href="{{#if prev}}{{prevPageNum}}{{/if}}">
			<i class="fas fa-angle-left" style="color:#1a4f72;"></i>
		</a>
	</li>
	
	{{#each pageNum}}
		<li class="page-item each-result-pagination-element {{resSignActive this}}" >
			<a class="page-link" style="{{resStyleActive this}}" href="{{this}}">
				{{this}}
			</a>
		</li>
	{{/each}}
	
	<li class="page-item each-result-pagination-element">
		<a class="page-link" href="{{#if next}}{{nextPageNum}}{{/if}}">
			<i class="fas fa-angle-right" style="color:#1a4f72;"></i>
		</a>
	</li>

	<li class="page-item each-result-pagination-element">
		<a class="page-link href="{{realEndPage}}">
			<i class="fas fa-angle-double-right" style="color:#1a4f72;"></i>
		</a>
	</li>
</script>
<div class="card"
				style="width: 394px; height: 277px; margin-top: 11px; margin-left: 16px; margin-bottom: 20px;">
				<!-- <div class="card col-md-5"
               style="position: relative; left: 0px; top: 0px;"> -->
				<div class="card-header ui-sortable-handle">
					<h3 class="card-title">
						<i class="ion ion-clipboard mr-1"></i> 검사결과
					</h3>

					<div class="card-tools">
						<ul class="result-pagination pagination pagination-sm" id="result-list-pagination-ul">
						</ul>
					</div>
				</div>
				<form id="resultListForm">
					<input type='hidden' name="page" value="" />
					<input type='hidden' name="perPageNum" value="" />
				</form>
				<!-- /.card-header -->
				<div class="card-body" style="padding: 0px;">
					<div class="table-responsive">
						<table class="table m-0" style="text-align: center;">
							<thead>
								<tr>
									<th style="text-align: center;">검사결과</th>
									<th style="text-align: center;">성명</th>
									<th style="text-align: center;">검사일자</th>
								</tr>
							</thead>
							<tbody id="result-table-tbody">
								<tr class="each-result-element">
									<td colspan="3">페이지 로딩중 입니다.</td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card-header -->
			<!-- /.card-body -->