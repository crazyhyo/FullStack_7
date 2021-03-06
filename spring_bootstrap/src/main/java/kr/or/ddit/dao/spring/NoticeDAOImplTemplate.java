package kr.or.ddit.dao.spring;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jsp.command.SearchCriteria;
import com.jsp.dao.NoticeDAO;
import com.jsp.dto.NoticeVO;

public class NoticeDAOImplTemplate implements NoticeDAOBean{
	
	private NoticeDAO noticeDAO;
	private SqlSession session;

	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<NoticeVO> selectSearchNoticeList(SearchCriteria cri) throws SQLException {
		return noticeDAO.selectSearchNoticeList(session, cri);
	}

	@Override
	public int selectSearchNoticeListCount(SearchCriteria cri) throws SQLException {
		return noticeDAO.selectSearchNoticeListCount(session, cri);
	}

	@Override
	public NoticeVO selectNoticeByNno(int nno) throws SQLException {
		return noticeDAO.selectNoticeByNno(session, nno);
	}

	@Override
	public int selectNoticeSequenceNextValue() throws SQLException {
		return noticeDAO.selectNoticeSequenceNextValue(session);
	}

	@Override
	public void increaseViewCount(int nno) throws SQLException {
		noticeDAO.increaseViewCount(session, nno);
	}

	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		noticeDAO.insertNotice(session, notice);
	}

	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(session, notice);
	}

	@Override
	public void deleteNotice(int nno) throws SQLException {
		noticeDAO.deleteNotice(session, nno);
	}

}
