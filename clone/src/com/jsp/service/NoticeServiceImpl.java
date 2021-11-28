package com.jsp.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.PageMaker;
import com.jsp.command.SearchCriteria;
import com.jsp.dao.MemberDAO;
import com.jsp.dao.NoticeDAO;
import com.jsp.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService{

	protected SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
	    this.sqlSessionFactory = sqlSessionFactory;
	}
	
	protected NoticeDAO noticeDAO;
	
	public void setNoticeDAO(NoticeDAO noticeDAO) {
	    this.noticeDAO = noticeDAO;
	}
	
	@Override
	public NoticeVO getNotice(String nno) throws Exception {
		SqlSession session = sqlSessionFactory.openSession(false);
		NoticeVO notice = new NoticeVO();
		try {
			notice = noticeDAO.selectNoticeByNno(session, nno);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
			throw e;
		} finally {
			session.close();
		}
		return notice;
	}

	@Override
	public List<NoticeVO> getPointNoticeList() throws Exception {
		SqlSession session = sqlSessionFactory.openSession(false);
		List<NoticeVO> notices = new ArrayList<NoticeVO>();
		try {
			notices = noticeDAO.selectPointNoticeList(session);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
			throw e;
		} finally {
			session.close();
		}
		return notices;
	}

	@Override
	public Map<String, Object> getNoticeListPage(SearchCriteria cri) throws Exception {
		
		SqlSession session = sqlSessionFactory.openSession(false);
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		try {
			
			List<NoticeVO> notices = noticeDAO.selectNoticeList(session, cri);
			PageMaker pageMaker = new PageMaker();
			
			int totalCount = noticeDAO.selectNoticeListCount(session, cri);
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(totalCount);
			
			dataMap.put("notices", notices);
			dataMap.put("pageMaker", pageMaker);
			
			session.commit();
		} catch(Exception e) {
			session.rollback();
			e.printStackTrace();
			throw e;
			
		} finally{
			session.close();
		}
		return dataMap;
	}

}
