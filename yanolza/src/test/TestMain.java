/*
 * Project Name		:	Bangbanggokgok
 * 
 * File Name		:	TestMain.java
 * Revision			:	0.1
 * Date				:	2021.08.13
 * Author			:	Lee KwangHyo
 * 
 */

package test;

import java.util.List;
import java.util.Map;

import controller.Controller;
import util.JDBCUtil;
import util.ScanUtil;


public class TestMain {
	JDBCUtil instance = JDBCUtil.getInstance();
	
	public TestMain(){}
	
	public void start(){
		System.out.println("0.테이블조회\t1.일반회원 로그인\t2.숙박시설주로그인\t3.로그아웃\t4.현재날짜설정\t99.BACK_TO_HOME");
		System.out.print("테스트를 선택해주세요>");
		int input = ScanUtil.nextInt();
		if(input == 99){
			
		}else if(input == 0){
			table();
		}else if(input == 1){
			normalLogin();
		}else if(input == 2){
			AccomOwnerLogin();
		}else if(input == 3){
			Logout();
		}else if(input == 4){
			setDate();
		}
	}
	
	private void normalLogin(){
		String sql = "select * from member where mem_no = 1";
		Controller.loginMember = instance.selectOne(sql);
	}
	private void AccomOwnerLogin(){
		String sql = "select * from member where mem_no = 2";
		Controller.loginMember = instance.selectOne(sql);
	}
	private void Logout(){
		Controller.loginMember = null;
	}
	private void setDate(){
		System.out.print("8자리 날자 입력(yyyymmdd):");
		String input = ScanUtil.nextLine();
		Controller.currentDate = input;
	}
	
	
	private void table() {
		
		boolean flag = true;
		while(flag){
			flag = showList();
		}
		
	}
	
	private boolean showList(){
		String[] sql = new String[11];
		sql[0] = "select * from member";
		sql[1] = "select * from LODGE";
		sql[2] = "select * from MEMBER_CODE";
		sql[3] = "select * from LODGE_CODE";
		sql[4] = "select * from ROOM_CODE";
		sql[5] = "select * from OWNERSHIP";
		sql[6] = "select * from LODGE_BOARD";
		sql[7] = "select * from RESERVATION";
		sql[8] = "select * from RESERVATION_HISTORY";
		sql[9] = "select * from ROOM_HISTORY";
		sql[10] = "select * from TBL_ORDER";
		
		String[] tblName = new String[11];
		tblName[0] = "[MEMBER]";
		tblName[1] = "[LODGE]";
		tblName[2] = "[MEMBER_CODE]";
		tblName[3] = "[LODGE_CODE]";
		tblName[4] = "[ROOM_CODE]";
		tblName[5] = "[OWNERSHIP]";
		tblName[6] = "[LODGE_BOARD]";
		tblName[7] = "[RESERVATION]";
		tblName[8] = "[RESERVATION_HISTORY]";
		tblName[9] = "[ROOM_HISTORY]";
		tblName[10] = "[TBL_ORDER]";
		
		System.out.println("0.MEMBER\t1.LODGE\t2.MEMBER_CODE\t3.LODGE_CODE\t4.ROOM_CODE\n"
				+ "5.OWNERSHIP\t6.LODGE_BOARD\t7.RESERVATION\t8.RESERVATION_HISTORY\t9.ROOM_HISTORY\n"
				+ "10.TBL_ORDER\t99.BACK_TO_HOME");
		System.out.print("조회하실 테이블을 선택해주세요>");
		int input = ScanUtil.nextInt();
		System.out.println();
		if(input == 99){
			System.out.println("테이블 조회 종료");
			return false;
		}else{
			List<Map<String, Object>> list = instance.selectList(sql[input]);
			System.out.println(tblName[input]);
			showList(list);
			System.out.println("\n");
			return true;
		}
		
	}
	
	private void showList(List<Map<String, Object>> list){
		for(Map.Entry<String, Object> entry : list.get(0).entrySet()){
			System.out.print(entry.getKey() + "\t");
		}
		System.out.println();
		
		for(Map<String, Object> walk : list){
			for(Map.Entry<String, Object> entry : walk.entrySet()){
				System.out.print(entry.getValue() + "\t");
			}
			System.out.println();
		}
	}
	
}
