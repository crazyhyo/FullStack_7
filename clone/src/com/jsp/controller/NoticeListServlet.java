package com.jsp.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.NoticeVOCommand;
import com.jsp.command.SearchCriteria;
import com.jsp.dao.NoticeDAO;
import com.jsp.dao.NoticeDAOImpl;
import com.jsp.dataSource.OracleMyBatisSqlSessionFactory;
import com.jsp.dto.NoticeVO;
import com.jsp.exception.NotNumberException;
import com.jsp.service.NoticeService;
import com.jsp.service.NoticeServiceImpl;
import com.jsp.utils.NoticeAdapter;

@WebServlet("/notice/list")
public class NoticeListServlet extends HttpServlet{
	
	private NoticeService noticeService;
	
	{
		noticeService = new NoticeServiceImpl();
		SqlSessionFactory factory = new OracleMyBatisSqlSessionFactory();
		NoticeDAO noticeDAO = new NoticeDAOImpl();
		((NoticeServiceImpl)noticeService).setNoticeDAO(noticeDAO);
		((NoticeServiceImpl)noticeService).setSqlSessionFactory(factory);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/notice/list.jsp";
		
		String pageStr = request.getParameter("page");
		String perPageNumStr = request.getParameter("perPageNum");
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		SearchCriteria cri = null;
		
		try {
			if(pageStr != null && perPageNumStr != null) {
				cri = new SearchCriteria(pageStr, perPageNumStr, searchType, keyword);
			}else {
				cri = new SearchCriteria();
			}
			Map<String, Object> dataMap = noticeService.getNoticeListPage(cri);
			
			List<NoticeVO> notices = (List<NoticeVO>)dataMap.get("notices");
			List<NoticeVO> pointNoticeList = noticeService.getPointNoticeList();
			List<NoticeVOCommand> commands = NoticeAdapter.toNoticeVOCommandList(notices);
			List<NoticeVOCommand> pointCommands = NoticeAdapter.toNoticeVOCommandList(pointNoticeList);
			
			
			dataMap.put("notices", commands);
			
			request.setAttribute("dataMap", dataMap);
			
			request.setAttribute("pointNoticeList", pointCommands);
			
		} catch (NotNumberException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
