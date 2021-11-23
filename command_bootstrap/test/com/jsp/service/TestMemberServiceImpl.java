package com.jsp.service;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.jsp.dao.MemberDAO;
import com.jsp.dao.MemberDAOImpl;
import com.jsp.dto.MemberVO;

public class TestMemberServiceImpl {

	private MemberService memberService = new MemberServiceImpl();
	private SqlSessionFactory sqlSessionFactory;
	private MemberDAO memberDAO = new MemberDAOImpl();
	
	private SqlSession session;
	
	{
        String config = "com/jsp/myBatis/config/sqlConfig.xml";

        try {
            Reader reader = Resources.getResourceAsReader(config);

            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            reader.close();
        } catch(Exception e){
            e.printStackTrace();
        }

    }
	
	{
		((MemberServiceImpl)memberService).setMemberDAO(new MockMemberDAOImpl());
	}
	
	@Test
	public void testGetMemberList() throws Exception{
		List<MemberVO> memberList = memberService.getMemberList();
		
		Assert.assertEquals(10, memberList.size());
	}
	
}
