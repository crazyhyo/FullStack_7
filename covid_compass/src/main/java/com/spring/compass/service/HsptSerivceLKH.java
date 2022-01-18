package com.spring.compass.service;

import java.util.Map;

import com.spring.compass.command.DgnssListSearchCommand;
import com.spring.compass.command.InptntListSearchCommand;

public interface HsptSerivceLKH extends HsptService{

	public  Map<String, Object> getDgnssList(DgnssListSearchCommand cri) throws Exception;
	
	public Map<String, Object> getReqInptntList(InptntListSearchCommand cri) throws Exception;
	
}
