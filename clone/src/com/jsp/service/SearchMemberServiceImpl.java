package com.jsp.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.jsp.command.Criteria;
import com.jsp.command.PageMaker;
import com.jsp.command.SearchCriteria;
import com.jsp.dto.MemberVO;

public class SearchMemberServiceImpl extends MemberServiceImpl{

	@Override
	public Map<String, Object> getMemberListPage(Criteria cri) throws Exception {
		
		SearchCriteria searchCri = (SearchCriteria)cri;
		Map<String, Object> dataMap = null;
		
		SqlSession session = sqlSessionFactory.openSession(false);
		
		try {
			
			List<MemberVO> memberList = null;
			PageMaker pageMaker = null;
			
			memberList = memberDAO.selectMemberList(session, searchCri);
			pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(memberDAO.selectMemberListCount(session, searchCri));
			
			dataMap = new HashMap<String, Object>();
			dataMap.put("memberList", memberList);
			dataMap.put("pageMaker", pageMaker);
			
			session.commit();
			
		}catch(Exception e) {
			
			session.rollback();
			e.printStackTrace();
			
			throw e;
		}finally {
			session.close();
		}
		return dataMap;

	}
	
	@Override
	public MemberVO getMember(String id) throws Exception {
		MemberVO member = null;
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			member = memberDAO.selectMemberById(session, id);
			session.commit();
		}finally {
			session.close();
		}
		
		return member;
	}

	@Override
	public int registMember(MemberVO member) throws Exception {
		int registNum = 0;
		
		SqlSession session = sqlSessionFactory.openSession();
		try {
			registNum = memberDAO.insertMember(session, member);
			session.commit();
		} catch(Exception e) {
			session.rollback();
			e.printStackTrace();
			throw e;
		} finally {
			session.close();
		}
		return registNum;
	}

	@Override
	public List<MemberVO> getAuthorizedMemberList() throws Exception {
		SqlSession session = sqlSessionFactory.openSession(false);
		List<MemberVO> memberList = new ArrayList<MemberVO>();
		try {
			
			memberList = memberDAO.selectAuthorizedMemberList(session);
			
			session.commit();
			
		}catch(Exception e) {
			
			session.rollback();
			e.printStackTrace();
			
			throw e;
		}finally {
			session.close();
		}
		return memberList;
	}
}
