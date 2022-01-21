package com.spring.compass.service;

import java.util.Map;

import com.spring.compass.command.CnfrmDgnssWaitDetailVO;
import com.spring.compass.command.SmplListDetailVO;
import com.spring.compass.command.SmplSearchCommand;

public interface PbhtServiceLMY extends PbhtService{

	public Map<String, Object> getSmplList(SmplSearchCommand cri)throws Exception;
	
	public Map<String, Object> getSmplResultList(SmplSearchCommand cri)throws Exception;
	
	public Map<String, Object> getCnfrmDgnssList(SmplSearchCommand cri)throws Exception;
	
	public Map<String, Object> getCnfrmManageList(SmplSearchCommand cri)throws Exception;
	
	public SmplListDetailVO getSmplDetail(Map<String, Object> sldData)throws Exception;
	
	public CnfrmDgnssWaitDetailVO getCnfrmDgnssWaitDetail(Map<String, Object> cdwdData)throws Exception;
}
