package service;

import java.util.Map;

public class LodgeService {
	
	public static Map<String, Object> currentLodge = null;
	
	public static int getLodgeNo() {
		
		if(currentLodge != null){
			return (int)currentLodge.get("lod_no");
		}else{
			System.out.println("현재 선택된 게시판이 없습니다.");
		}
		return -1;
	}
	
	public static String getLodgeName(){
		if(currentLodge != null){
			return (String)currentLodge.get("lod_nm");
		}else{
			System.out.println("현재 선택된 게시판이 없습니다.");
		}
		return null;
	}

}
