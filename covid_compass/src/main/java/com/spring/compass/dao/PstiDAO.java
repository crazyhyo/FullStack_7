package com.spring.compass.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.compass.command.SearchCriteria;
import com.spring.compass.command.VPstiCommand;
import com.spring.compass.vo.DgnssResultVO;
import com.spring.compass.vo.InspVO;
import com.spring.compass.vo.PstiVO;
import com.spring.compass.vo.SckbdreqVO;
import com.spring.compass.vo.SmplResultVO;

public interface PstiDAO {
	
	public PstiVO selectPstiByPstiNo(String pstiNo) throws SQLException;
	
	public PstiVO selectPstiByManageNo(String manageNo) throws SQLException;
	
	public List<PstiVO> selectPstiListByInspNo(String inspNo) throws SQLException;
	
	public int registPsti(PstiVO psti) throws SQLException;
	
	public int selectPstiNextVal()throws SQLException;
	
	public String selectPstiCityNo(String city)throws SQLException;
	
	public List<InspVO> selectInspList(SearchCriteria cri)throws SQLException;
	
	public int selectSearchInspListCount(SearchCriteria cri)throws SQLException;
	
	public VPstiCommand selectVPstiByPstiNo(String pstiNo) throws SQLException;
	
	public VPstiCommand selectVPstiByManageNo(String manageNo) throws SQLException;
	
	public SmplResultVO selectVSmplResultBySmplNo(String smplNo) throws SQLException;
	
	public SmplResultVO selectVSmplResultByManageNo(String manageNo) throws SQLException;
	
	public DgnssResultVO selectVDgnssResultByManageNo(String manageNo) throws SQLException;
	
	public DgnssResultVO selectVDgnssResultByDgnssNo(String dgnssNo) throws SQLException;
	
	public SckbdreqVO selectSckbdreqBySckbdreqNo(String sckbdreqNo) throws SQLException;
	
	public SckbdreqVO selectSckbdreqByManageNo(String manageNo) throws SQLException;
	
	
}
