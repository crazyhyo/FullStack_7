package com.spring.compass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DgnssListController {

	@RequestMapping("/dgnss-list") //진료요청 목록
	public String list() {
		return "hsptl/dgnss-list";

	}

	@RequestMapping("/dgnss/dgnss-detail") //진료요청목록 디테일
	public String detail() {
		return ("hsptl/dgnss-detail");
	}
}
