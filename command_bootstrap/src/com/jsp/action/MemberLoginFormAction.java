package com.jsp.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.service.MemberServiceForModify;

public class MemberLoginFormAction implements Action{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String url = "/common/login";
		String redirectURL = request.getParameter("redirectURL");
		System.out.println(redirectURL);
		
		request.setAttribute("redirectURL", redirectURL);
		return url;
	}

}
