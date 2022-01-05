<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
		function go_smpleList(){
			location.href = "<%=request.getContextPath()%>/pbhlth/smple-list";
		}
		
	
</script>
		<table>
			<tr>
				<th class="nav-item subMenu"><a	href="javascript:go_smpleList();" class="nav-link"><p>시료 목록</p></a></th>
			</tr>
		</table>
