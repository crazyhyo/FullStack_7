package com.spring.compass.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.compass.command.LtctSearchCommand;
import com.spring.compass.command.VInspPstiVO;
import com.spring.compass.service.LtctService;
import com.spring.compass.vo.IsoptntVO;
import com.spring.compass.vo.LtctVO;

@RestController
@RequestMapping("/rest-ltct")
public class RestLtctController {
	
	@Autowired
	private LtctService ltctService;
	
	// 입소자 상세조회
	@RequestMapping("/isoptnt-detail")
	public ResponseEntity<IsoptntVO> isoptntDetail(String manageNo) throws Exception{
		ResponseEntity<IsoptntVO> entity = null;
		try {
//			??VO isoptnt = ltctService.getPstiDetail(manageNo);
//			entity = new ResponseEntity<??VO>(isoptnt, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<IsoptntVO>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	// 결과 상세조회
	@RequestMapping("/res-detail")
	public ResponseEntity<IsoptntVO> resDetail(String manageNo) throws Exception{
		ResponseEntity<IsoptntVO> entity = null;
		try {
//			??VO res = ltctService.getPstiDetail(manageNo);
//			entity = new ResponseEntity<??VO>(res, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<IsoptntVO>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	// 병상신청 상세조회
	@RequestMapping("/sckbd-detail")
	public ResponseEntity<IsoptntVO> sckbdDetail(String manageNo) throws Exception{
		ResponseEntity<IsoptntVO> entity = null;
		try {
//			??VO sckbd = ltctService.getPstiDetail(manageNo);
//			entity = new ResponseEntity<??VO>(sckbd, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<IsoptntVO>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	// 입소자 목록
	@RequestMapping("/isoptnt-list") // isoptnt-list-module-work 입소자(메뉴)
	public ResponseEntity<Map<String, Object>> isoptntList(@RequestParam(defaultValue="1")int page,
														@RequestParam(defaultValue="15")int perPageNum,
														@RequestParam(defaultValue="")String searchType,
														@RequestParam(defaultValue="")String keyword,
														HttpSession session) throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		LtctSearchCommand cri = new LtctSearchCommand(page, perPageNum, searchType, keyword);
		LtctVO ltct = (LtctVO)(session.getAttribute("loginInst"));
		cri.setLtctNo(ltct.getLtctNo());
		try {
			Map<String, Object> dataMap = ltctService.getIsoptntListPage(cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
	// 재검결과 목록
	@RequestMapping("/res-list") // res-list-module-work 재검결과(메뉴)
	public ResponseEntity<Map<String, Object>> resList(@RequestParam(defaultValue="1")int page,
														@RequestParam(defaultValue="15")int perPageNum,
														@RequestParam(defaultValue="")String searchType,
														@RequestParam(defaultValue="")String keyword,
														HttpSession session) throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		LtctSearchCommand cri = new LtctSearchCommand(page, perPageNum, searchType, keyword);
		LtctVO ltct = (LtctVO)(session.getAttribute("loginInst"));
		cri.setLtctNo(ltct.getLtctNo());
		try {
//			Map<String, Object> dataMap = ltctService.getIsoptntListPage(cri);
//			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
	// 병상신청 승인목록
	@RequestMapping("/sckbd-list") // sckbd-list-module-work 병상승인신청(메뉴)
	public ResponseEntity<Map<String, Object>> sckbdList(@RequestParam(defaultValue="1")int page,
														@RequestParam(defaultValue="15")int perPageNum,
														@RequestParam(defaultValue="")String searchType,
														@RequestParam(defaultValue="")String keyword,
														HttpSession session) throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		LtctSearchCommand cri = new LtctSearchCommand(page, perPageNum, searchType, keyword);
		LtctVO ltct = (LtctVO)(session.getAttribute("loginInst"));
		cri.setLtctNo(ltct.getLtctNo());
		try {
//			Map<String, Object> dataMap = ltctService.getIsoptntListPage(cri);
//			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
}
