package com.spring.compass.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.compass.command.IsoptntListVO;
import com.spring.compass.command.LtctSearchCommand;
import com.spring.compass.command.PageMaker;
import com.spring.compass.dao.LtctDAO;
import com.spring.compass.vo.LtctVO;

public class LtctServiceImpl implements LtctService{
	
	private LtctDAO ltctDAO;
	public void setLtctDAO(LtctDAO ltctDAO) {
		this.ltctDAO = ltctDAO;
	}
	@Override
	public LtctVO getLtctByInstNo(String instNo) throws Exception {
		LtctVO ltct = ltctDAO.selectLtctByInstNo(instNo);
		return ltct;
	}
	@Override
	public String getLtctCityNo(String city) throws Exception {
		String cityNo = ltctDAO.selectLtctCityNo(city);
		return cityNo;
	}
	@Override
	public int getLtctSeqNo() throws Exception {
		int hstpSeq = ltctDAO.selectLtctNextVal();
		return hstpSeq;
	}
	@Override
	public int getInstSeqNo() throws Exception {
		int instSeq = ltctDAO.selectInstNextval();
		return instSeq;
	}
	@Override
	public void registLtct(LtctVO ltct) throws Exception {
		ltctDAO.insertLtct(ltct);
		
		
	}
	@Override
	public void registInst(LtctVO ltct) throws SQLException {
		 ltctDAO.insertInst(ltct);
		
	}
	@Override
	public Map<String, Object> getIsoptntListPage(LtctSearchCommand cri) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		PageMaker pageMaker = null;
		pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		int totalCount = ltctDAO.selectIsoptntListCount(cri);
		
		pageMaker.setTotalCount(totalCount);
		List<IsoptntListVO> isoptntList = ltctDAO.selectIsoptntList(cri);
		
		dataMap.put("isoptntList", isoptntList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

}
