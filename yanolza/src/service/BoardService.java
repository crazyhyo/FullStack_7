package service;

import java.util.Map;

public class BoardService {
	public static Map<String, Object> currentBoard = null;
	
	public static int getCurrentBoardMemNo(){
		if(currentBoard == null){
			System.out.println("조회중인 게시글이 없습니다.");
			return -1;
		}else{
			return (int)currentBoard.get("mem_no");
		}
	}

	public static int getBoardNO() {
		if(currentBoard == null){
			System.out.println("조회중인 게시글이 없습니다.");
			return -1;
		}else{
			return (int)currentBoard.get("bod_no");
		}
	}
}
