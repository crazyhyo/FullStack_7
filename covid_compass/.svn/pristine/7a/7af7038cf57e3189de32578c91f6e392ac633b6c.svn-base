package com.spring.compass.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.compass.command.InspListVO;
import com.spring.compass.command.InspPstiSearchCommand;
import com.spring.compass.command.VInspPstiResultVO;
import com.spring.compass.command.VInspPstiVO;
import com.spring.compass.service.InspService;
import com.spring.compass.vo.InspVO;

@RestController
@RequestMapping("/rest-insp")
public class RestInspController {

	@Autowired
	private InspService inspService;
	
	//피검자 목록
	@RequestMapping("/insp-list")
	public ResponseEntity<Map<String, Object>> pstiList(@RequestParam(defaultValue="1")int page,
														@RequestParam(defaultValue="15")int perPageNum,
														@RequestParam(defaultValue="")String searchType,
														@RequestParam(defaultValue="")String keyword,
														HttpSession session) throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		InspPstiSearchCommand cri = new InspPstiSearchCommand(page, perPageNum, searchType, keyword);
		InspVO insp = (InspVO)(session.getAttribute("loginInst"));
		cri.setInspNo(insp.getInspNo());
		try {
			Map<String, Object> dataMap = inspService.getPstiListPage(cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
	//검사요청 목록
	@RequestMapping("/insp-chckd-psti-list")
	public ResponseEntity<Map<String, Object>> inspChckdPstiList(@RequestParam(defaultValue="1")int page,
																	@RequestParam(defaultValue="15")int perPageNum,
																	@RequestParam(defaultValue="")String searchType,
																	@RequestParam(defaultValue="")String keyword,
																	HttpSession session) throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		InspPstiSearchCommand cri = new InspPstiSearchCommand(page, perPageNum, searchType, keyword);
		InspVO insp = (InspVO)(session.getAttribute("loginInst"));
		cri.setInspNo(insp.getInspNo());
		try {
			Map<String, Object> dataMap = inspService.getChckdListPage(cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
	// 결과조회 목록
	@RequestMapping("/insp-psti-result-list")
	public ResponseEntity<Map<String, Object>> inspPstiResultList(@RequestParam(defaultValue="1")int page,
																	@RequestParam(defaultValue="15")int perPageNum,
																	@RequestParam(defaultValue="")String searchType,
																	@RequestParam(defaultValue="")String keyword,
																	HttpSession session) throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		InspPstiSearchCommand cri = new InspPstiSearchCommand(page, perPageNum, searchType, keyword);
		InspVO insp = (InspVO)(session.getAttribute("loginInst"));
		cri.setInspNo(insp.getInspNo());
		
		try {
			Map<String, Object> dataMap = inspService.getResultListPage(cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
	
	// 피검자 상세조회
	@RequestMapping("/psti-detail")
	public ResponseEntity<VInspPstiVO> pstiDetail(String pstiNo) throws Exception{
		ResponseEntity<VInspPstiVO> entity = null;
		try {
			VInspPstiVO psti = inspService.getPstiDetail(pstiNo);
			entity = new ResponseEntity<VInspPstiVO>(psti, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<VInspPstiVO>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@RequestMapping("/psti-result-detail")
	public ResponseEntity<VInspPstiResultVO> resultDetail(String pstiNo) throws Exception{
		ResponseEntity<VInspPstiResultVO> entity = null;
		
		try {
			VInspPstiResultVO result = inspService.getResultDetail(pstiNo);
			entity = new ResponseEntity<VInspPstiResultVO>(result, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<VInspPstiResultVO>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
}
