package com.spring.compass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping("/test/main")
	public void main() {}
	
	@RequestMapping("/insp/tmpTestDatatable")
	public String tmpTestDatatable() {
		String url = "insp/tmpTestDatatable";
		return url;
	}
	
}
