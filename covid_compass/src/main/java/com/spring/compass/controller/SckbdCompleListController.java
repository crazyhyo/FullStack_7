package com.spring.compass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SckbdCompleListController {

@RequestMapping("sckbd-complelist")

public String regist() {
	return ("hsptl/sckbd-complelist");
}
}
