package com.spring.compass.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.compass.vo.LtctVO;

public class LtctDAOImpl implements LtctDAO{
	
	private String nameSpace = "Ltct-Mapper.";
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession; 
	}
	
	@Override
	public LtctVO selectLtctByInstNo(String instNo) throws SQLException {
		LtctVO ltct = sqlSession.selectOne(nameSpace + "selectLtctByInstNo", instNo);
		return ltct;
	}

	@Override
	public String selectLtctCityNo(String city) throws SQLException {
		String cityNo = sqlSession.selectOne(nameSpace+"selectLtctCityNo",city);
		return cityNo;
	}

	@Override
	public int selectLtctNextVal() throws SQLException {
		int ltctSeq = sqlSession.selectOne(nameSpace+"selectLtctNextVal");
		return ltctSeq;
	}

	@Override
	public int selectInstNextval() throws SQLException {
		int instSeq = sqlSession.selectOne(nameSpace+"selectInstNextval");
		return instSeq;
	}

	@Override
	public int insertLtct(LtctVO hspt) throws SQLException {
		int result = sqlSession.update(nameSpace+"insertLtct", hspt);
		
		return result;
	}

	@Override
	public int insertInst(LtctVO hspt) throws SQLException {
		int result = sqlSession.update(nameSpace+"insertInst",hspt);
		
		return result;
	}

	@Override
	public LtctVO selectLtctByLtctNo(String ltctNo) throws SQLException {
		LtctVO ltct = sqlSession.selectOne(nameSpace + "selectLtctByLtctNo", ltctNo);
		return ltct;
	}

}
