package com.spring.compass.service;


import java.util.Map;

import com.spring.compass.command.LtctSearchCommand;
import com.spring.compass.vo.LtctVO;

public interface LtctService {

	public LtctVO getLtctByInstNo(String instNo) throws Exception;
	
	public String getLtctCityNo(String city) throws Exception;
	
	public int getLtctSeqNo() throws Exception;
	
	public int getInstSeqNo() throws Exception;
	
	public void registLtct(LtctVO ltct) throws Exception;
	
	public void registInst(LtctVO ltct) throws Exception;
	
	public Map<String, Object> getIsoptntListPage(LtctSearchCommand cri) throws Exception;
	
}
