package com.spring.compass.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.compass.vo.PbhtVO;

public class PbhtDAOImpl implements PbhtDAO{
	
	private String nameSpace = "Pbht-Mapper.";
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession; 
	}
	
	@Override
	public PbhtVO selectPbhtByInstNo(String instNo) throws SQLException {
		PbhtVO pbht = sqlSession.selectOne(nameSpace + "selectPbhtByInstNo", instNo);
		return pbht;
	}

	@Override
	public String selectPbhtCityNo(String city) throws SQLException {
		String cityNo = sqlSession.selectOne(nameSpace+"selectPbhtCityNo",city);
		return cityNo;
	}

	@Override
	public int selectPbhtNextVal() throws SQLException {
		int pbhtSeq = sqlSession.selectOne(nameSpace+"selectPbhtNextVal");
		return pbhtSeq;
	}

	@Override
	public int selectInstNextval() throws SQLException {
		int instSeq = sqlSession.selectOne(nameSpace+"selectInstNextval");
		return instSeq;
	}

	@Override
	public int insertPbht(PbhtVO pbht) throws SQLException {
		int result = sqlSession.update(nameSpace+"insertPbht", pbht);
		return result;
	}

	@Override
	public int insertInst(PbhtVO pbht) throws SQLException {
		int result = sqlSession.update(nameSpace+"insertInst",pbht);
		return result;
	}

	@Override
	public PbhtVO selectPbhtByPbhtNo(String pbhtNo) throws SQLException {
		PbhtVO pbht = sqlSession.selectOne(nameSpace + "selectPbhtByPbhtNo", pbhtNo);
		return pbht;
	}

}
