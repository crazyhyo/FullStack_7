<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content">
		<div style="height: 640px;">
				<div class="table-responsive">
					<table class="table table-hover text-nowrap"
								style="text-align: center; margin-top: 10px;">
								<thead>
									<tr role="row">
										<th style="width: 10%;"><input id="all" type="checkbox" onclick="checkAllBox()" name="all"></th>
										<th tabindex="0" aria-controls="example2" rowspan="1" 
											colspan="1" aria-label="">체온</th>
										<th tabindex="0" aria-controls="example2" rowspan="1" 
											colspan="1" aria-sort="ascending" aria-label="">성명</th>
										<th tabindex="0" aria-controls="example2" rowspan="1" 
										colspan="1" aria-sort="ascending" aria-label="">나이</th>
										<th tabindex="0" aria-controls="example2" rowspan="1" 
											colspan="1" aria-label="">성별</th>
										<th tabindex="0" aria-controls="example2" rowspan="1"
											colspan="1" aria-sort="ascending" aria-label="">연락처</th>
										
											
									</tr>
								</thead>
								<tbody>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-success">36.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>남</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-success">36.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>남</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-warning">37.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-danger">39.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-success">36.3</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-danger">39.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-warning">37.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-success">35.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-success">35.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-danger">38.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-warning">37.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-warning">37.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-warning">37.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-warning">37.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
									<tr data-psti="${pstiNo }">
										<td><input type="checkbox" name="checkSmple" onclick="cancleAll()"></td>
					                    <td><span class="badge badge-warning">37.5</span></td>
					                    <td>하기재</td>
										<td>27</td>
										<td>여</td>
										<td>010-7777-7777</td>
									</tr>
								</tbody>
							</table>
				</div>
		</div>
		<div class="card-footer clearfix" style="background-color: white;">
			<%@ include file="../template/list-footer.jsp"%>
		</div>
</section>
