/*
 * Project Name		:	Bangbanggokgok
 * 
 * File Name		:	Controller.java
 * Revision			:	0.3
 * Date				:	2021.08.13
 * Author			:	Lee KwangHyo
 * 
 */

package controller;

import java.util.Map;

import test.TestMain;
import util.ScanUtil;
import util.View;

public class Controller {
	public static void main(String[] args) {
		
	new Controller().start();
	}

	public static Map<String, Object> loginMember = null;
	public static String currentDate = null;

	private void start(){
		int view = View.HOME;
		while(true){
			switch(view){
			case View.HOME 				: view = home();				break;
			case View.TEST				: view = test();				break;
//			case View.LOGIN_SCREEN		: view = 
			}
		}
	}
	
	private int test() {
		TestMain test = new TestMain();
		test.start();
		return View.HOME;
	}

	private int home(){
		System.out.println("HOME");
		System.out.println(loginMember);
//		System.out.println(currentDate);
		
		int result = 0;
		if(loginMember == null){
			result = showNotLogin();
		}else if((int)loginMember.get("MEM_CODE") == 1){
			result = showNormalLogin();
		}else if((int)loginMember.get("MEM_CODE") == 2){
			result = showAccomOwnerLogin();
		}
		if(result == View.EXIT){
			System.exit(0);
		}else{
			return result;
		}
		return 0;
	}

	private int showNotLogin() {
		System.out.println("1.로그인\t2.지역설정\t3.비회원 예약확인\n"
				+ "101.테스트\t0.종료");
		int input = ScanUtil.nextInt();
		switch(input){
		case 1:	return View.LOGIN_SCREEN;
		case 2: return View.SET_REGION;
		case 3: return View.GUEST_CONFIRM;
		case 101: return View.TEST;
		case 0: return View.EXIT;
		}
		return 0;
	}

	private int showAccomOwnerLogin() {
		System.out.println("1.지역설정\t2.마이페이지\t3.내 건물목록\t4.로그아웃\n"
				+ "101.테스트\t0.종료");
		int input = ScanUtil.nextInt();
		switch(input){
		case 1:	return View.SET_REGION;
		case 2: return View.MY_INFO;
		case 3: return View.MY_LODGE_LIST;
		case 4: loginMember = null; return View.HOME;
		case 101: return View.TEST;
		case 0: return View.EXIT;
		}
		return 0;
	}

	private int showNormalLogin() {
		System.out.println("1.지역설정\t2.마이페이지\t3.로그아웃\n"
				+ "101.테스트\t0.종료");
		int input = ScanUtil.nextInt();
		switch(input){
		case 1:	return View.SET_REGION;
		case 2: return View.MY_INFO;
		case 3: loginMember = null; return View.HOME;
		case 101: return View.TEST;
		case 0: return View.EXIT;
		}
		return 0;
	}
	
	public static int getLoginMemberNo(){
		if(loginMember == null){
			System.out.println("현재 로그인중이 아닙니다.");
			return -1;
		}
		return (int)loginMember.get("mem_no");
	}
	public static int getLoginMemberCode(){
		if(loginMember == null){
			System.out.println("현재 로그인중이 아닙니다.");
			return -1;
		}
		return (int)loginMember.get("mem_code");
	}
}
