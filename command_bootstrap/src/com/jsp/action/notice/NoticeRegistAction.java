package com.jsp.action.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.controller.HttpRequestParameterAdapter;
import com.jsp.dto.NoticeVO;
import com.jsp.service.NoticeService;

public class NoticeRegistAction implements Action{

	private NoticeService noticeService;
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String url = "/notice/regist_success";
		
		try {
			NoticeVO notice = (NoticeVO)HttpRequestParameterAdapter.execute(request, NoticeVO.class);
			noticeService.regist(notice);
			
		} catch (Exception e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			url = null;
			//	url = "/notice/regist_fail";  이 방법은 동기방식에서만 사용하자!!!!!!!!!!!!!!!!!!! 비동기에선 절대 사용하지 말것
		}
		
		return url;
	}

}
