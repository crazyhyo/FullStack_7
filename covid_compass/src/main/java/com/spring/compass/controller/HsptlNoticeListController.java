package com.spring.compass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HsptlNoticeListController {

@RequestMapping("notice-list")
public String list() {
	return ("hsptl/notice-list");
}
}
