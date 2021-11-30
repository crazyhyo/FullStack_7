package com.jsp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.dao.MemberDAO;
import com.jsp.dao.MemberDAOImpl;
import com.jsp.dataSource.OracleMyBatisSqlSessionFactory;
import com.jsp.dto.MemberVO;
import com.jsp.service.MemberServiceForModify;
import com.jsp.service.MemberServiceForModifyImpl;
import com.jsp.service.MemberServiceImpl;

@WebServlet("/member/enabled")
public class MemberEnabledServlet extends HttpServlet{
	
	private MemberServiceForModify memberService;
	
	{
		memberService = new MemberServiceForModifyImpl();
		SqlSessionFactory factory = new OracleMyBatisSqlSessionFactory();
		MemberDAO memberDAO = new MemberDAOImpl();
		((MemberServiceImpl)memberService).setMemberDAO(memberDAO);
		((MemberServiceImpl)memberService).setSqlSessionFactory(factory);
	}	
		
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = null;
		String id = request.getParameter("id");
		int enabled = Integer.parseInt(request.getParameter("enabled"));
		
		try {
			memberService.enabled(id, enabled);
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('"+ id + "님의 상태가 변경되었습니다.')");
			out.println("location.href='detail?id="+id+"';");
			out.println("</script>");
			
		} catch (Exception e) {
			e.printStackTrace();
			response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}
		/*String url = "/member/enabled_success.jsp";
		String id = request.getParameter("id");
		int enabled = request.getParameter("enabled") == null ? -1 : Integer.parseInt(request.getParameter("enabled"));
		
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setEnabled(enabled);
		
		try {
			memberService.enabled(member);
			member = memberService.getMember(id);
			
			request.setAttribute("member", member);
			request.getRequestDispatcher(url).forward(request, response);
			
		} catch (Exception e) {
			url = "/member/enabled_fail.jsp";
			request.setAttribute("member", member);
			e.printStackTrace();
			request.getRequestDispatcher(url).forward(request, response);
		}*/
		
	}

}
