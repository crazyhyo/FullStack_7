package com.jsp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jsp.command.SearchCriteria;
import com.jsp.dto.NoticeVO;

public interface NoticeDAO {

	public List<NoticeVO> selectPointNoticeList(SqlSession session) throws Exception;
	public int selectPointNoticeListCount(SqlSession session) throws Exception;
	
	public List<NoticeVO> selectNoticeList(SqlSession session, SearchCriteria cri) throws Exception;
	public int selectNoticeListCount(SqlSession session, SearchCriteria cri) throws Exception;
	
	public NoticeVO selectNoticeByNno(SqlSession session, String nno) throws Exception;
	
	
}
