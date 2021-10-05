package kr.or.ddit.jdbcBoard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.jdbcBoard.service.IJdbcBoardService;
import kr.or.ddit.jdbcBoard.service.JdbcBoardServiceImpl;
import kr.or.ddit.jdbcBoard.util.ControllerUtil;
import kr.or.ddit.jdbcBoard.vo.JdbcBoardVO;

@WebServlet("/board/update.do")
public class BoardUpdate extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int board_no = Integer.parseInt(req.getParameter("board_no"));
		req.setAttribute("board_no", board_no);
		ControllerUtil.forwardJSP("update", req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IJdbcBoardService boardService = JdbcBoardServiceImpl.getInstance();
		JdbcBoardVO board = new JdbcBoardVO();
		
		int board_no = Integer.parseInt(req.getParameter("board_no"));
		String board_title = req.getParameter("title");
		String board_content = req.getParameter("content");
		
		board.setBoard_no(board_no);
		board.setBoard_title(board_title);
		board.setBoard_content(board_content);
		
		boardService.updateBoard(board);
		
		ControllerUtil.redirectServlet("/board/detail.do?board_no="+board_no, req, resp);
		
	}
	

}
