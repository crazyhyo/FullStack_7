package com.jsp.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dto.MemberVO;

public class CheckLoginUserFilter implements Filter{

	private List<String> exURLs = new ArrayList<String>();
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;
		
		String reqUrl = httpReq.getRequestURI().substring(httpReq.getContextPath().length());
		
		if(excludeCheck(reqUrl)) {
			chain.doFilter(request, response);
			return;
		}
		
		HttpSession session = httpReq.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if(loginUser == null) {
			httpResp.setContentType("text/html;charset=utf-8");
			PrintWriter out = httpResp.getWriter();
			out.println("<script>");
			out.println("alert('로그인은 필수입니다.');");
			out.println("if(window.opener){window.close();window.opener.parent.location.href='"
					+ httpReq.getContextPath()
					+ "/';}else{");
			out.println("window.parent.location.href='" + httpReq.getContextPath()+"/';");
			out.println("}");
			out.println("</script>");
			out.close();
		}else {
			chain.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		String excludeURLNames = filterConfig.getInitParameter("exclude");
		
		StringTokenizer st = new StringTokenizer(excludeURLNames, ",");
		while(st.hasMoreTokens()) {
			exURLs.add(st.nextToken().trim());
		}
		
//		System.out.println(exURLs);
	}
	
	private boolean excludeCheck(String url) {
		boolean result = false;
		result = result | url.length() <= 1;
		
		for(String exURL : exURLs) {
			result = result | url.contains(exURL);
		}
		
		return result;
	}

}
