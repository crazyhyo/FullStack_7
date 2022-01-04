package com.spring.compass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pbhlth")
public class PbhlthController {

	@RequestMapping(value="main")
	public void main() {}
}
