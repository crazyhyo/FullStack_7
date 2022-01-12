package com.spring.compass.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import com.spring.compass.service.MberService;
import com.spring.compass.vo.MberVO;

public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	private MberService mberService;
	
	public void setMberService(MberService mberService) {
		this.mberService = mberService;
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		System.out.println("-------------------------------------------");
		System.out.println(authentication.getPrincipal() + " id?");
		System.out.println(authentication.getCredentials() + " pwd?");
		
		UserDetails userDetail = (UserDetails) authentication.getDetails();
		String mberId = userDetail.getUsername();
		
		String mberPwd = userDetail.getPassword();
		
		System.out.println(mberId);
		System.out.println(mberPwd);
		
		MberVO loginUser = null;
		
		try {
			loginUser = mberService.getMember(mberId);
		}catch (Exception e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", loginUser);
		session.setMaxInactiveInterval(60*60);
		
		super.onAuthenticationSuccess(request, response, authentication);
	}
	
	
}
