package com.spring.compass.controller;

import java.io.FileInputStream;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.compass.command.instRegistCommand;

@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Resource(name="instPath")
	private String instPath;
	
	@RequestMapping("main")
	public String adminMain() {
		String url="admin/main";
		return url;
	}

	@RequestMapping("/inst-list")
	public String insttList() {
		String url="admin/inst-list";

		return url;
	}

	@RequestMapping("/inst-registForm")
	public String insttRegistForm() {
		String url="admin/inst-registForm";

		return url;
	}
	@RequestMapping(value="/inst-regist", method=RequestMethod.POST)
	public String insttRegist(instRegistCommand registCommand)throws Exception{
		System.out.println("안녕");

		String url="";
		String writer=registCommand.getWriter();
		String inst = registCommand.getInst();
		String fileName =registCommand.getFileName();

		System.out.println("writer:"+writer);
		System.out.println("inst:"+inst);
		System.out.println("fileName:"+fileName);
		
		String filePath = instPath+fileName;
		System.out.println("filePath:"+filePath);
		
		
		FileInputStream in = new FileInputStream(filePath);
		
		if(in !=null) {
			System.out.println("(기관등록)파일있음");
			
			
		}
		
		
		
		

		return url;
	}




}
