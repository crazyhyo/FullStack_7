package com.jsp.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.dao.MemberDAO;
import com.jsp.dao.MemberDAOImpl;
import com.jsp.dataSource.OracleMyBatisSqlSessionFactory;
import com.jsp.dto.MemberVO;
import com.jsp.exception.NotMultipartFormDataException;
import com.jsp.service.MemberService;
import com.jsp.service.MemberServiceForModify;
import com.jsp.service.MemberServiceForModifyImpl;
import com.jsp.service.MemberServiceImpl;
import com.jsp.service.SearchMemberServiceImpl;
import com.jsp.utils.GetUploadPath;
import com.jsp.utils.MultipartHttpServletRequestParser;
import com.jsp.utils.SaveFileResolver;

@WebServlet("/member/modify")
public class MemberModifyServlet extends HttpServlet{
	
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
		String url = "/member/modify.jsp";
		
		String id = request.getParameter("id");
		try {
			
			MemberVO member = memberService.getMember(id);
			request.setAttribute("member", member);
			request.getRequestDispatcher(url).forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			// url = "/error/500.jsp";
			response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}
		
	}
	
	// 업로드 파일 환경 설정
	private static final int MEMORY_THRESHOLD = 1024 * 500; // 500KB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 1; // 1MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2; // 2MB
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "/member/modify_success.jsp";
		
		try {
		MultipartHttpServletRequestParser multiReq 
			= new MultipartHttpServletRequestParser(request, MEMORY_THRESHOLD,
					MAX_FILE_SIZE, MAX_REQUEST_SIZE);
		
		String id = multiReq.getParameter("id");
		String pwd = multiReq.getParameter("pwd");
		String email = multiReq.getParameter("email");
		String authority = multiReq.getParameter("authority");
		String name = multiReq.getParameter("name");
		String phone = multiReq.getParameter("phone");
		
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPwd(pwd);
		member.setEmail(email);
		member.setAuthority(authority);
		member.setPhone(phone);
		member.setName(name);
		
		// file처리
		// 기존 파일 변경 유무 확인
		String uploadPicture = multiReq.getParameter("uploadPicture");
		if(uploadPicture!= null && !uploadPicture.isEmpty()) {
			
			// 저장경로
			String uploadPath = GetUploadPath.getUploadPath("member.picture.upload");
			File file = new File(uploadPath);
			file.mkdirs();
			
			// 기존 사진이미지 삭제
			File deleteFile = new File(uploadPath, multiReq.getParameter("oldPicture"));
			if(deleteFile.exists()) {
				deleteFile.delete();
			}
			
			// 최근 사진이미지 저장
			List<File> fileList
				= SaveFileResolver.fileUpload(multiReq.getFileItems("picture"), uploadPath);
			File saveFile = fileList.get(0);
			
			member.setPicture(saveFile.getName());
		} else {
			member.setPicture(multiReq.getParameter("oldPicture"));
		}
		
		// DB처리
		memberService.modify(member);
		request.setAttribute("member", member);
		
		// 로그인 사용자 확인
//		request.setAttribute("parentReload", false);
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		if(loginUser!=null && member.getId().equals(loginUser.getId())) {
			// request.setAttribute("parentReload", true);
			session.setAttribute("loginUser", memberService.getMember(member.getId()));
		}
		request.getRequestDispatcher(url).forward(request, response);
		} catch(NotMultipartFormDataException e) {
			response.sendError(response.SC_BAD_REQUEST);
		} catch(Exception e) {
			e.printStackTrace();
			// ........exception 처리
			response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}
		
	}

}
