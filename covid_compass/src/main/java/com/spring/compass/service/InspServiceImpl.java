package com.spring.compass.service;

import java.sql.SQLException;

import com.spring.compass.dao.InspDAO;
import com.spring.compass.vo.PstiVO;

public class InspServiceImpl implements InspService{

	private InspDAO inspDAO = null;

	public void setInspDAO(InspDAO inspDAO) {
		this.inspDAO = inspDAO;
	}

	@Override
	public void registPsti(PstiVO psti) throws SQLException {
		String pstiSeq = inspDAO.selectPstiSeqNextval();
		String pstiNo = inspDAO.selectPstiNo(pstiSeq);
		psti.setPstiNo(pstiNo);
		inspDAO.insertPsti(psti);
	}


}
