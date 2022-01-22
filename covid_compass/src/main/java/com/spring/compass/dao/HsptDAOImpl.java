package com.spring.compass.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.compass.command.DgnssListSearchCommand;
import com.spring.compass.command.DgnssListVO;
import com.spring.compass.command.InptntListSearchCommand;
import com.spring.compass.command.InptntListVO;
import com.spring.compass.command.ReqInptntListCommand;
import com.spring.compass.command.SckbdreqLtctListCommand;
import com.spring.compass.vo.DgnssResultVO;
import com.spring.compass.vo.HsptStatsVO;
import com.spring.compass.vo.HsptVO;
import com.spring.compass.vo.InptntVO;
import com.spring.compass.vo.IsoptntVO;
import com.spring.compass.vo.ManageVO;
import com.spring.compass.vo.SckbdreqVO;
import com.spring.compass.vo.SlfptntVO;

public class HsptDAOImpl implements HsptDAO{

	private String nameSpace = "Hspt-Mapper.";

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public HsptVO selectHsptByInstNo(String instNo) throws SQLException {
		HsptVO hspt = sqlSession.selectOne(nameSpace + "selectHsptByInstNo", instNo);
		return hspt;
	}

	@Override
	public int selectInptntListCount(InptntListSearchCommand cri) throws SQLException {
		int inptntCnt = sqlSession.selectOne(nameSpace + "selectInptntListCount", cri);
		return inptntCnt;
	}

	@Override
	public List<InptntListVO> selectInptntList(InptntListSearchCommand cri) throws SQLException {
		List<InptntListVO> inptntList = sqlSession.selectList(nameSpace + "selectInptntList", cri);
		return inptntList;
	}

	@Override
	public String selectHsptCityNo(String city) throws SQLException {
		String cityNo = sqlSession.selectOne(nameSpace+"selectHsptCityNo",city);
		return cityNo;
	}

	@Override
	public int selectHsptNextVal() throws SQLException {
		int hsptSeq = sqlSession.selectOne(nameSpace+"selectHsptNextVal");
		return hsptSeq;
	}

	@Override
	public int selectInstNextval() throws SQLException {
		int instSeq = sqlSession.selectOne(nameSpace+"selectInstNextval");
		return instSeq;
	}

	@Override
	public int insertHspt(HsptVO hspt) throws SQLException {
		int result = sqlSession.update(nameSpace+"insertHspt", hspt);

		return result;
	}

	@Override
	public int insertInst(HsptVO hspt) throws SQLException {
		int result = sqlSession.update(nameSpace+"insertInst",hspt);

		return result;
	}
	@Override
	public List<DgnssListVO> selectDgnssList(DgnssListSearchCommand cri) throws SQLException {
		List<DgnssListVO> dgnssReqList = sqlSession.selectList(nameSpace + "selectDgnssList", cri);
		return dgnssReqList;
	}

	@Override
	public int selectDgnssListCount(DgnssListSearchCommand cri) throws SQLException {
		int dgnssReqCnt = sqlSession.selectOne(nameSpace + "selectDgnssListCount", cri);
		return dgnssReqCnt;
	}

	@Override
	public int selectReqInptntListCount(InptntListSearchCommand cri) throws SQLException {
		int reqInptntCnt = sqlSession.selectOne(nameSpace + "selectReqInptntListCount", cri);
		return reqInptntCnt;
	}

	@Override
	public List<ReqInptntListCommand> selectReqInptntList(InptntListSearchCommand cri)
			throws SQLException {
		List<ReqInptntListCommand> reqInptntList = sqlSession.selectList(nameSpace + "selectReqInptntList", cri);
		return reqInptntList;
	}

	@Override
	public List<ReqInptntListCommand> selectSckbdReqHsptList(InptntListSearchCommand cri) throws SQLException {
		List<ReqInptntListCommand> reqInptntList = sqlSession.selectList(nameSpace + "selectSckbdReqHsptList", cri);
		return reqInptntList;
	}

	@Override
	public int selectSckbdReqHsptListCount(InptntListSearchCommand cri) throws SQLException {
		int sckbdreqHsptCount = sqlSession.selectOne(nameSpace + "selectSckbdReqHsptListCount", cri);
		return sckbdreqHsptCount;
	}

	@Override
	public List<SckbdreqLtctListCommand> selectSckbdReqLtctList(InptntListSearchCommand cri) throws SQLException {
		List<SckbdreqLtctListCommand> sckbdreqLtctList = sqlSession.selectList(nameSpace + "selectSckbdReqLtctList", cri);
		return sckbdreqLtctList;
	}

	@Override
	public int selectSckbdReqLtctListCount(InptntListSearchCommand cri) throws SQLException {
		int sckbdreqLtctCount = sqlSession.selectOne(nameSpace + "selectSckbdReqLtctListCount", cri);
		return sckbdreqLtctCount;
	}

	@Override
	public HsptVO selectHsptByHsptNo(String hsptNo) throws SQLException {
		HsptVO hspt = sqlSession.selectOne(nameSpace + "selectHsptByHsptNo", hsptNo);
		return hspt;
	}

	@Override
	public int updateManageChangeAll(ManageVO manage) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateManageChangeAll", manage);
		return cnt;
	}

	@Override
	public int updateManageChangeStatus(ManageVO manage) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateManageChangeStatus", manage);
		return cnt;
	}

	@Override
	public int updateManageChangeInst(ManageVO manage) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateManageChangeInst", manage);
		return cnt;
	}

	@Override
	public int insertDgnssResult(DgnssResultVO dgnssResult) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "insertDgnssResult", dgnssResult);
		return cnt;
	}

	@Override
	public int insertInptnt(InptntVO inptnt) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "insertInptnt", inptnt);
		return cnt;
	}

	@Override
	public int updateDgnssCodeChkd(String dgnssNo) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateDgnssCodeChkd", dgnssNo);
		return cnt;
	}

	@Override
	public int insertSckbdreq(SckbdreqVO sckbdreq) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "insertSckbdreq", sckbdreq);
		return cnt;
	}

	@Override
	public int updateIncreaseRmndSckbdCntByHsptNo(String hsptNo) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateIncreaseRmndSckbdCntByHsptNo", hsptNo);
		return cnt;
	}

	@Override
	public int updateDecreaseRmndSckbdCntByHsptNo(String hsptNo) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateDecreaseRmndSckbdCntByHsptNo", hsptNo);
		return cnt;
	}

	@Override
	public int insertSlfptnt(SlfptntVO slfptnt) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "insertSlfptnt", slfptnt);
		return cnt;
	}

	@Override
	public int updateIsoptnt(IsoptntVO inptnt) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateIsoptnt", inptnt);
		return cnt;
	}

	@Override
	public int updateIncreaseRmndSckbdCntByLtctNo(String ltctNo) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateIncreaseRmndSckbdCntByLtctNo", ltctNo);
		return cnt;
	}

	@Override
	public int updateDecreaseRmndSckbdCntByLtctNo(String ltctNo) throws SQLException {
		int cnt = sqlSession.update(nameSpace + "updateDecreaseRmndSckbdCntByLtctNo", ltctNo);
		return cnt;
	}



}