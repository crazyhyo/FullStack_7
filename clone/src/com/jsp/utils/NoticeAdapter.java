package com.jsp.utils;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.NoticeVOCommand;
import com.jsp.dao.MemberDAO;
import com.jsp.dao.MemberDAOImpl;
import com.jsp.dataSource.OracleMyBatisSqlSessionFactory;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.service.MemberService;
import com.jsp.service.MemberServiceImpl;
import com.jsp.service.SearchMemberServiceImpl;

public class NoticeAdapter {
	
	private static MemberService memberService;
	
	static{
		memberService = new SearchMemberServiceImpl();
		SqlSessionFactory factory = new OracleMyBatisSqlSessionFactory();
		MemberDAO memberDAO = new MemberDAOImpl();
		((MemberServiceImpl)memberService).setMemberDAO(memberDAO);
		((MemberServiceImpl)memberService).setSqlSessionFactory(factory);
	}
	
	public static NoticeVOCommand toNoticeVOCommand(NoticeVO notice) throws Exception {
		NoticeVOCommand command = null;
		command = notice.toNoticeVOCommand();
		MemberVO member = memberService.getMember(notice.getWriter());
		command.setMember(member);
		
		return command;
	}
	
	public static List<NoticeVOCommand> toNoticeVOCommandList(List<NoticeVO> notices) throws Exception {
		List<NoticeVOCommand> commands = new ArrayList<NoticeVOCommand>();
		for(NoticeVO notice : notices) {
			commands.add(toNoticeVOCommand(notice));
		}
		
		return commands;
	}
	
}
