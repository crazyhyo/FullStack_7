package com.spring.compass.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.compass.command.SearchCriteria;
import com.spring.compass.service.PstiService;
import com.spring.compass.vo.InspVO;
import com.spring.compass.vo.PstiVO;

@Controller
public class GuestController {
	
	@Autowired
	private PstiService pstiService;
	
	public void setPstiService(PstiService pstiService) {
		this.pstiService = pstiService;
	}
	
	@RequestMapping("/guest/guest-main")
	public String guest() {
		String url ="guest/guest-main";
		return url;
	}
	@RequestMapping("/guest/question")
	public ModelAndView question(String inspNo, ModelAndView mnv) {
		String url ="guest/question";
		
		mnv.addObject("inspNo", inspNo);
		mnv.setViewName(url);
		
		return mnv;
	}
	@RequestMapping("/guest/chart")
	public String guestChart() {
		String url="guest/guest-chart";
		
		return url;
	}
	
	@RequestMapping("/guest/insp-list")
	public ModelAndView inspList(ModelAndView mnv, @RequestParam(defaultValue="1")int page,
			 @RequestParam(defaultValue="15")int perPageNum,
			 @RequestParam(defaultValue="")String keyword)throws Exception {
		String url="guest/insp-list";
		String searchType = "";
		SearchCriteria cri = new SearchCriteria(page, perPageNum, searchType, keyword);
		
		System.out.println(cri);
		
		Map<String, Object> dataMap = pstiService.getinspList(cri);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/guest/gogo")
	public String guestRegist(PstiVO psti) throws Exception {
		String url="guest/regist_success";
		
		String city = psti.getPstiAdres().split(" ")[0];
		
		String cityNo= pstiService.getPstiCityNo(city);
		String pstiNo = Integer.toString(pstiService.getPstiNextVal());
		
		psti.setAreaNo(cityNo);
		psti.setPstiNo(pstiNo);
		
		System.out.println(psti);
		
		
		int cnt = pstiService.registPsti(psti);
		
		if(cnt > 0) {
			System.out.println("성공맨");
		}
		
		System.out.println("또잉");
		System.out.println(psti.toString());
		
		return url;
	}
	
	@RequestMapping("/guest/testResultCheck")
	public String testResultCheck() {
		
		String url = "guest/testResultCheck";
		
		return url;
		
	}
}
