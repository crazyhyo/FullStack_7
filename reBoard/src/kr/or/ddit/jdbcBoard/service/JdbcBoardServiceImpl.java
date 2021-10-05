package kr.or.ddit.jdbcBoard.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.jdbcBoard.dao.IJdbcBoardDao;
import kr.or.ddit.jdbcBoard.dao.JdbcBoardDaoImpl;
import kr.or.ddit.jdbcBoard.vo.JdbcBoardVO;

public class JdbcBoardServiceImpl implements IJdbcBoardService{

  private IJdbcBoardDao jdbcBoardDao;

  private static IJdbcBoardService jdbcBoardService;

  private JdbcBoardServiceImpl(){
    jdbcBoardDao = JdbcBoardDaoImpl.getInstance();
  }

  public static IJdbcBoardService getInstance(){
    if(jdbcBoardService == null){
      jdbcBoardService = new JdbcBoardServiceImpl();
    }
    return jdbcBoardService;
  }

	@Override
	public int insertBoard(JdbcBoardVO boardVO) {
		int boardNo = -1;
		try {
			boardNo = jdbcBoardDao.insertBoard(boardVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return boardNo;
	}

	@Override
	public boolean chkBoard(int board_no) {
		try {
			return jdbcBoardDao.chkBoard(board_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public JdbcBoardVO selectBoard(int board_no) {
		try {
			return jdbcBoardDao.selectBoard(board_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<JdbcBoardVO> selectAllBoard() {
		try {
			return jdbcBoardDao.selectAllBoard();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int updateBoard(JdbcBoardVO boardVO) {
		try {
			return jdbcBoardDao.updateBoard(boardVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public int deleteBoard(int board_no) {
		try {
			return jdbcBoardDao.deleteBoard(board_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public List<JdbcBoardVO> searchBoard(JdbcBoardVO boardVO) {
		try {
			return jdbcBoardDao.searchBoard(boardVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
