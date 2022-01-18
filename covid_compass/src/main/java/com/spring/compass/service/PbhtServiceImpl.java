package com.spring.compass.service;


import com.spring.compass.dao.PbhtDAO;
import com.spring.compass.vo.PbhtVO;

public class PbhtServiceImpl implements PbhtService{
	
	private PbhtDAO pbhtDAO;
	public void setPbhtDAO(PbhtDAO pbhtDAO) {
		this.pbhtDAO = pbhtDAO;
	}
	@Override
	public PbhtVO getPbhtByInstNo(String instNo) throws Exception {
		PbhtVO pbht = pbhtDAO.selectPbhtByInstNo(instNo);
		return pbht;
	}
	@Override
	public String getPbhtCityNo(String city) throws Exception {
		String cityNo = pbhtDAO.selectPbhtCityNo(city);
		return cityNo;
	}
	@Override
	public int getPbhtSeqNo() throws Exception {
		int pbhtSeq = pbhtDAO.selectPbhtNextVal();
		return pbhtSeq;
	}
	@Override
	public int getInstSeqNo() throws Exception {
		int instSeq = pbhtDAO.selectInstNextval();
		return instSeq;
	}
	@Override
	public int registPbht(PbhtVO pbht) throws Exception {
		int result = pbhtDAO.insertPbht(pbht);
		return result;
	}
	@Override
	public int registInst(PbhtVO pbht) throws Exception {
		int result = pbhtDAO.insertInst(pbht);
		return result;
	}

}
