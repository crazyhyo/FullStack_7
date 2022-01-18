package com.spring.compass.service;

import com.spring.compass.command.VPstiCommand;
import com.spring.compass.dao.PstiDAO;
import com.spring.compass.vo.DgnssResultVO;
import com.spring.compass.vo.SckbdreqVO;
import com.spring.compass.vo.SmplResultVO;

public class PstiServiceImplLKH extends PstiServiceImpl implements PstiServiceLKH{

	private PstiDAO pstiDAO;
	public void setPstiDAO(PstiDAO pstiDAO) {
		this.pstiDAO = pstiDAO;
	}
	
	@Override
	public VPstiCommand getVPstiByPstiNo(String pstiNo) throws Exception {
		VPstiCommand vPsti = pstiDAO.selectVPstiByPstiNo(pstiNo);
		return vPsti;
	}

	@Override
	public VPstiCommand getVPstiByManageNo(String manageNo) throws Exception {
		VPstiCommand vPsti = pstiDAO.selectVPstiByManageNo(manageNo);
		return vPsti;
	}

	@Override
	public SmplResultVO getVSmplResultByManageNo(String manageNo) throws Exception {
		SmplResultVO smplRes = pstiDAO.selectVSmplResultByManageNo(manageNo);
		return smplRes;
	}

	@Override
	public SmplResultVO getVSmplResultBySmplNo(String smplNo) throws Exception {
		SmplResultVO smplRes = pstiDAO.selectVSmplResultBySmplNo(smplNo);
		return smplRes;
	}

	@Override
	public DgnssResultVO getVDgnssResultByDgnssNo(String dgnssNo) throws Exception {
		DgnssResultVO dgnssRes = pstiDAO.selectVDgnssResultByDgnssNo(dgnssNo);
		return dgnssRes;
	}

	@Override
	public DgnssResultVO getVDgnssResultByManageNo(String manageNo) throws Exception {
		DgnssResultVO dgnssRes = pstiDAO.selectVDgnssResultByManageNo(manageNo);
		return dgnssRes;
	}

	@Override
	public SckbdreqVO getSckbdreqBySckbdreqNo(String sckbdreqNo) throws Exception {
		SckbdreqVO sckbdreq = pstiDAO.selectSckbdreqBySckbdreqNo(sckbdreqNo); 
		return sckbdreq;
	}

	@Override
	public SckbdreqVO getSckbdreqByManageNo(String manageNo) throws Exception {
		SckbdreqVO sckbdreq = pstiDAO.selectSckbdreqByManageNo(manageNo);
		return sckbdreq;
	}

}
