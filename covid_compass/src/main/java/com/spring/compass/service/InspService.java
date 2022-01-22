package com.spring.compass.service;

import java.util.List;
import java.util.Map;

import com.spring.compass.command.InspPstiRegistCommand;
import com.spring.compass.command.InspPstiSearchCommand;
import com.spring.compass.command.InspSmplRequestCommand;
import com.spring.compass.command.VInspPstiResultVO;
import com.spring.compass.command.VInspPstiVO;
import com.spring.compass.vo.InspVO;
import com.spring.compass.vo.PcrKitVO;

public interface InspService {

	public InspVO getInspByInstNo(String instNo) throws Exception;
	
	public String getInspCityNo(String city) throws Exception;
	
	public String getInspSeqNo() throws Exception;
	
	public String getInstSeqNo() throws Exception;
	
	public int registInsp(InspVO insp) throws Exception;
	
	public int registInst(InspVO insp) throws Exception;
	
	public String getResponsibleAgency(String responsi) throws Exception;
	
	
	public Map<String, Object> getPstiListPage(InspPstiSearchCommand cri) throws Exception;
	
	public Map<String, Object> getChckdListPage(InspPstiSearchCommand cri) throws Exception;
	
	public Map<String, Object> getResultListPage(InspPstiSearchCommand cri) throws Exception;

	public VInspPstiVO getPstiDetail(String pstiNo) throws Exception;
	
	public VInspPstiResultVO getResultDetail(String pstiNo) throws Exception;
	
	public List<PcrKitVO> getPcrKitList(String inspNo) throws Exception;
	
	public int getPcrKitCount(String inspNo) throws Exception;
	
	public int getTotalKitCount(String inspNo) throws Exception;
	
	void modifyPstiInfo(VInspPstiVO psti) throws Exception;
	
	int registQuestion(InspPstiRegistCommand questionInfo) throws Exception;
	
	void registRequestSmpl(InspSmplRequestCommand smplRequestInfo) throws Exception;
	
}