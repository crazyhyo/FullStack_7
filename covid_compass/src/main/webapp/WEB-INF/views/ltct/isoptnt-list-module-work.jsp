<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template" id="isoptnt-template">
{{#each .}}
	<tr onclick="showDetail('{{manageNo}}')" class="each-isoptnt-element" data-manage-no="{{manageNo}}">
		<td onclick="event.cancelBubble=true"><input type="checkbox" name="checkSmple" onclick="cancleAll()" value="{{manageNo}}"></td>
		<td><span class="badge badge-{{fnFeverBadge bdtemp}}">{{bdtemp}}</span></td>
		<td>{{pstiNm}}</td>
		<td>{{age}}</td>
		<td>{{fnGender gender}}</td>
		<td>{{pstiTelno}}</td>
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
		<li class="page-item each-isoptnt-pagination-element {{signActive this}}" >
			<a class="page-link" style="{{styleActive this}}" href="{{this}}">
				{{this}}
			</a>
		</li>
	{{/each}}
	
	<li class="page-item each-isoptnt-pagination-element">
		<a class="page-link" href="{{#if next}}{{nextPageNum}}{{/if}}">
			<i class="fas fa-angle-right" style="color:#1a4f72;"></i>
		</a>
	</li>

	<li class="page-item each-isoptnt-pagination-element">
		<a class="page-link href="{{realEndPage}}">
			<i class="fas fa-angle-double-right" style="color:#1a4f72;"></i>
		</a>
	</li>
</script>
<script>
Handlebars.registerHelper({
"signActive" : function(pageNum){
	if(pageNum == page){
		return 'active';
	}
},
"styleActive" : function(pageNum){
	if(pageNum == page){
		return 'background:#1a4f72; border-color:#1a4f72;';
	}else{
		return 'color:#1a4f72';
	}
},
"fnFeverBadge" : function(bdtemp){
	if(bdtemp < 37.2){
		return "success";
	}else if(bdtemp < 37.9){
		return "warning";
	}
	return "danger";
},
"fnGender" : function(gender){
	if(gender == "M"){
		return "남";
	}
	return "여";
},
"fnPstvYn" : function(chkdYn, pstvYn){
	if(chkdYn == "Y"){
		if(pstvYn == "Y"){
			return "양성";
		}
		return "음성";
	}
	return "검사중"
}
});
</script>
<script>
var page = 1;

window.onload = function(){
	var url = '<%=request.getContextPath()%>/rest-ltct/isoptnt-list';
	list_go(page, url);
	$('ul.pagination').on('click', 'li a', function(event){
		if($(this).attr("href")){
			page = $(this).attr("href");
			getPage(url, make_form(page));
		}
		return false;
	});
}

function make_form(pageParam){
	var jobForm=$('#jobForm')
	
	if(!pageParam) page = 1;
	
	page = pageParam;
	
	jobForm.find("[name='page']").val(page);
	jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
	jobForm.find("[name='searchType']").val($('select[name="searchType"]').val());
	jobForm.find("[name='keyword']").val($('div.input-group>input[name="keywrod"]').val());
	
	return jobForm;
}

function list_go(pageParam, url){
	getPage(url, make_form(pageParam));
}

function getPage(handlebarsProcessingURL, form){
	$.ajax({
		url : handlebarsProcessingURL,
		type : 'post',
		dataType : 'json',
		data : form.serialize(),
		success : function(dataMap){
			printData(dataMap.chckdList, $('#isoptnt-table-tbody'), $('#isoptnt-template'), '.each-isoptnt-element');
			printPagination(dataMap.pageMaker, $('#isoptnt-pagination-ul'), $('#isoptnt-pagination-template'), '.each-isoptnt-pagination-element');
		},
		error : function(error){
			alert('error' + error.status);
		}
	})
}
function printData(jsonArray, target, templateObject, removeClass){
	var template = Handlebars.compile(templateObject.html());
	
	var html = template(jsonArray);
	
	$(removeClass).remove();
	
	target.append(html);
}

function printPagination(pageMaker, target, templateObject, removeClass){
	var pageNum = new Array(pageMaker.endPage-pageMaker.startPage+1);
	
	for(var i = 0; i < pageMaker.endPage-pageMaker.startPage+1;i++){
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
<section class="content">
		<div style="height: 640px;">
				<div class="table-responsive">
					<table class="table table-hover text-nowrap"
								style="text-align: center; margin-top: 10px;">
								<thead>
									<tr role="row">
										<th style="width: 10%;"><input id="all" type="checkbox" onclick="checkAllBox()" name="all"></th>
										<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">체온</th>
										<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="">성명</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"  colspan="1" aria-sort="ascending" aria-label="">나이</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"  colspan="1" aria-label="">성별</th>
										<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="">연락처</th>
										
											
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
		<div class="card-footer clearfix" style="background-color: white;">
			<ul class="pagination justify-content-center m-0" id="isoptnt-pagination-ul">
		</ul>
		</div>
		<form id="jobForm">
			<input type='hidden' name="page" value="" />
			<input type='hidden' name="perPageNum" value="" />
			<input type='hidden' name="searchType" value="" />
			<input type='hidden' name="keyword" value="" />
		</form>
</section>