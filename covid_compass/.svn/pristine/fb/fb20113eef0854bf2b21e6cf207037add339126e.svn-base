package com.spring.compass.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.compass.vo.PstiVO;

public class InspDAOImpl implements InspDAO{

	private SqlSession sqlSession = null;
	private String nameSpace = "Insp-Mapper.";

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public PstiVO selectPstiByPstiNo(String pstiNo) throws SQLException {
		PstiVO psti = sqlSession.selectOne(nameSpace + "selectPstiByPstiNo", pstiNo);
		return psti;
	}

	@Override
	public String selectPstiSeqNextval() throws SQLException {
		String pstiSeq =  sqlSession.selectOne(nameSpace + "selectPstiSeqNextval");
		return pstiSeq;
	}

	@Override
	public String selectPstiNo(String pstiSeq) throws SQLException {
		String pstiNo =  sqlSession.selectOne(nameSpace + "selectPstiNo", pstiSeq);
		return pstiNo;
	}

	@Override
	public void insertPsti(PstiVO psti) throws SQLException {
		sqlSession.update(nameSpace + "insertPsti", psti);
	}

}
