<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- 진료 신청 목록 -->
<div class="row" style="margin: 1px;">
	<div class="col-md-6 pl-0">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<div style="height: 662px;">
						<table class="table table-hover text-nowrap" style="text-align: center;">
							<thead>
								<tr role="row">
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">성명</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">나이</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">연락처</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">생활치료센터이름</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">신청시각</th>
									<th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">신청결과</th>
								</tr>
							</thead>
							<tbody id="req-sckbd-ltct-list-table-tbody">
								<tr class="each-sckbdreq-element">
									<td colspan="6">데이터 로딩중 입니다.</td>
								</tr>
							</tbody>
						</table>

					</div>
					<!-- /.table-responsive -->
				</div>
				<div class="card-footer clearfix pb-0 pt-0" style="background-color: white;">
					<ul class="pagination justify-content-center m-0" id="inptnt-req-list-pagination-ul">
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 pr-0">
		<!-- /.card-body -->
		<div class="card">
			<div class="card-body">
				<div class="sckbdreq-detail-info">
					<table class="table table-bordered">
						<thead>
							<tr style="text-align: center;">
								<th>성명</th>
								<td id="ltct-tab-pstiNm">{{pstiNm}}</td>
								<th>국적</th>
								<td id="ltct-tab-nlty">{{nlty}}</td>
							</tr>
						</thead>
						<tbody>
							<tr class="shittr" style="text-align: center;">
								<th>진료요청일자</th>
								<td id="ltct-tab-reqYmd">{{prettifyDate reqYmd}}</td>
								<th>백신접종</th>
								<td id="ltct-tab-vacType">{{vacType}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>성별</th>
								<td id="ltct-tab-gender">{{gender}}</td>
								<th>나이</th>
								<td id="ltct-tab-age">{{age}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>확정일자</th>
								<td id="ltct-tab-resYmd">{{prettifyDate resYmd}}</td>
								<th>결과</th>
								<td id="ltct-tab-pstvYn">{{pstvYn}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>발열여부</th>
								<td id="ltct-tab-feverYn">{{feverYn}}</td>
								<th>임신여부</th>
								<td id="ltct-tab-pregnYn">{{pregnYn}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>주민/외국인등록번호</th>
								<td id="ltct-tab-rrn">{{rrn}}</td>
								<th>연락처</th>
								<td id="ltct-tab-pstiTelno">{{pstiTelno}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>주소</th>
								<td colspan="3" id="ltct-tab-pstiAdres">{{pstiAdres}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>증상</th>
								<td colspan="3" id="ltct-tab-symptms">{{symptms}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>병상신청기관</th>
								<td id="ltct-tab-ltctNm">{{getExist ltctNm instNm}}</td>
								<th>기관연락처</th>
								<td id="ltct-tab-ltctTelno">{{getExist ltctTelno instTelno}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>신청기관 주소</th>
								<td colspan="3" id="ltct-tab-ltctAdres">{{getExist ltctAdres instAdres}}</td>
							</tr>
							<tr class="shittr" style="text-align: center;">
								<th>신청결과</th>
								<td colspan="3" id="ltct-tab-sckbdreqCode">{{sckbdreqCode}}</td>
							</tr>
						</tbody>
					</table>

					<table class="table table-bordered">
						<tr>
							<td colspan="4">
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-12 control-label text-center" style="padding-top: 7px;">진료 메모</label>
								</div>
								<div class="form-group row">
									<div class="col-sm-12">
										<div style="border: 1px solid #e9e9e9; width: 520px; height: 100px; overFlow: auto; margin-left: 23px;">
											<span id="ltct-tab-dgnssNote">{{dgnssNote}}</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="form-group row" style="padding-top: 6px;">
					<div class="col-md-6"></div>
					<div class="col-md-3"></div>
					<div class="col-md-3">
						<button type="button" class="btn btn-block btn-primary btn-sm" style="background-color: #1a4f72; border-color: #1a4f72;">취소</button>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>