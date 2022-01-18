package com.spring.compass.service;


import com.spring.compass.vo.LtctVO;

public interface LtctService {

	public LtctVO getLtctByInstNo(String instNo) throws Exception;
	
	public String getLtctCityNo(String city) throws Exception;
	
	public int getLtctSeqNo() throws Exception;
	
	public int getInstSeqNo() throws Exception;
	
	public void registLtct(LtctVO ltct) throws Exception;
	
	public void registInst(LtctVO ltct) throws Exception;
	
}
