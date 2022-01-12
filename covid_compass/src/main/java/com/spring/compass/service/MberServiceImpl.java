package com.spring.compass.service;

import com.spring.compass.dao.MberDAO;
import com.spring.compass.vo.MberVO;

public class MberServiceImpl implements MberService{

	private MberDAO mberDAO;
	
	public void setMberDAO(MberDAO mberDAO) {
		this.mberDAO = mberDAO;
	}
	
	@Override
	public MberVO getMember(String id) throws Exception {
		return mberDAO.selectMberById(id);
	}

}
