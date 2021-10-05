package kr.or.ddit.jdbcBoard.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.jdbcBoard.util.SqlMapClientFactory;
import kr.or.ddit.jdbcBoard.vo.JdbcBoardVO;

public class JdbcBoardDaoImpl implements IJdbcBoardDao{

	private SqlMapClient smc;
	
	private static IJdbcBoardDao jdbcBoardDao;
	
	private String namespace = "jdbcBoard.";
	
	private JdbcBoardDaoImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IJdbcBoardDao getInstance() {
		if(jdbcBoardDao == null) {
			jdbcBoardDao = new JdbcBoardDaoImpl();
		}
		
		return jdbcBoardDao;
	}
	
	@Override
	public int insertBoard(JdbcBoardVO boardVO)  throws SQLException{
		int cnt = 0;
		Object obj = smc.insert(namespace + "insertBoard", boardVO);
		
		int currentBoardNo = -1;
		
		cnt = obj == null ? 1 : 0;
		
		if(cnt == 1) {
			currentBoardNo = (int)smc.queryForObject(namespace + "getMaxNo");
		}
		return currentBoardNo;
	}

	@Override
	public boolean chkBoard(int board_no)  throws SQLException{
		boolean flag = false;
		int cnt = 0;
		cnt = (int) smc.queryForObject(namespace + "chkBoard", board_no);
		flag = cnt != 0;
		return flag;
	}

	@Override
	public JdbcBoardVO selectBoard(int board_no)  throws SQLException{
		JdbcBoardVO board = null;
		board = (JdbcBoardVO) smc.queryForObject(namespace + "selectBoard", board_no);
		return board;
	}

	@Override
	public List<JdbcBoardVO> selectAllBoard()  throws SQLException{
		List<JdbcBoardVO> boardList = null;
		boardList = (List<JdbcBoardVO>) smc.queryForList(namespace + "selectAllBoard");
		return boardList;
	}

	@Override
	public int updateBoard(JdbcBoardVO boardVO)  throws SQLException{
		int cnt = 0;
		cnt = smc.update(namespace + "updateBoard", boardVO);
		return cnt;
	}

	@Override
	public int deleteBoard(int board_no)  throws SQLException{
		int cnt = 0;
		cnt = smc.delete(namespace + "deleteBoard", board_no);
		return cnt;
	}

	@Override
	public List<JdbcBoardVO> searchBoard(JdbcBoardVO boardVO)  throws SQLException{
		List<JdbcBoardVO> boardList = null;
		boardList = (List<JdbcBoardVO>) smc.queryForList(namespace + "searchBoard", boardVO);
		return boardList;
	}

	@Override
	public int getMaxNo() throws SQLException {
		int cnt = -1;
		cnt = (int)smc.queryForObject(namespace + "getMaxNo");
		return cnt;
	}

}
