package com.spring.compass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/insp")
public class InspController {

	@RequestMapping(value="main")
	public void main() {}
	
	@RequestMapping(value="/psti-list")
	public void pstiList() {}

	@RequestMapping(value="/chckd-psti-list")
	public void chckdPstiList() {}
	
	@RequestMapping(value="/res-psti-list")
	public void resPstiList() {}
	
	@RequestMapping(value="/psti-registform")
	public void pstiRegistform() {}
	
	@RequestMapping("pcrKitForm")
	public void pcrKitForm() {}
	
	@RequestMapping(value="/qrcode")
	public void qrcode() {
	}
}
