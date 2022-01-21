package com.spring.compass.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.spring.compass.command.CnfrmDgnssListVO;
import com.spring.compass.command.CnfrmDgnssWaitDetailVO;
import com.spring.compass.command.CnfrmManageListVO;
import com.spring.compass.command.SmplListDetailVO;
import com.spring.compass.command.SmplSearchCommand;
import com.spring.compass.vo.PbhtVO;
import com.spring.compass.vo.SmplVO;

public interface PbhtDAO {
	
	/**
	 * 인풋 : 기관번호
	 * 아웃풋 : 해당기관번호를 가지는 보건소 vo
	 * @param instNo
	 * @return
	 * @throws SQLException
	 */
	public PbhtVO selectPbhtByInstNo(String instNo) throws SQLException;
	
	/**
	 * 인풋 : 없음
	 * 아웃풋: 해당보건소 지역번호
	 * @param 
	 * @return String
	 * @throws SQLException
	 * 
	 */
	public String selectPbhtCityNo(String city) throws SQLException;
	
	/**
	 * 인풋 : 없음
	 * 아웃풋: 보건소 시퀀스번호
	 * @param 
	 * @return String
	 * @throws SQLException
	 * 
	 */
	public int selectPbhtNextVal() throws SQLException;
	
	/**
	 * 인풋 : 없음
	 * 아웃풋: 기관 시퀀스번호
	 * @param 
	 * @return String
	 * @throws SQLException
	 * 
	 */
	public int selectInstNextval() throws SQLException;
	
	/**
	 * 인풋 : pbhtvo
	 * 아웃풋: int
	 * @param 
	 * @return int
	 * @throws SQLException
	 * 
	 */
	public int insertPbht(PbhtVO pbht) throws SQLException;
	
	/**
	 * 인풋 : pbhtvo
	 * 아웃풋: int
	 * @param 
	 * @return int
	 * @throws SQLException
	 * 
	 */
	public int insertInst(PbhtVO pbht) throws SQLException;
	
	
	public PbhtVO selectPbhtByPbhtNo(String pbhtNo) throws SQLException;
	// 요청시료
	public List<SmplVO> selectSmplList(SmplSearchCommand cri)throws SQLException;
	public int selectSearchSemplListCount(SmplSearchCommand cri)throws SQLException;
	public SmplListDetailVO selectSmplDetail(Map<String, Object> sldData) throws SQLException;
	
	
	// 결과조회
	public List<SmplVO> selectSearchSmplResultList(SmplSearchCommand cri)throws SQLException;
	public int selectSearchSemplResultListCount(SmplSearchCommand cri)throws SQLException;
	
	
	// 진료요청 리스트
	public List<CnfrmDgnssListVO> selectCnfrmDgnssList(SmplSearchCommand cri)throws SQLException;
	public int selectCnfrmDgnssListCount(SmplSearchCommand cri)throws SQLException;
	public CnfrmDgnssWaitDetailVO selectCnfrmDgnssWaitDetail(Map<String, Object> cdwdData)throws SQLException;
	
	
	// 확진자 및 자가격리자 리스트
	public List<CnfrmManageListVO> selectCnfrmManageList(SmplSearchCommand cri)throws SQLException;
	public int selectCnfrmManageListCount(SmplSearchCommand cri)throws SQLException;
	public int selectSlfManageListCount(SmplSearchCommand cri)throws SQLException;
	
	
			
	
}
