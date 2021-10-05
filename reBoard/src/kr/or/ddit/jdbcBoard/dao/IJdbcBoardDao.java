package kr.or.ddit.jdbcBoard.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.jdbcBoard.vo.JdbcBoardVO;

public interface IJdbcBoardDao {
	
		public int insertBoard(JdbcBoardVO boardVO) throws SQLException;
		
		public boolean chkBoard(int board_no) throws SQLException;
		
		public JdbcBoardVO selectBoard(int board_no) throws SQLException;
		
		public List<JdbcBoardVO> selectAllBoard() throws SQLException;
		
		public int updateBoard(JdbcBoardVO boardVO) throws SQLException;
		
		public int deleteBoard(int board_no) throws SQLException;
		
		public List<JdbcBoardVO> searchBoard(JdbcBoardVO boardVO) throws SQLException;
		
		public int getMaxNo() throws SQLException;
		
}
