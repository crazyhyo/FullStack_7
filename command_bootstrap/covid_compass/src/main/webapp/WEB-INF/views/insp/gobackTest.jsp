<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<script>
	function go_back(){
		location.href = "<%= request.getContextPath() %>/insp/main";
	}
	</script>
	<nav class="mt-2">
		<ul class="nav nav-pills nav-sidebar flex-column subMenuList"
			data-widget="treeview" role="menu" data-accordion="false">
			<li class="nav-item subMenu"><a
				href="javascript:go_back();"
				class="nav-link"> <i class="{{micon}}"></i>
					<p>뒤로가기</p>
			</a></li>
		</ul>
	</nav>	