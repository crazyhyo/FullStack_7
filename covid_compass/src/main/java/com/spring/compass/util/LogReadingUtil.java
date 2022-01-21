package com.spring.compass.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.compass.command.PageMaker;
import com.spring.compass.command.SearchCriteria;
import com.spring.compass.vo.LoginVO;


public class LogReadingUtil {
	
	
	public static Map<String, Object> getLogList(String savePath, String fileName, SearchCriteria cri) throws Exception{
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<LoginVO> storeList = new ArrayList<LoginVO>();
		String filePath = savePath +File.separator + fileName;
		
		File file = new File(filePath);
		
		BufferedReader in = new BufferedReader(new FileReader(file));
		
		String line="";
		int count=0;
		while((line=in.readLine())!=null) {
			count++;
			LoginVO loginVO = new LoginVO();
			int num2=line.indexOf("]");
			String trans = line.substring(num2+1, line.length());
			String[] store = trans.split(",");
//				System.out.println("_________________"+value.trim());
			loginVO.setInstNo(store[1]);
			loginVO.setMberNo(store[0]);
			loginVO.setUserIp(store[3]);
			loginVO.setUserLogTime(store[2]);
			loginVO.setMberNm(store[4]);
			
			storeList.add(loginVO);
		}
//		System.out.println("count--------------------------------:"+count);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
//		System.out.println("-----------------------page:"+pageMaker.getCri().getPage());
//		System.out.println("---------------------endPage:"+pageMaker.getEndPage());
		List<LoginVO> loginList = new ArrayList<LoginVO>();
		int startNum = (cri.getPage()-1)*cri.getPerPageNum();
		int endNum = (cri.getPage()*cri.getPerPageNum())-1;
		if(endNum>count) {
			endNum=count-1;
		}
//		System.out.println("startNum:"+startNum);
//		System.out.println("endNum:"+endNum);
		for(int i=startNum; i<endNum+1; i++ ) {
			loginList.add(storeList.get(i));
		}
		
		dataMap.put("loginList", loginList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}
}
