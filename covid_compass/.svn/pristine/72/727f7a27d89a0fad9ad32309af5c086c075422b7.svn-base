package com.spring.compass.service;

import java.sql.SQLException;

import com.spring.compass.dao.LtctDAO;
import com.spring.compass.vo.LtctVO;

public class LtctServiceImpl implements LtctService{
	
	private LtctDAO ltctDAO;
	public void setLtctDAO(LtctDAO ltctDAO) {
		this.ltctDAO = ltctDAO;
	}
	@Override
	public LtctVO getLtctByInstNo(String instNo) throws Exception {
		LtctVO ltct = ltctDAO.selectLtctByInstNo(instNo);
		return ltct;
	}
	@Override
	public String getLtctCityNo(String city) throws Exception {
		String cityNo = ltctDAO.selectLtctCityNo(city);
		return cityNo;
	}
	@Override
	public int getLtctSeqNo() throws Exception {
		int hstpSeq = ltctDAO.selectLtctNextVal();
		return hstpSeq;
	}
	@Override
	public int getInstSeqNo() throws Exception {
		int instSeq = ltctDAO.selectInstNextval();
		return instSeq;
	}
	@Override
	public void registLtct(LtctVO ltct) throws Exception {
		ltctDAO.insertLtct(ltct);
		
		
	}
	@Override
	public void registInst(LtctVO ltct) throws SQLException {
		 ltctDAO.insertInst(ltct);
		
	}

}
