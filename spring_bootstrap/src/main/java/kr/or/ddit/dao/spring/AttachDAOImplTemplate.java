package kr.or.ddit.dao.spring;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jsp.dao.AttachDAO;
import com.jsp.dto.AttachVO;

public class AttachDAOImplTemplate implements AttachDAOBean{

	private AttachDAO attachDAO;
	private SqlSession session;

	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	}

	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<AttachVO> selectAttachByPno(int pno) throws SQLException {
		return attachDAO.selectAttachByPno(session, pno);
	}

	@Override
	public AttachVO selectAttachByAno(int ano) throws SQLException {
		return attachDAO.selectAttachByAno(session, ano);
	}

	@Override
	public void insertAttach(AttachVO attach) throws SQLException {
		attachDAO.insertAttach(session, attach);
	}

	@Override
	public void deleteAttach(int ano) throws SQLException {
		attachDAO.deleteAttach(session, ano);
	}

	@Override
	public void deleteAllAttach(int pno) throws SQLException {
		attachDAO.deleteAllAttach(session, pno);
	}

}
