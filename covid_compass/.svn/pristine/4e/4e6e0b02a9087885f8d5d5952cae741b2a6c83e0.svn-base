package com.spring.compass.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.compass.command.SearchCriteria;
import com.spring.compass.vo.HsptVO;
import com.spring.compass.vo.InspVO;
import com.spring.compass.vo.InstVO;
import com.spring.compass.vo.LtctVO;
import com.spring.compass.vo.MberVO;
import com.spring.compass.vo.PbhtVO;

public interface AdminDAO {
	
	public List<InspVO> selectAllInsp() throws SQLException;
	
	public List<PbhtVO> selectAllPbht() throws SQLException;
	
	public List<HsptVO> selectAllHspt() throws SQLException;
	
	public List<LtctVO> selectAllLtct() throws SQLException;
	
	public int selectAllInstCount(SearchCriteria cri) throws SQLException;
	
	public List<InstVO> selectAllInst(SearchCriteria cri) throws SQLException;
	
	public void insertInst(InstVO inst) throws SQLException;
	
	public InstVO selectInstDetail(String instNo) throws SQLException;
	
	public MberVO selectMeberByInstNo(String instNo) throws SQLException;
	

}
