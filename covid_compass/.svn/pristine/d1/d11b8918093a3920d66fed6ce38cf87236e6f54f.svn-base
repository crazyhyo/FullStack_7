package com.spring.compass.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.compass.command.SearchCriteria;
import com.spring.compass.vo.HsptVO;
import com.spring.compass.vo.InspVO;
import com.spring.compass.vo.InstVO;
import com.spring.compass.vo.LtctVO;
import com.spring.compass.vo.MberVO;
import com.spring.compass.vo.PbhtVO;

public class AdminDAOImpl implements AdminDAO{
	
	private String namespace="Admin-Mapper.";
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession= sqlSession;
	}
	
	@Override
	public List<InspVO> selectAllInsp() throws SQLException {
		List<InspVO> inspList = sqlSession.selectList(namespace+"selectAllInsp");
		return inspList;
	}

	@Override
	public List<PbhtVO> selectAllPbht() throws SQLException {
		List<PbhtVO> pbhtList = sqlSession.selectList(namespace+"selectAllPbht");
		return pbhtList;
	}

	@Override
	public List<HsptVO> selectAllHspt() throws SQLException {
		List<HsptVO> hsptList = sqlSession.selectList(namespace+"selectAllHspt");
		return hsptList;
	}

	@Override
	public List<LtctVO> selectAllLtct() throws SQLException {
		List<LtctVO> ltctList = sqlSession.selectList(namespace+"selectAllLtct");
		return ltctList;
	}

	@Override
	public List<InstVO> selectAllInst(SearchCriteria cri) throws SQLException {
		List<InstVO> instList = sqlSession.selectList(namespace+"selectAllInst", cri);
		return instList;
	}

	@Override
	public void insertInst(InstVO inst) throws SQLException {
		sqlSession.update(namespace+"insertInst", inst);
	}

	@Override
	public int selectAllInstCount(SearchCriteria cri) throws SQLException {
		int count = sqlSession.selectOne(namespace+"selectAllInstCount", cri);
		return count;
	}

	@Override
	public InstVO selectInstDetail(String instNo) throws SQLException {
		InstVO inst = sqlSession.selectOne(namespace+"selectInstDetail", instNo);
		return inst;
	}

	@Override
	public MberVO selectMeberByInstNo(String instNo) throws SQLException {
		MberVO mber = sqlSession.selectOne(namespace+"selectMeberByInstNo", instNo);
		return mber;
	}

}
