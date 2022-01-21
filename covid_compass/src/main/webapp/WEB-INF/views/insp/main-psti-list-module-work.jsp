<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/x-handlebars-template" id="psti-template">
{{#each .}}
	<tr onclick="OpenWindow('psti-regist-form?pstiNo={{pstiNo}}','','1200','750');" style="cursor:pointer;" class="each-psti-element" data-psti-no="{{pstiNo}}">
		<td><span class="badge badge-{{fnBadgeChk rechkdYn}}">{{fnRechkdYn rechkdYn}}</span></td>
		<td>{{pstiNm}}</td>
		<td class="dtr-control sorting_1" tabindex="0">{{prettifyDate wrtYmd}}</td>
		<td>{{age}}</td>
		<td class="dtr-control sorting_1" tabindex="0">{{prettifyDate bir}}</td>
		<td>{{pstiTelno}}</td>
	</tr>	
{{/each}}
</script>
<script type="text/x-handlebars-template" id="psti-pagination-template">
	<li class="page-item each-psti-pagination-element">
		<a class="page-link" href="1">
			<i class="fas fa-angle-double-left" style="color:#1a4f72;"></i>
		</a>
	</li>

	<li class="page-item each-psti-pagination-element">
		<a class="page-link" href="{{#if prev}}{{prevPageNum}}{{/if}}">
			<i class="fas fa-angle-left" style="color:#1a4f72;"></i>
		</a>
	</li>
	
	{{#each pageNum}}
		<li class="page-item each-psti-pagination-element {{signActive this}}" >
			<a class="page-link" style="{{styleActive this}}" href="{{this}}">
				{{this}}
			</a>
		</li>
	{{/each}}
	
	<li class="page-item each-psti-pagination-element">
		<a class="page-link" href="{{#if next}}{{nextPageNum}}{{/if}}">
			<i class="fas fa-angle-right" style="color:#1a4f72;"></i>
		</a>
	</li>

	<li class="page-item each-psti-pagination-element">
		<a class="page-link href="{{realEndPage}}">
			<i class="fas fa-angle-double-right" style="color:#1a4f72;"></i>
		</a>
	</li>
</script>

<div class="row">
	<div class="card col-md-12 p-0"
		style="position: relative; left: 0px; top: 0px;">
		<div class="card-header ui-sortable-handle">
			<h3 class="card-title">
				<i class="ion ion-clipboard mr-1"></i> 피검자 리스트
			</h3>
	
			<div class="card-tools">
				<ul class="psti-pagination pagination pagination-sm" id="psti-list-pagination-ul">
				</ul>
			</div>
		</div>
		<form id="pstiListForm">
			<input type='hidden' name="page" value="" />
			<input type='hidden' name="perPageNum" value="" />
		</form>
		<!-- /.card-header -->
		<div class="card-body" style="padding: 0px;">
			<div class="table-responsive">
				<table class="table table-hover text-nowrap"
					style="text-align: center;">
					<thead>
						<tr role="row">
							<th tabindex="0" aria-controls="example2" rowspan="1"
								style="text-align: center;" colspan="1" aria-label="">구분</th>
							<th tabindex="0" aria-controls="example2" rowspan="1"
								style="text-align: center;" colspan="1" aria-label="">성명</th>
							<th tabindex="0" aria-controls="example2" rowspan="1"
								style="text-align: center;" colspan="1" aria-sort="ascending"
								aria-label="">문진표 작성일</th>
							<th tabindex="0" aria-controls="example2" rowspan="1"
								style="text-align: center;" colspan="1" aria-label="">나이</th>
							<th tabindex="0" aria-controls="example2" rowspan="1"
								style="text-align: center;" colspan="1" aria-label="">생년월일</th>
							<th tabindex="0" aria-controls="example2" rowspan="1"
								style="text-align: center;" colspan="1" aria-label="">전화번호</th>
						</tr>
					</thead>
					<tbody id="psti-table-tbody">
						<tr class="each-psti-element">
							<td colspan="6">페이지 로딩중 입니다.</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- /.card-body -->
	</div>
</div>