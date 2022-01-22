<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="card-header ui-sortable-handle">
	<tr role="row">
		<th tabindex="0" aria-controls="example2" rowspan="1"
			style="text-align: center;" colspan="1" aria-label="">
			<div class="col-md-8" style="font-size: 16px;">
				<b>잔여병상수 ${hspt.rmndSckbdCnt}개</b>
			</div>
			<div class="card-tools ">
				<button type="button" class="btn btn-tool"
					onclick="OpenWindow('./sckbd-modify','', 800,765)">
					<i class="fas fa-plus" style="color: black"></i>
				</button>

			</div>
		</th>
	</tr>

</div>
<div class="card-body">
	<table class="table table-bordered">
		<thead>
			<tr
				style="text-align: center; font-weight: bold; background-color: #f5fafc">
				<th>잔여병상수</th>
				<th>입원환자수</th>
				<th>총 병상수</th>
				<th>가동률</th>
			</tr>
		</thead>
		<tbody>
			<tr style="text-align: center">
				<td>${hspt.rmndSckbdCnt}</td>
				<td>${cmd.curInptntCnt }</td>
				<td>${hspt.sckbdCnt}</td>
				<td><span class="badge badge-warning"><fmt:formatNumber value="${hspt.capacity }" pattern="0"/>%</span></td>
			</tr>
		</tbody>
	</table>
	<table class="table table-bordered">
		<thead>
			<tr
				style="text-align: center; font-weight: bold; background-color: #f5fafc">
				<th>입원수</th>
				<th>퇴원수(완치)</th>
				<th>퇴원수(이원)</th>
				<th>퇴원수(사망)</th>
			</tr>
		</thead>
		<tbody>
			<tr style="text-align: center">
				<td>${cmd.inptntCnt }</td>
				<td>${cmd.rlsedCnt }</td>
				<td>${cmd.goCnt }</td>
				<td>${cmd.deathCnt }</td>
			</tr>
		</tbody>
	</table>
</div>