package com.jsp.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.jsp.command.NoticeVOCommand;
import com.jsp.command.SearchCriteria;
import com.jsp.dataSource.OracleMyBatisSqlSessionFactory;
import com.jsp.dto.NoticeVO;
import com.jsp.utils.NoticeAdapter;


public class NoticeDAOImplTest {

	SqlSessionFactory factory = new OracleMyBatisSqlSessionFactory();	
	SqlSession session = null;
	NoticeDAOImpl noticeDAO = new NoticeDAOImpl();
	
	@Test
	public void selectPointNoticeListTest() throws Exception {
		List<NoticeVO> pointNoticeList = noticeDAO.selectPointNoticeList(session);
		Assert.assertEquals(3, pointNoticeList.size());
	}
	
	@Test
	public void selectPointNoticeListCountTest() throws Exception {
		int count = noticeDAO.selectPointNoticeListCount(session);
		Assert.assertEquals(3, count);
	}
	
	@Test
	public void selectNoticeListTest() throws Exception{
		SearchCriteria cri = new SearchCriteria("1", "10", "", "");
		List<NoticeVO> notices = noticeDAO.selectNoticeList(session, cri);
		
		List<NoticeVOCommand> commands = NoticeAdapter.toNoticeVOCommandList(notices);
		
		for(NoticeVOCommand command : commands) {
			System.out.println(command);
		}
		
		Assert.assertEquals(6, notices.size());
	}
	
	@Test
	public void selectNoticeListCountTest() throws Exception{
		SearchCriteria cri = new SearchCriteria("1", "8", "wtc", "m");
		int count = noticeDAO.selectNoticeListCount(session, cri);
		Assert.assertEquals(6, count);
	}
	
	@Test
	public void selectNoticeByNnoTest() throws Exception{
		NoticeVO notice = new NoticeVO();
		notice = noticeDAO.selectNoticeByNno(session, "3");
		Assert.assertEquals(3, notice.getNno());
	}
	
	
	@Before
	public void openTestSession() {
		session = factory.openSession();
	}
	
	@After
	public void closeTestSession() {
		session.close();
	}

}
