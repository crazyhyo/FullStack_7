package com.spring.compass.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.compass.command.InptntListSearchCommand;
import com.spring.compass.command.InptntListVO;
import com.spring.compass.command.PageMaker;
import com.spring.compass.dao.HsptDAO;
import com.spring.compass.vo.HsptStatsVO;
import com.spring.compass.vo.HsptVO;

public class HsptServiceImpl implements HsptService{

	private HsptDAO hsptDAO;
	public void setHsptDAO(HsptDAO hsptDAO) {
		this.hsptDAO = hsptDAO;
	}

	@Override
	public HsptVO getHsptByInstNo(String instNo) throws Exception {
		HsptVO hspt = hsptDAO.selectHsptByInstNo(instNo);
		return hspt;
	}

	@Override
	public Map<String, Object> getInptntListPage(InptntListSearchCommand cri) throws Exception {

		Map<String, Object> dataMap = null;

		PageMaker pageMaker = null;

		pageMaker = new PageMaker();
		pageMaker.setCri(cri);


		System.out.println(hsptDAO == null);


		int totalCount = hsptDAO.selectInptntListCount(cri);

		System.out.println(totalCount);

		pageMaker.setTotalCount(totalCount);

		List<InptntListVO> reqInptntList = hsptDAO.selectInptntList(cri);

		dataMap = new HashMap<String, Object>();

		dataMap.put("reqInptntList", reqInptntList);
		dataMap.put("pageMaker", pageMaker);

		System.out.println(pageMaker);

		for(InptntListVO inptnt : reqInptntList) {
			System.out.println(inptnt);
		}

		return dataMap;
	}
	@Override
	public String getHsptCityNo(String city) throws Exception {
		String cityNo = hsptDAO.selectHsptCityNo(city);
		return cityNo;
	}
	@Override
	public int getHsptSeqNo() throws Exception {
		int hstpSeq = hsptDAO.selectHsptNextVal();
		return hstpSeq;
	}
	@Override
	public int getInstSeqNo() throws Exception {
		int instSeq = hsptDAO.selectInstNextval();
		return instSeq;
	}
	@Override
	public int registHspt(HsptVO hspt) throws Exception {
		int result = hsptDAO.insertHspt(hspt);
		return result;
	}
	@Override
	public int registInst(HsptVO hspt) throws Exception {
		int result = hsptDAO.insertInst(hspt);
		return result;
	}

	@Override
	public HsptStatsVO getHsptByStatsNo(String statsNo) throws Exception {
		HsptStatsVO stats = hsptDAO.selectHsptStats(statsNo);
		return stats;
	}



}
