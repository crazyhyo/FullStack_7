<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
table tr td {
	overflow: hidden;
	white-space: initial;
	text-overflow: ellipsis;
	-webkit-box-orient: vertical;
	word-break: break-all;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="hspt-bookmark-list-template" >
{{#each .}}
          <tr style="cursor: pointer;
			data-inst-no="{{instNo}}" data-manage-no="{{manageNo}}" data-hspt-no="{{hsptNo}}"
            onclick="showDetail('{{hsptNo}}', '{{instAdres}}')"
            class="each-hspt-element">
            <td style="text-align: left;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;">{{instNm}}</td>
            <td style="text-align: left;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;" data-adres-map="{{instAdres}}">{{instAdres}}</td>
            <td>{{rmndSckbdCnt}}/{{sckbdCnt}}</td>
            <td><span class="badge badge-{{fnBadge opRate}}" style="width: 35px;">{{opRate}}%</span></td>
          </tr>
{{/each}}
</script>
<script type="text/x-handlebars-template"  id="inptnt-pagination-template" >
    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="1"> <i class="fas fa-angle-double-left" style="color:#1a4f72;"></i>
    </a></li>
    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="{{#if prev}}{{prevPageNum}}{{/if}}"> <i class="fas fa-angle-left" style="color:#1a4f72;"></i>
    </a></li>

{{#each pageNum}}
    <li class="page-item each-inptnt-pagination-element {{signActive this}}" ><a class="page-link" href="{{this}}" >{{this}}</a></li>
{{/each}}

    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="{{#if next}}{{nextPageNum}}{{/if}}"> <i class="fas fa-angle-right" style="color:#1a4f72;"></i>
    </a></li>
    <li class="page-item each-inptnt-pagination-element"><a class="page-link" href="{{realEndPage}}"> <i class="fas fa-angle-double-right" style="color:#1a4f72;"></i>
</a></li>
</script>

<script>
Handlebars.registerHelper({
"prettifyDate" : function(timeValue){
  var dateObj = new Date(timeValue);
  var year = dateObj.getFullYear();
  var month = dateObj.getMonth() + 1;
  var date = dateObj.getDate();
  return year + "-" + month + "-" + date;
},
"signActive" : function(pageNum){
  if(pageNum == page) return 'active';
},
"fnBadge" : function(opRate){
	if(opRate > 79){
		return "danger";
	}
	if(opRate < 71){
		return "primary";
	}
	else{
		return "warning";
	}
}
});
</script>

<script>

var page = 1;

var targetId = '';

var pagenationId = '';

var instNm ="";

var sckbdCnt ="";

var url = '<%=request.getContextPath() %>/rest-pbht/hspt-bookmark-list';
window.onload = function(){
 	
	addEvnetWaitTab();
	addEvnetReqTab();
  list_go(url, page, targetId, pagenationId);
	$('ul.pagination').on('click','li a',function(event){
		if($(this).attr("href")) {
			page=$(this).attr("href");
			getPage(url, make_form(page), targetId, pagenationId);
		}
		
		return false;
	});
}
function make_form(pageParam, search){
	var jobForm=$('#jobForm');
		  
 	if(!pageParam) page = 1;
  
  	page = pageParam;
  
	jobForm.find("[name='page']").val(page);
	jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
//  jobForm.find("[name='perPageNum']").val(2);
 
	if(search){
		jobForm.find("[name='searchType']").val($('select[name="searchType"]').val());
	  	jobForm.find("[name='keyword']").val($('#keywordId').val());
	}
  
  return jobForm;
}

function list_go(url, pageParam, targetId, pagenationId, search){
	
	
  getPage(url, make_form(pageParam, search), targetId, pagenationId);
}

function getPage(handelbarsProcessingURL, form, targetId, pagenationId){
	
	
	if(!targetId) targetId='#hspt-bookmark-list-table-tbody';
	if(!pagenationId) pagenationId = '#inptnt-list-pagination-ul';
	
	
	$.ajax({
    url : handelbarsProcessingURL,
    type : 'get',
    dataType : 'json',
    data : form.serialize(),
    success : function(dataMap){
    	
    	$(targetId).html("");
    	
     	if(dataMap.dhbList.length == 0){
     		
     		$(targetId).html('<tr class="each-smpl-element" ><td colspan="5" class="dgnssHsptList">????????? ????????? ?????????.</td></tr>');
	    	$('.dgnssHsptList').html("???????????? ????????????.");
	    	
	    	dataMap.pageMaker.endPage = 1;
	     	printPagination(dataMap.pageMaker, $(pagenationId), $('#inptnt-pagination-template'), '.each-inptnt-pagination-element');
	     	initKakaoMap(dataMap.dhbList, dataMap.psti.pstiAdres);
    	}else{
    		
    		console.log(dataMap.pageMaker.startPage);
    		console.log(dataMap.pageMaker.endPage);
    		console.log(dataMap.pageMaker.realEndPage);
		    printData(dataMap.dhbList, $(targetId), $('#hspt-bookmark-list-template'), '.each-hspt-element');
		    printPagination(dataMap.pageMaker, $(pagenationId), $('#inptnt-pagination-template'), '.each-inptnt-pagination-element');
		    initKakaoMap(dataMap.dhbList, dataMap.psti.pstiAdres);
    	}
    },
    error : function(error){
      alert('error' + error.status);
    }
  })
 }



//jsonArray??? ResponseEntity?????? ????????? List??? ???????????? ??????
//target??? handlebars??? ????????? ???????????? append??? ???????????? jquery???????????? ??????????????? ??? ?????? ?????? tbody??? id??? ?????? target?????? ?????????.
//templateObject??? handlebars??? ???????????? ?????? ??????????????? jquery????????????.
//removeClass??? append???????????? ????????? ?????? ?????????<???????????? handlebars??? ?????? ?????? ??????>??? ????????? ????????? '.(???????????????)'??? ?????????.
//?????? ????????? templateObject?????? handlebars??? ?????? ?????? ????????? ????????? class??? ????????? ??????. ???????????? .each-inptnt-element??????,
//tr????????? ????????????.
function printData(jsonArray, target, templateObject, removeClass) {

		// templateObject??? json data??? ????????? ???????????? return?????? function template??? ????????????.
		var template = Handlebars.compile(templateObject.html());

		// ?????? template??? ???????????? jsonArray??? ????????? ???????????? html??? ????????????.
		var html = template(jsonArray);

		// ?????? html????????? append?????? ?????? ????????? ?????? ????????? ?????????. (???????????? ????????? ????????? 10????????? ????????? ??? ????????? 10???, 20???, 30??? ??? ????????? ????????? ????????? 10?????? ???????????????)
		$(removeClass).remove();

		// html????????? append??????.
		target.append(html);
	}

function printPagination(pageMaker, target, templateObject, removeClass) {

	var pageNum = new Array(pageMaker.endPage - pageMaker.startPage + 1);

	for (var i = 0; i < pageMaker.endPage - pageMaker.startPage + 1; i++) {
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



<script>
function addEvnetWaitTab(){
	var dgnssWaitTab = $('#custom-hspt-bookmark-list-tab');
	dgnssWaitTab.on('click',function(){
		$('#jobForm').find("[name='typeCode']").val("");
		$("#searchType option:eq(0)").prop("selected", true);
		$('#jobForm').find("[name='searchType']").val("");
		$('#keywordId').val("");
		targetId = "#hspt-bookmark-list-table-tbody";
		pagenationId = "#inptnt-list-pagination-ul";
		page = 1;
		list_go(url, page, targetId, pagenationId);
	})
}

function addEvnetReqTab(){
	var dgnssReqTab = $('#custom-hspt-all-list-tab');
	dgnssReqTab.on('click',function(){
		$('#jobForm').find("[name='typeCode']").val("all");
		$("#searchType option:eq(0)").prop("selected", true);
		$('#jobForm').find("[name='searchType']").val("");
		$('#keywordId').val("");
		targetId = "#hspt-all-list-table-tbody";
		pagenationId = "#inptnt-all-pagination-template";
		page = 1;
		list_go(url, page, targetId, pagenationId);
	})
}
function showDetail(hsptNo, instAdres){
	
	var trs = $('tr.each-hspt-element');
	 
	trs.removeClass('on');
	 
	var target = $('tr[data-hspt-no="'+hsptNo+'"]');
	 
	target.addClass('on');
	
	$.ajax({
	    url : '<%=request.getContextPath() %>/rest-pbht/hspt-detail',
	    type : 'get',
	    dataType : 'json',
	    data : {'hsptNo':hsptNo},
	    success : function(dataMap){
	 		console.log(dataMap);
	 		$('#inst_nm').html(dataMap.dgnssHspt.instNm);
	 		$('#op_rate').html(dataMap.dgnssHspt.opRate + "%" 
	 				+ "  " +"(" + (dataMap.dgnssHspt.sckbdCnt - dataMap.dgnssHspt.rmndSckbdCnt) 
	 				+ "/" + dataMap.dgnssHspt.sckbdCnt + ")");
	      	$('#inst_telno').html(dataMap.dgnssHspt.instTelno);
	      	$('#emp_cnt').html(dataMap.dgnssHspt.empCnt);
	      	$('#inst_adres').html(dataMap.dgnssHspt.instAdres);
	      	var opRate = dataMap.dgnssHspt.opRate;
	      	
	      	mapOpen(instAdres, dataMap.dgnssHspt.instNm, dataMap.dgnssHspt.rmndSckbdCnt, opRate, dataMap.result);
	      	
	      	$('#setHsptNo').val(hsptNo);
	      	$('#setHsptAdres').val(instAdres);
	      	$('#dgnssGo').find("[name=hsptNo]").val(hsptNo);
	      	$('#dgnssGo').find("[name=rmndSckbdCnt]").val(dataMap.dgnssHspt.rmndSckbdCnt);
	      	
	      	if(dataMap.dgnssHspt.rmndSckbdCnt <= 0){
 	      		$('#dgnssButton').attr("disabled", true);
 	      	}else{
 	      		$('#dgnssButton').attr("disabled", false);
 	      	}
	      	
	    },
	    error : function(error){
	      alert('error' + error.status);
	    }
	  })
	
}
function bookmark_go(){
	//alert(instNo);
	var hsptNo = $('#setHsptNo').val();
	var adres = $('#setHsptAdres').val();
	
	var check = confirm("??????????????? ?????????????????????????");
	if(check){
		$.ajax({
		    url : '<%=request.getContextPath() %>/rest-pbht/bookmark-regist',
		    type : 'get',
		    dataType : 'json',
		    data : {'hsptNo':hsptNo},
		    success : function(result){
		    	if(result == 1){
		    		showDetail(hsptNo, adres);
		    		alert("???????????? ????????? ?????????????????????.");
		    	}else{
		    		alert("???????????? ????????? ?????????????????????. ??????????????? ????????? ?????????.")
		    	}
		    },
		    error : function(error){
		      alert('error' + error.status);
		    }
		  })
	}else{
		return false;
	}
}

function bookmark_remove(){
	
	var hsptNo = $('#setHsptNo').val();
	var adres = $('#setHsptAdres').val();
	
	var check = confirm("??????????????? ?????????????????????????");
	
	if(check){
		$.ajax({
		    url : '<%=request.getContextPath() %>/rest-pbht/bookmark-remove',
		    type : 'get',
		    dataType : 'json',
		    data : {'hsptNo':hsptNo},
		    success : function(result){
		    	
		    	
		    	if(result > 0){
		    		var typeCheck =  $('#jobForm').find("[name='typeCode']").val();
		    		if(typeCheck == "all"){
		    			$("#searchType option:eq(0)").prop("selected", true);
		    			$('#jobForm').find("[name='searchType']").val("");
		    			$('#keywordId').val("");
		    			targetId = "#hspt-all-list-table-tbody";
		    			pagenationId = "#inptnt-all-pagination-template";
		    			page = 1;
		    			list_go(url, page, targetId, pagenationId);
		    			showDetail(hsptNo, adres);
			    		alert("???????????? ????????? ?????????????????????.");
		    		}else{
		    			$("#searchType option:eq(0)").prop("selected", true);
			    		$('#jobForm').find("[name='searchType']").val("");
			    		$('#keywordId').val("");
			    		targetId = "#hspt-bookmark-list-table-tbody";
			    		pagenationId = "#inptnt-list-pagination-ul";
			    		page = 1;
			    		list_go(url, page, targetId, pagenationId);
			    		showDetail(hsptNo, adres);
			    		alert("???????????? ????????? ?????????????????????.");
		    		}
		    	}else{
		    		alert("???????????? ????????? ?????????????????????. ??????????????? ????????? ?????????.")
		    	}
		    },
		    error : function(error){
		      alert('error' + error.status);
		    }
		  })
	}else{
		return false;
	}
	
}
function dgnssGo(){
	
	
	if(!$('#dgnssGo').find("[name=hsptNo]").val()){
		alert("????????? ????????? ?????????.");
		return;
	}
	
	if($('#dgnssGo').find("[name=rmndSckbdCnt]").val() == 0){
		alert("??????????????? ????????????.");
		return;
	}
	
	var hsptNo = $('#dgnssGo').find("[name=hsptNo]").val()	
	
	// alert(hsptNo);
	$.ajax({
	    url : '<%=request.getContextPath() %>/rest-pbht/rmndSckbdCnt-check',
	    type : 'post',
	    dataType : 'json',
	    data : {'hsptNo':hsptNo},
	    success : function(result){
	
	    	if(result <= 0){
	    		alert("??????????????? ???????????????.");
	    	}else{
	    		var check = confirm("??????????????? ???????????????????");
	    		if(check) $('#dgnssGo').submit();
	    	}
	    },
	    error : function(error){
	      alert('error' + error.status);
	    }
	  })
}
</script>
<div class="ddoing" style="height: 455px">
<table class="table table-hover table-bordered" style="text-align: center;font-size: 15px;table-layout: fixed;">
	<thead>
		<tr style="text-align: center;">
			<th style="width:30%;overflow: true;">?????????</th>
			<th style="width:40%">??????</th>
			<th style="width:15%;">????????????</th>
			<th style="width:15%;">?????????</th>
		</tr>
	</thead>
	<tbody id="hspt-bookmark-list-table-tbody">
		<tr class="each-hspt-element">
			<td colspan="4" class="dgnssHsptList">????????? ????????? ?????????.</td>
		</tr>
	</tbody>
</table>
</div>
<div class="card-footer clearfix pb-0 pt-0" style="background-color: white;">
	<ul class="pagination justify-content-center m-0" id="inptnt-list-pagination-ul">
	</ul>
</div>
