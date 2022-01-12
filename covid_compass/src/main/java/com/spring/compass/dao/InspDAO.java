package com.spring.compass.dao;

import java.sql.SQLException;

import com.spring.compass.vo.PstiVO;

public interface InspDAO {

	/**
	 * 인풋 : 피검자 번호
	 * 아웃풋 : 피검자VO
	 * @param pstiNo
	 * @return
	 * @throws SQLException
	 */
	public PstiVO selectPstiByPstiNo(String pstiNo) throws SQLException;

	/**
	 * 인풋 : 없음
	 * 아웃풋 : pstiSeq의 다음 값
	 * @return
	 * @throws SQLException
	 */
	public String selectPstiSeqNextval() throws SQLException;

	/**
	 * 인풋 : pstiSeq 값
	 * 아웃풋 : psti의 pk 값 (PSTI + yyyyMMdd + pstiSeq)
	 * @param pstiSeq
	 * @return
	 * @throws SQLException
	 */
	public String selectPstiNo(String pstiSeq) throws SQLException;

	/**
	 * 인풋 : pstiVO
	 * 아웃풋 : 없음
	 * @param pstiVO
	 * @throws SQLException
	 */
	public void insertPsti(PstiVO psti) throws SQLException;


}
