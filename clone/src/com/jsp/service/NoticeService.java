package com.jsp.service;

import java.util.List;
import java.util.Map;

import com.jsp.command.SearchCriteria;
import com.jsp.dto.NoticeVO;

public interface NoticeService {

	public List<NoticeVO> getPointNoticeList() throws Exception;
	public Map<String, Object> getNoticeListPage(SearchCriteria cri) throws Exception;
	
	public NoticeVO getNotice(String nno) throws Exception;
	
}
