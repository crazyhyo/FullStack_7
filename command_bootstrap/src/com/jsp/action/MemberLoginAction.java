package com.jsp.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dto.MemberVO;
import com.jsp.service.MemberServiceForModify;

public class MemberLoginAction implements Action{
	
	private MemberServiceForModify memberServiceForModify;
	public void setMemberServiceForModify(MemberServiceForModify memberServiceModify) {
		this.memberServiceForModify = memberServiceForModify;
	}
	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		String url = null;
		
		//String id = request.getParameter("id");
		//String pwd = request.getParameter("pwd");
		//response.setContentType("text/html;charset=utf-8");
		//PrintWriter out = response.getWriter();
		//try {
			//
			//MemberVO loginMember = memberServiceForModify.login(id, pwd);
			//HttpSession session = request.getSession();
			//session.setAttribute("loginMember", loginMember);
			//
			//
			//String msg = "<script>"
					//+ "alert('"+id+"님 로그인되셨습니다. \n');"
					//+ "window.close();"
					//+ "</script>";
			//
			//out.print(msg);
			//
		//} catch (Exception e) {
			//String msg = "<script>"
					//+ "alert('아이디 혹은 비밀번호가 잘못되었습니다.');"
					//+ "history.go(-1);"
					//+ "</script>";
			//
			//out.print(msg);
			//e.printStackTrace();
		//}
    //
    MemberVO loginMember = new MemberVO();
    loginMember.setId("mimi");
    loginMember.setPwd("pwd");
    loginMember.setEnabled(1);

    HttpSession session = request.getSession();
    session.setAttribute("loginMember", loginMember);

    url = request.getParameter("redirectURL");
		return url;
	}

}
