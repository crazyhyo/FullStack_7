package com.spring.compass.service;

import java.sql.SQLException;

import com.spring.compass.vo.PbhtVO;

public interface PbhtService {

	public PbhtVO getPbhtByInstNo(String instNo) throws Exception;
	
	public String getPbhtCityNo(String city) throws Exception;
	
	public int getPbhtSeqNo() throws Exception;
	
	public int getInstSeqNo() throws Exception;
	
	public int registPbht(PbhtVO pbht) throws Exception;
	
	public int registInst(PbhtVO pbht) throws Exception;
	
}
