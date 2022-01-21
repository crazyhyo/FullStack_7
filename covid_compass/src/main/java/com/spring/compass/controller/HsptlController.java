package com.spring.compass.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.compass.command.HsptMainSckbdCommand;
import com.spring.compass.service.HsptService;
import com.spring.compass.service.StatisticsService;
import com.spring.compass.vo.HsptStatsVO;
import com.spring.compass.vo.HsptVO;

@Controller
@RequestMapping(value="/hspt")
public class HsptlController {

	@Resource(name="hsptService")
	private HsptService hsptService;

	@Resource(name="statisticsService")
	private StatisticsService statsService;

	@RequestMapping(value="main")
	public void main(HttpSession session,HttpServletRequest request) throws Exception {
		HsptVO hspt = (HsptVO) session.getAttribute("loginInst");
		request.setAttribute("hspt", hspt);
		HsptMainSckbdCommand cmd = statsService.getMainStatsByStatsYmd(hspt.getHsptNo());
		int curInptntCnt = hspt.getSckbdCnt() - hspt.getRmndSckbdCnt();
		cmd.setCurInptntCnt(curInptntCnt);
		request.setAttribute("cmd", cmd);
		
//		HsptStatsVO stats = (HsptStatsVO) request.getAttribute("stats");
//		statsService.getHsptStatsByStatsNo(stats.getHsptStatsNo());
//		request.setAttribute("stats", stats);
	}

	@RequestMapping(value="/sckbd-request")
	public String sckbdRequest() {
		String url = "hspt/sckbd-request";
		return url;
	}

	@RequestMapping(value="/sckbd-ltct-request")
	public String sckbdLtctRequest() {
		String url = "hspt/sckbd-ltct-request";
		return url;
	}



	@RequestMapping(value="/inptnt-list")
	public void inptntList() {}

	@RequestMapping(value="/dgnss-list")
	public void dgnssList() {}

	@RequestMapping(value="/sckbd-modify")
	public String modify(HttpSession session,HttpServletRequest request) throws Exception {
		HsptVO hspt = (HsptVO) session.getAttribute("loginInst");
		request.setAttribute("hspt", hspt);
		HsptMainSckbdCommand cmd = statsService.getMainStatsByStatsYmd(hspt.getHsptNo());
		int curInptntCnt = hspt.getSckbdCnt() - hspt.getRmndSckbdCnt();
		cmd.setCurInptntCnt(curInptntCnt);
		request.setAttribute("cmd", cmd);
		return ("hspt/sckbdcnt-modify");
	}

	@RequestMapping(value="/req-sckbd-list")
	public String reqSckbdList() {
		return "hspt/req-sckbd-list";
	}
	@RequestMapping(value="/req-inptnt-list")
	public String reqInptntList() {
		return "hspt/req-inptnt-list";
	}
	@RequestMapping(value="/notice-list")
	public String noticeList() {
		String url="hspt/notice-list";

		return url;
	}
	@RequestMapping(value="/notice-detail")
	public String noticeDetail() {
		String url="hspt/notice-detail";

		return url;
	}
	@RequestMapping(value="/notice-modifyForm")
	public String noticeModifyForm() {
		String url="hspt/notice-modifyForm";

		return url;
	}
	@RequestMapping(value="/notice-registForm")
	public String noticeRegistForm() {
		String url="hspt/notice-registForm";

		return url;
	}
	@RequestMapping(value="/emp-manage-list")
	public String empList() {
		String url="hspt/emp-manage-list";

		return url;
	}

	@RequestMapping(value="/emp-manage-registform")
	public String empRegistForm() {
		String url="hspt/emp-manage-registform";

		return url;
	}
	@RequestMapping(value="/statistics")
	public String statistics() {
		String url="hspt/statistics";

		return url;
	}

}
