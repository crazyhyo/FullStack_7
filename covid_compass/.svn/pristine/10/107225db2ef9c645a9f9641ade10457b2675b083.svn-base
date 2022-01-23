package com.spring.compass.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.struts.chain.commands.CreateActionForm;

import com.spring.compass.command.CnfrmDgnssListVO;
import com.spring.compass.command.CnfrmDgnssWaitDetailVO;
import com.spring.compass.command.CnfrmManageListVO;
import com.spring.compass.command.SmplListDetailVO;
import com.spring.compass.command.SmplSearchCommand;
import com.spring.compass.vo.PbhtVO;
import com.spring.compass.vo.SmplVO;

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

	@Override
	public List<SmplVO> selectSmplList(SmplSearchCommand cri) throws SQLException {
		
		int offset=cri.getStartRowNum() - 1;
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);
		
		List<SmplVO> smplList = sqlSession.selectList(nameSpace + "selectSmplList", cri, rowBounds);
		return smplList;
	}

	@Override
	public int selectSearchSemplListCount(SmplSearchCommand cri) throws SQLException {
		int count = sqlSession.selectOne(nameSpace + "selectSearchSemplListCount", cri);
		return count;
	}

	@Override
	public List<SmplVO> selectSearchSmplResultList(SmplSearchCommand cri) throws SQLException {
		
		int offset=cri.getStartRowNum() - 1;
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);
		List<SmplVO> smplResultList = sqlSession.selectList(nameSpace + "selectSearchSemplResultList", cri,rowBounds);
		return smplResultList;
	}

	@Override
	public int selectSearchSemplResultListCount(SmplSearchCommand cri) throws SQLException {
		int count = sqlSession.selectOne(nameSpace + "selectSearchSemplResultListCount", cri);
		return count;
	}

	@Override
	public List<CnfrmDgnssListVO> selectCnfrmDgnssList(SmplSearchCommand cri) throws SQLException {
		
		int offset=cri.getStartRowNum() - 1;
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);
		List<CnfrmDgnssListVO> cfdList = sqlSession.selectList(nameSpace + "selectCnfrmDgnssList", cri, rowBounds);
		
		return cfdList;
	}

	@Override
	public int selectCnfrmDgnssListCount(SmplSearchCommand cri) throws SQLException {
		
		int cnt = sqlSession.selectOne(nameSpace + "selectCnfrmDgnssListCount", cri);
		
		return cnt;
	}

	@Override
	public List<CnfrmManageListVO> selectCnfrmManageList(SmplSearchCommand cri) throws SQLException {

		int offset=cri.getStartRowNum() - 1;
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);
		List<CnfrmManageListVO> cfmList = sqlSession.selectList(nameSpace + "selectCnfrmManageList", cri, rowBounds);
		return cfmList;
	}

	@Override
	public int selectCnfrmManageListCount(SmplSearchCommand cri) throws SQLException {
		int cnt = sqlSession.selectOne(nameSpace + "selectCnfrmManageListCount", cri);
		return cnt;
	}

	@Override
	public int selectSlfManageListCount(SmplSearchCommand cri) throws SQLException {
		int cnt = sqlSession.selectOne(nameSpace + "selectSlfManageListCount", cri);
		return cnt;
	}

	@Override
	public SmplListDetailVO selectSmplDetail(Map<String, Object> sldData) throws SQLException {
		SmplListDetailVO sldVO = sqlSession.selectOne(nameSpace + "selectSmplDetail", sldData);
		
		return sldVO;
	}

	@Override
	public CnfrmDgnssWaitDetailVO selectCnfrmDgnssWaitDetail(Map<String, Object> cdwdData) throws SQLException {
		
		CnfrmDgnssWaitDetailVO cdwdVO = sqlSession.selectOne(nameSpace + "selectCnfrmDgnssWaitDetail", cdwdData);
		return cdwdVO;
	}

}
