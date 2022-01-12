package com.spring.compass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/hspt")
public class HsptlController {

	@RequestMapping(value="main")
	public void main() {}

	@RequestMapping(value="/notice-list")
	public String list() {
		return ("hspt/notice-list");
	}

	@RequestMapping(value="/notice-regist")
	public String regist() {
		return ("hspt/notice-regist");
	}
	@RequestMapping(value="/notice-detail")
	public String detail() {
		return ("hspt/notice-detail");
	}

	@RequestMapping(value="/inptnt-detail")
	public void inptntDetail() {}

	@RequestMapping(value="/inptnt-list")
	public void inptntList() {}

	@RequestMapping(value="/dgnss-list")
	public void dgnssList() {}

	@RequestMapping(value="/sckbd-manage")
	public String manage() {
		return ("hspt/sckbd-manage");
	}
}
