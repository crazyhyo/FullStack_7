package kr.or.ddit.member.controller;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberDTO;
import kr.or.ddit.member.vo.PagingVO;

public class DeleteMember extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");

		IMemberService memberService = MemberServiceImpl.getInstance();
		
		int cnt = memberService.deleteMember(id);
		
		if(cnt == 0) {
			
			req.getRequestDispatcher("/memberDetail.jsp?msg=fail").forward(req, resp);
		}else {
			
//			PagingVO pagingVO = new PagingVO();
//			
//			int totalCount = memberService.getMemberCount();
//			
//			pagingVO.setCurrentPageNo(1);
//			pagingVO.setTotalCount(totalCount);
//			
//			List<MemberDTO> memberPagingList = memberService.getMemberPagingList(pagingVO);
//			
//			req.setAttribute("memberList", memberPagingList);
//			
//			req.setAttribute("pagingVO", pagingVO);
//			
//			req.setAttribute("isSearch", false);
//			
//			HttpSession session = req.getSession();
//			
//			session.setAttribute("currentPageNo", 1);
			
//			req.getRequestDispatcher("/memberList.jsp").forward(req, resp);		
			resp.sendRedirect(req.getContextPath() + "/list");
		}		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
