package com.spring.compass.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.compass.command.CnfrmDgnssListVO;
import com.spring.compass.command.CnfrmDgnssWaitDetailVO;
import com.spring.compass.command.CnfrmManageListVO;
import com.spring.compass.command.PageMaker;
import com.spring.compass.command.SmplListDetailVO;
import com.spring.compass.command.SmplSearchCommand;
import com.spring.compass.dao.PbhtDAO;
import com.spring.compass.vo.SmplVO;

public class PbhtServiceImplLMY extends PbhtServiceImpl implements PbhtServiceLMY {

	private PbhtDAO pbhtDAO;

	public void setPbhtDAO(PbhtDAO pbhtDAO) {
		this.pbhtDAO = pbhtDAO;
	}

	@Override
	public Map<String, Object> getSmplList(SmplSearchCommand cri) throws Exception {

		Map<String, Object> dataMap = null;

		PageMaker pageMaker = null;

		pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		int totalCount = pbhtDAO.selectSearchSemplListCount(cri);

		pageMaker.setTotalCount(totalCount);

		List<SmplVO> smplList = pbhtDAO.selectSmplList(cri);

		dataMap = new HashMap<String, Object>();

		dataMap.put("smplList", smplList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public Map<String, Object> getSmplResultList(SmplSearchCommand cri) throws Exception {
		Map<String, Object> dataMap = null;

		PageMaker pageMaker = null;

		pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		int totalCount = pbhtDAO.selectSearchSemplResultListCount(cri);

		pageMaker.setTotalCount(totalCount);

		List<SmplVO> smplResultList = pbhtDAO.selectSearchSmplResultList(cri);

		dataMap = new HashMap<String, Object>();
		
		dataMap.put("smplResultList", smplResultList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public Map<String, Object> getCnfrmDgnssList(SmplSearchCommand cri) throws Exception {
		Map<String, Object> dataMap = null;

		PageMaker pageMaker = null;

		pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		int totalCount = pbhtDAO.selectCnfrmDgnssListCount(cri);

		pageMaker.setTotalCount(totalCount);

		List<CnfrmDgnssListVO> cfdList = pbhtDAO.selectCnfrmDgnssList(cri);

		dataMap = new HashMap<String, Object>();
		
		dataMap.put("cfdList", cfdList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public Map<String, Object> getCnfrmManageList(SmplSearchCommand cri) throws Exception {
		Map<String, Object> dataMap = null;
		
		int totalCount;
		PageMaker pageMaker = null;
		
		pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		if(cri.getTypeCode().equals("A107")) {
			
			totalCount = pbhtDAO.selectSlfManageListCount(cri);
		}else {
			totalCount = pbhtDAO.selectCnfrmManageListCount(cri);
		}
		
		pageMaker.setTotalCount(totalCount);

		List<CnfrmManageListVO> cfmList = pbhtDAO.selectCnfrmManageList(cri);

		dataMap = new HashMap<String, Object>();
		
		dataMap.put("cfmList", cfmList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public SmplListDetailVO getSmplDetail(Map<String, Object> sldData) throws Exception {
		
		SmplListDetailVO sldVO = pbhtDAO.selectSmplDetail(sldData);
		
		return sldVO;
	}

	@Override
	public CnfrmDgnssWaitDetailVO getCnfrmDgnssWaitDetail(Map<String, Object> cdwdData) throws Exception {
		CnfrmDgnssWaitDetailVO cdwdVO = pbhtDAO.selectCnfrmDgnssWaitDetail(cdwdData);
		return cdwdVO;
	}


}
