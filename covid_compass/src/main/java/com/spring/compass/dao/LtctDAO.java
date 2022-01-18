package com.spring.compass.dao;

import java.sql.SQLException;

import com.spring.compass.vo.LtctVO;

public interface LtctDAO {
	
	/**
	 * 인풋 : 기관번호
	 * 아웃풋 : 해당기관번호를 가지는 생활치료센터 vo
	 * @param instNo
	 * @return
	 * @throws SQLException
	 */
	public LtctVO selectLtctByInstNo(String instNo) throws SQLException;
	
	public String selectLtctCityNo(String city) throws SQLException;
	
	public int selectLtctNextVal() throws SQLException;
	
	public int selectInstNextval() throws SQLException;
	
	public int insertLtct(LtctVO hspt) throws SQLException;
	
	public int insertInst(LtctVO hspt) throws SQLException;
	
	public LtctVO selectLtctByLtctNo(String ltctNo) throws SQLException;

}
