package kr.or.ddit.jdbcBoard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.jdbcBoard.service.IJdbcBoardService;
import kr.or.ddit.jdbcBoard.service.JdbcBoardServiceImpl;
import kr.or.ddit.jdbcBoard.util.ControllerUtil;
import kr.or.ddit.jdbcBoard.vo.JdbcBoardVO;

@WebServlet("/board/search.do")
public class BoardSearch extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String searchType = req.getParameter("cboSearchType");
		String query = req.getParameter("txtQuery");
		JdbcBoardVO board = new JdbcBoardVO();
		IJdbcBoardService boardService = JdbcBoardServiceImpl.getInstance();
		
		switch(searchType) {
		case "optByTitle":
			board.setBoard_title(query);
			break;
		case "optByWriter":
			board.setBoard_writer(query);
			break;
		case "optByContent":
			board.setBoard_content(query);
			break;
		}
		
		List<JdbcBoardVO> searchBoard = boardService.searchBoard(board);
		
		req.setAttribute("searchBoard", searchBoard);
		
		ControllerUtil.forwardJSP("search", req, resp);
		
		
	}

}
