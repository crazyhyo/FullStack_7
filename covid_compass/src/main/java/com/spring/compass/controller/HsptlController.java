package com.spring.compass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hsptl")
public class HsptlController {

	@RequestMapping("/main")
	public void main() {}
	
	@RequestMapping("notice-list")
	public String list() {
		return ("hsptl/notice-list");
	}
	
	@RequestMapping("notice-regist")
	public String detail() {
		return ("hsptl/notice-detail");
	}
	
	@RequestMapping("inptnt-detail")
	public void inptntDetail() {}
	
	@RequestMapping("inptnt-list")
	public void inptntList() {}
}