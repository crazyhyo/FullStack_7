package com.jsp.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.jsp.command.SearchCriteria;
import com.jsp.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO{

	@Override
	public List<NoticeVO> selectPointNoticeList(SqlSession session) throws Exception {
		List<NoticeVO> notices = session.selectList("Notice-Mapper.selectPointNoticeList");
		return notices;
	}

	@Override
	public int selectPointNoticeListCount(SqlSession session) throws Exception {
		int count = session.selectOne("Notice-Mapper.selectPointNoticeListCount");
		return count;
	}

	@Override
	public List<NoticeVO> selectNoticeList(SqlSession session, SearchCriteria cri) throws Exception {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBound = new RowBounds(offset, limit);
		List<NoticeVO> notices = session.selectList("Notice-Mapper.selectNoticeList", cri, rowBound);
		return notices;
	}

	@Override
	public int selectNoticeListCount(SqlSession session, SearchCriteria cri) throws Exception {
		int count = session.selectOne("Notice-Mapper.selectNoticeListCount", cri);
		return count;
	}

	@Override
	public NoticeVO selectNoticeByNno(SqlSession session, String nno) throws Exception {
		NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeByNno", nno);
		return notice;
	}
	
	

}
