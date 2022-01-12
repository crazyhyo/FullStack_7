package com.spring.compass.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.compass.vo.MberVO;

public class MberDAOImpl implements MberDAO {

	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public MberVO selectMberById(String id) throws SQLException {
		return sqlSession.selectOne("Mber-Mapper.selectMberById", id);
	}

}
