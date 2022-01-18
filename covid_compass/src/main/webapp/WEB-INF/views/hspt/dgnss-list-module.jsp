<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content">
  <div style="height: 640px;">
    <div class="table-responsive">
      <table class="table table-hover text-nowrap" style="text-align: center;">

        <thead>
          <tr role="row">
            <th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">요청기관</th>
            <th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">성명</th>
            <th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="">생년월일</th>
            <th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">진료요청일자</th>
            <th tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="">백신접종여부</th>
          </tr>
        </thead>
        <tbody>

          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>

          <tr data-psti="${pstiNo }">
            <td><span class="ltct">대덕치료센터</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>

          <tr data-psti="${pstiNo }">
            <td><span class="ltct">대덕치료센터</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>

          <tr data-psti="${pstiNo }">
            <td><span class="ltct">대덕치료센터</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>

          <tr data-psti="${pstiNo }">
            <td><span class="ltct">대덕치료센터</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>
          <tr data-psti="${pstiNo }">
            <td><span class="pbht">대덕보건소</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>

          <tr data-psti="${pstiNo }">
            <td><span class="ltct">대덕치료센터</span></td>
            <td>하기재</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />1989-01-06</td>
            <td class="dtr-control sorting_1" tabindex="0"><fmt:formatDate value="${pstiReadyListVO.wrtYmd }" pattern="yyyy-MM-dd" />2022-01-06</td>
            <td>2차 접종</td>
          </tr>

        </tbody>
      </table>
    </div>
  </div>
  <div class="card-footer clearfix" style="background-color: white;">
    <%@ include file="../template/list-footer.jsp"%>
  </div>
</section>

