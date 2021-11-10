package kr.or.ddit.member.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberDTO;
import kr.or.ddit.member.vo.PagingVO;

public class MemberList extends HttpServlet{
	
    Properties properties = new Properties();

    @Override
    public void init(ServletConfig config) throws ServletException{

        String urlPath = config.getInitParameter("urlPatterns.properties");

        System.out.println(urlPath);
        
        Reader reader;
		try {
			reader = Resources.getResourceAsReader(urlPath);
			properties.load(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
        ServletContext application = config.getServletContext();
        application.setAttribute("deleteUrl", properties.getProperty("url.deleteMember"));
        application.setAttribute("idCheckUrl", properties.getProperty("url.idcheck"));
        application.setAttribute("detailUrl", properties.getProperty("url.detailMember"));
        application.setAttribute("listUrl", properties.getProperty("url.listMember"));
        application.setAttribute("registUrl", properties.getProperty("url.registMember"));
        application.setAttribute("searchUrl", properties.getProperty("url.searchMember"));
        application.setAttribute("updateUrl", properties.getProperty("url.updateMember"));

    }
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		Integer currentPageNo = req.getParameter("currentPageNo") == null?
				1 : Integer.parseInt(req.getParameter("currentPageNo"));
		
		HttpSession session = req.getSession();
		
		session.setAttribute("currentPageNo", currentPageNo);
		
		if(currentPageNo == 0) {
		
			IMemberService memberService = MemberServiceImpl.getInstance();
			
			List<MemberDTO> memberList = memberService.getMemberList();
			
			req.setAttribute("memberList", memberList);
			
			req.getRequestDispatcher("/memberList.jsp").forward(req, resp);
		}else {
			IMemberService memberService = MemberServiceImpl.getInstance();
			
			PagingVO pagingVO = new PagingVO();
			
			int totalCount = memberService.getMemberCount();
			
			pagingVO.setCurrentPageNo(currentPageNo);
			pagingVO.setTotalCount(totalCount);
			
			List<MemberDTO> memberPagingList = memberService.getMemberPagingList(pagingVO);
			
			req.setAttribute("memberList", memberPagingList);
			
			req.setAttribute("pagingVO", pagingVO);
			
			req.setAttribute("isSearch", false);
			
			req.getRequestDispatcher("/memberList.jsp").forward(req, resp);			
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
