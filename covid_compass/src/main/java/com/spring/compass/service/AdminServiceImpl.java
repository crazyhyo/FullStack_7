package com.spring.compass.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.compass.command.PageMaker;
import com.spring.compass.command.SearchCriteria;
import com.spring.compass.dao.AdminDAO;
import com.spring.compass.vo.InstVO;
import com.spring.compass.vo.MberVO;



public class AdminServiceImpl implements AdminService{
	
	private AdminDAO adminDAO;
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	


	@Override
	public void registInst(InstVO inst) throws Exception {
		adminDAO.insertInst(inst);
	}




	@Override
	public Map<String, Object> getInstListPage(SearchCriteria cri) throws Exception {
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		PageMaker pageMaker = null;
		
		pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		int totalCount = adminDAO.selectAllInstCount(cri);
		
		pageMaker.setTotalCount(totalCount);
		
		List<InstVO> instList = adminDAO.selectAllInst(cri);
		for(int i=0; i<instList.size(); i++) {
			String checkDivision=instList.get(i).getChildNo();
			String check = checkDivision.substring(0, 4);
			//System.out.println("-----------------------------------------"+i+check);
			if(check.equals("INSP")) {
				instList.get(i).setDivision("검사소");
			}
			if(check.equals("PBHT")) {
				instList.get(i).setDivision("보건소");
			}
			if(check.equals("HSPT")) {
				instList.get(i).setDivision("병원");
			}
			if(check.equals("LTCT")) {
				instList.get(i).setDivision("생활치료센터");
			}
		}
		dataMap.put("instList", instList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}




	@Override
	public InstVO getInstDetail(String instNo) throws Exception {
		InstVO inst = adminDAO.selectInstDetail(instNo);
		
		String childNo = inst.getChildNo();
		String checkDivision = childNo.substring(0, 4);
		
		if(checkDivision.equals("INSP")) {
			inst.setDivision("검사소");
		}
		if(checkDivision.equals("PBHT")) {
			inst.setDivision("보건소");
		}
		if(checkDivision.equals("HSPT")) {
			inst.setDivision("병원");
		}
		if(checkDivision.equals("LTCT")) {
			inst.setDivision("생활치료센터");
		}
		
		return inst;
	}




	@Override
	public MberVO getMberDetail(String instNo) throws Exception {
		return null;
	}




	@Override
	public Map<String, Object> getAllInstDetail(String instNo) throws Exception {
		Map<String, Object> instMap = new HashMap<String, Object>();
		InstVO inst = adminDAO.selectInstDetail(instNo);
		
		String childNo = inst.getChildNo();
		String checkDivision = childNo.substring(0, 4);
		
		if(checkDivision.equals("INSP")) {
			inst.setDivision("검사소");
		}
		if(checkDivision.equals("PBHT")) {
			inst.setDivision("보건소");
		}
		if(checkDivision.equals("HSPT")) {
			inst.setDivision("병원");
		}
		if(checkDivision.equals("LTCT")) {
			inst.setDivision("생활치료센터");
		}
		
		MberVO mber = adminDAO.selectMeberByInstNo(instNo);
		
		instMap.put("inst", inst);
		instMap.put("mber", mber);
		
		return instMap;
	}

	


}
