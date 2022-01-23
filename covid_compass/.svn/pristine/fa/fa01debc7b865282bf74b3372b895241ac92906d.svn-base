package com.spring.compass.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.compass.util.LogReadingUtil;
import com.spring.compass.vo.LoginVO;

@RestController
@RequestMapping("/rest-main")
public class RestAdminController {
	
	@Resource(name="loginUserFilePath")
	private String loginFilePath;
	
	@Resource(name="loginUserFileName")
	private String loginFileName;
	
	@RequestMapping("/main-loginList")
	public ResponseEntity<Map<String, Object>> loginList()throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		Map<String, Object> dataMap = new HashMap<String, Object>();
		//System.out.println("왔습니다.!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		
		try {
		List<LoginVO> mainLogList = new LogReadingUtil().getMainLoginList(loginFilePath, loginFileName);
		dataMap.put("mainLogList", mainLogList);
		entity = new ResponseEntity<Map<String,Object>>(dataMap, HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
}
