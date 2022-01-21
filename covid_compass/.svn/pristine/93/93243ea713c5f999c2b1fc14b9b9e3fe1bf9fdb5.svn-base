package com.spring.compass.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.compass.command.CnfrmDgnssWaitDetailVO;
import com.spring.compass.command.SmplListDetailVO;
import com.spring.compass.command.SmplSearchCommand;
import com.spring.compass.service.PbhtServiceImplLMY;
import com.spring.compass.vo.PbhtVO;

@RestController
@RequestMapping("/rest-pbht")
public class RestPbhtController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(RestHsptController.class);
	
	@Autowired
	private PbhtServiceImplLMY pbhtServiceLMY;
	
	
	@RequestMapping("/smpl-list")
	public ResponseEntity<Map<String, Object>> reqSmplList(	
																@RequestParam(defaultValue="1")int page,
																@RequestParam(defaultValue="15")int perPageNum,
																@RequestParam(defaultValue="")String searchType,
																@RequestParam(defaultValue="")String keyword,
																HttpSession session)
																		throws Exception{
			ResponseEntity<Map<String, Object>> entity = null;
			
			SmplSearchCommand cri = new SmplSearchCommand(page, perPageNum, searchType, keyword);
			
			PbhtVO pbht = (PbhtVO)(session.getAttribute("loginInst"));
			
			
			cri.setPbhtNo(pbht.getPbhtNo());
			
			try {
				Map<String, Object> dataMap = pbhtServiceLMY.getSmplList(cri);
				
				entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
				
			} catch(Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
			}			
			
			return entity;
		}
	
	@RequestMapping("/res-smple-list")
	public ResponseEntity<Map<String, Object>> smplResultList(	
			@RequestParam(defaultValue="1")int page,
			@RequestParam(defaultValue="15")int perPageNum,
			@RequestParam(defaultValue="")String searchType,
			@RequestParam(defaultValue="")String keyword,
			@RequestParam(defaultValue="")String typeCode,
			HttpSession session)
					throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		
		SmplSearchCommand cri = new SmplSearchCommand(page, perPageNum, searchType, keyword);
		
		PbhtVO pbht = (PbhtVO)(session.getAttribute("loginInst"));
		
		
		cri.setPbhtNo(pbht.getPbhtNo());
		cri.setTypeCode(typeCode);
		try {
			Map<String, Object> dataMap = pbhtServiceLMY.getSmplResultList(cri);
			
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
			
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}			
		
		return entity;
	}
	
	@RequestMapping("/cnfrm-list")
	public ResponseEntity<Map<String, Object>> cnfrmList(	
			@RequestParam(defaultValue="1")int page,
			@RequestParam(defaultValue="15")int perPageNum,
			@RequestParam(defaultValue="")String searchType,
			@RequestParam(defaultValue="")String keyword,
			@RequestParam(defaultValue="A102")String typeCode,
			HttpSession session)
					throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		
		SmplSearchCommand cri = new SmplSearchCommand(page, perPageNum, searchType, keyword);
		
		PbhtVO pbht = (PbhtVO)(session.getAttribute("loginInst"));
		
		
		cri.setPbhtNo(pbht.getPbhtNo());
		cri.setTypeCode(typeCode);
		try {
			Map<String, Object> dataMap = pbhtServiceLMY.getCnfrmDgnssList(cri);
		
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
			
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}			
		
		return entity;
	}
	
	@RequestMapping("/cnfrm-manage-list")
	public ResponseEntity<Map<String, Object>> cnfrmManageList(	
			@RequestParam(defaultValue="1")int page,
			@RequestParam(defaultValue="15")int perPageNum,
			@RequestParam(defaultValue="")String searchType,
			@RequestParam(defaultValue="")String keyword,
			@RequestParam(defaultValue="")String typeCode,
			HttpSession session)
					throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		
		SmplSearchCommand cri = new SmplSearchCommand(page, perPageNum, searchType, keyword);
		
		PbhtVO pbht = (PbhtVO)(session.getAttribute("loginInst"));
		
		
		cri.setPbhtNo(pbht.getPbhtNo());
		cri.setTypeCode(typeCode);
		try {
			Map<String, Object> dataMap = pbhtServiceLMY.getCnfrmManageList(cri);
			
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
			
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}			
		
		return entity;
	}
	
	
	@RequestMapping("/smpl-detail")
	public ResponseEntity<SmplListDetailVO> smplDetail(HttpSession session, String smplNo){
		
		ResponseEntity<SmplListDetailVO> entity = null;
		Map<String, Object> sldData = new HashMap<String, Object>();
		
		PbhtVO pbht = (PbhtVO)(session.getAttribute("loginInst"));
		
		sldData.put("pbhtNo", pbht.getPbhtNo());
		sldData.put("smplNo", smplNo);
		
		try {
			SmplListDetailVO dataMap = pbhtServiceLMY.getSmplDetail(sldData);
			
			entity = new ResponseEntity<SmplListDetailVO>(dataMap, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<SmplListDetailVO>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}	
	
	@RequestMapping("/cnfrm-wait-datail")
	public ResponseEntity<CnfrmDgnssWaitDetailVO> cnfrmWaitDatail(HttpSession session, String cnfmNo){
		
		ResponseEntity<CnfrmDgnssWaitDetailVO> entity = null;
		Map<String, Object> cdwdData = new HashMap<String, Object>();
		
		PbhtVO pbht = (PbhtVO)(session.getAttribute("loginInst"));
		
		cdwdData.put("pbhtNo", pbht.getPbhtNo());
		cdwdData.put("cnfmNo", cnfmNo);
		
		try {
			CnfrmDgnssWaitDetailVO dataMap = pbhtServiceLMY.getCnfrmDgnssWaitDetail(cdwdData);
			
			entity = new ResponseEntity<CnfrmDgnssWaitDetailVO>(dataMap, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<CnfrmDgnssWaitDetailVO>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}	
	
	
}
