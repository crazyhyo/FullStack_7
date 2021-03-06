<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>

<script>
	$('div.wrapper').css({
		"max-width" : "1280",
		"margin" : "0 auto"
	})
</script>
<script>
//모든 조건이 만족했을 때만 버튼을 활성화 시키기 위해
//각 정규식의 결과를 저장하는 배열
let testResults = [];

window.onload = function(){
	
	// 버튼 이벤트 등록
	$('#btnRegister').on('click', toggle);
	$('#btnUpdate').on('click', toggle);
	$('#btnCancle').on('click', toggle);
	
	// 정규식 검사 이벤트 등록
	regexTestOn($('#name'), 	/^[가-힣]{2,5}$/);
	regexTestOn($('#pwd'), 		/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,12}$/);
	regexTestOn($('#email'), 	/^([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/);
	regexTestOn($('#phone'), 	/\d{2,3}-?\d{3,4}-?\d{4}$/);
	
	// id 중복을 검사하기 위한 원소를 추가한다.
	testResults.push(false);
	
	//아이디 중복검사
	$('#idCheck').on('click', idCheck);
	
	
}

// 아이디 중복체크
function idCheck(){
	let idVal = $('#id').val();
	
	$.ajax({
		url: "/JSP_bootstrap/idCheck",
		type: "post",
		data: { "id" : idVal},
		dataType: "json",
		success: function(res){
			if(res.flag === "success"){
				testResults[testResults.length - 1] = true;
				activateButton();
				$('#lblcheck').html("사용할 수 있는 아이디입니다");
			}else{
				$('#lblcheck').html("이미 사용중인 아이디입니다");
				testResults[testResults.length - 1] = false;  
			}
		},
		error: function(xhr){
			console.log("status : " + xhr.status + "\ntext : " + xhr.statusText);
		}
	})
}

//정규식 검사를 추가한다
function regexTestOn(target, regex){
	// 정규식의 결과값을 담는 한 원소를 testResults에 추가한다. 
	let position = testResults.length;
	testResults.push(false);
	
	// 해당 원소는 keyup event가 일어날 때마다 정규식 검사결과를 저장한다
	target.on('keyup', function(){
		let value 	= target.val();
		let flag 	= regex.test(value);
		// 정규식 검사 결과에 따라 border에 css를 준다
		applyCss(target, flag);
		testResults[position] = flag;
		// 정규식이 거짓이면 제출버튼을 비활성화한다
		if(!flag)	$('#btnSubmit').attr("disabled", true);
		// 정규식이 참이면 제출버튼 활성화를 시도한다.
		if(flag)	activateButton();
	})
}

function applyCss(target, flag){
	// input tag가 비어있는 경우 border css를 제거한다
	if(target.val() == ""){
		target.css("border","");
		return;
	}
	if(flag)				target.css("border","");
	if(!flag)				target.css("border","3px solid red");
}

//testResults를 순회하며 모든 원소가 true이면 제출 버튼을 활성화한다.
function activateButton(){
	for(let i = 0; i < testResults.length; i++){
		if(!testResults[i]) return;
	}
	$('#btnSubmit').attr("disabled", false);
}

function toggle(){
	console.log("toggle");
	
	const toggles = document.querySelectorAll('.toggle');
	const shows = document.querySelectorAll('.show');
	console.log(hiddens);
	console.log(shows);
	shows.forEach(function(element){
		element.classList.remove('show');
		element.classList.add('hidden');
	})
	hiddens.forEach(function(element){
		element.classList.remove('hidden');
		element.classList.add('show');
	})	
}
		
</script>

</body>

</html>
