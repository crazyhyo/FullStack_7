package dao;

import java.util.List;
import java.util.Map;
import java.util.Scanner;

import service.BoardService;
import service.LodgeService;
import util.JDBCUtil;
import util.ScanUtil;
import controller.Controller;

public class BoardDao {
	
	private BoardDao(){}
	
	static BoardDao instance = null;
	
	public static BoardDao getInstance(){
		if(instance == null){
			instance = new BoardDao();
		}
		return instance;
	}
	
	private JDBCUtil jdbc = JDBCUtil.getInstance();
	
	public Map<String, Object> selectBoard(int type){	//type이 1이면 리뷰게시판, 2이면 공지사항게시판
		Map<String, Object> map = null;
		
		System.out.print("조회하실 게시글을 선택해주세요>");
		int input = ScanUtil.nextInt();
		
		String sql = "select bod_no, b.mem_nm, a.bod_reg_date, a.bod_title, a.bod_content, a.bod_rating"
				+ "		from lodge_board a, member b"
				+ "	   where a.mem_no = b.mem_no"
				+ "			 and bod_no = " + input
				+ "          and lod_no = " + LodgeService.getLodgeNo()
				+ "			 and bod_code = " + type;
		
		map = jdbc.selectOne(sql);
		
		if(map == null){
			System.out.println("없는 게시글입니다.");
		}else{
			System.out.println("게시글을 찾았습니다.");
		}
		
		return map;
		
	}
	
	public double getAvgRating(){
		if(LodgeService.currentLodge == null){	//현재 선택한 숙박시설이 없는 경우
			System.out.println("현재 선택중인 숙소가 없습니다.");
			return -1;
		}
		
		Map<String, Object> map = null;
		String sql = "select nvl(avg(bod_rating),0) as ravg"
				+ "		from lodge_board"
				+ "	   where lod_no = " + LodgeService.getLodgeNo()
				+ "          and bod_code = 1";
		
		//rating은 리뷰게시글(bod_code = 1)에만 있음
		
		map = jdbc.selectOne(sql);
		
		if(map == null){	// 선택한 숙박시설의 리뷰게시글이 없는 경우
			System.out.println("없는 게시글입니다.");
		}else{
			System.out.println("게시글을 찾았습니다.");
		}
		
		return (double)map.get("ravg");
		
	}
	
	public List<Map<String, Object>> currentLodgeBoardList(int type){	//type이 1이면 리뷰게시판, 2이면 공지사항게시판
		
		if(LodgeService.currentLodge == null){
			System.out.println("현재 선택중인 숙소가 없습니다.");
			return null;
		}

		List<Map<String, Object>> list = null;
		
		if(type == 1){	//리뷰게시판
			double rating = getAvgRating();		// 선택한 숙소의 평균평점
			
			System.out.println(LodgeService.getLodgeName() + "의 리뷰게시판입니다.");
			
			System.out.println("평균평점 : " + String.format("%.2f", Math.max(rating, 0)));
			// 선택한 숙소에 평점을 준 게시글이 없다면 평균평점을 0으로 출력
			
			String sql = "select a.bod_no, a.bod_title, b.mem_nm, a.bod_rating, a.bod_reg_date"
					+ "		from lodge_board a, member b"
					+ "	   where a.lod_no = " + LodgeService.getLodgeNo()
					+ "       	 and a.bod_code = 1"
					+ "    order by 1 desc";
			
			// 선택한 숙소의 리뷰게시글을 글번호를 기준으로 내림차순으로 선택 
			
			list = jdbc.selectList(sql);
			
			if(list == null){
				System.out.println("리뷰게시판의 게시글이 없습니다.");
			}
			
		}else if(type == 2){	//공지사항게시판
			
			System.out.println(LodgeService.getLodgeName() + "의 공지사항게시판입니다.");
			
			String sql = "select bod_no, bod_title, '관리자', a.bod_reg_date"
					+ "		from lodge_board"
					+ "	   where lod_no = " + LodgeService.getLodgeNo()
					+ "       	 and bod_code = 2"
					+ "    order by 1 desc";
			
			list = jdbc.selectList(sql);
			
			if(list == null){
				System.out.println("공지사항게시판의 게시글이 없습니다.");
			}
		}
		
		return list;
	}
	
	public int insertBoard(int type){	//type이 1이면 리뷰게시판, 2이면 공지사항게시판
		int result = 0;
		
		if(Controller.loginMember == null){
			System.out.println("글 작성 권한이 없습니다. 로그인해주세요.");
			return 0;
		}
		if(LodgeService.currentLodge == null){
			System.out.println("현재 선택중인 숙소가 없습니다.");
			return 0;
		}
		
		int memNo = Controller.getLoginMemberNo();
		int lodgeNo = LodgeService.getLodgeNo();
		
		int memCode = Controller.getLoginMemberCode();
		int boardCode = type;
		
		if(memCode != boardCode){
			System.out.println("글 작성권한이 없습니다.");
			if(memCode == 1 && boardCode == 2){
				System.out.println("공지사항은 숙박시설주만 작성할 수 있습니다.");
			}else if(memCode == 2 && boardCode == 1){
				System.out.println("리뷰는 일반 회원만 작성할 수 있습니다."); 
			}
			return 0;
		}
		
		
		System.out.print("제목을 입력해주세요>");
		String title = ScanUtil.nextLine();
		System.out.print("내용을 입력해주세요>");
		String content = ScanUtil.nextLine();
		
		if(type == 1){	// 리뷰게시글 등록
			System.out.print("평점을 입력해주세요>");
			Scanner sc = new Scanner(System.in);
			double rating = Double.parseDouble(sc.nextLine());
			
			String sql = "insert into lodge_board(bod_no, lod_no, mem_no, bod_title, bod_content,"
					+ " bod_reg_date, bod_rating, bod_code)"
					+ " values((select nvl(max(bod_no),1) from lodge_board where lod_no = "
					+ lodgeNo + "and bod_code in(1,3))"
							+ ", " + lodgeNo + ", " + memNo + ", '" + title + "', '"
					+ content + "', sysdate, " + rating + ", 1)";
			
			result = jdbc.update(sql);
			if(result == 1){
				System.out.println("게시글 등록에 성공하였습니다.");
			}
			
		}else if(type == 2){	// 공지사항게시글 등록
			String sql = "insert into lodge_board(bod_no, lod_no, mem_no, bod_title, bod_content,"
					+ " bod_reg_date, bod_code)"
					+ " values((select nvl(max(bod_no),1) from lodge_board where lod_no = "
					+ lodgeNo + "and bod_code in(2,4))"
					+ ", " + lodgeNo + ", " + memNo + ", '" + title + "', '"
					+ content + "', sysdate, 2)";
			
			result = jdbc.update(sql);
			
			if(result == 1){
				System.out.println("게시글 등록에 성공하였습니다.");
			}
		}
		
		return result;
		
	}
	
	public int deleteBoard(int type){	//type이 1이면 리뷰게시판, 2이면 공지사항게시판)

		int result = 0;
		
		if(Controller.loginMember == null){
			System.out.println("글 삭제 권한이 없습니다. 로그인해주세요.");
			return 0;
		}
		if(LodgeService.currentLodge == null){
			System.out.println("현재 선택중인 숙소가 없습니다.");
			return 0;
		}
		
		int memNo = Controller.getLoginMemberNo();
		int lodgeNo = LodgeService.getLodgeNo();
		int boardNo = BoardService.getBoardNO();
		
		if(memNo != BoardService.getCurrentBoardMemNo()){
			System.out.println("게시글을 작성한 회원만 삭제할 수 있습니다.");
			return 0;
		}
		
		if(type == 1){
			String sql = "update lodge_board set bod_code = 3 "
					+ "where bod_no = "	+ boardNo 
					+ "      and lod_no = " + lodgeNo 
					+ "		 and bod_code = 1";
			
			result = jdbc.update(sql);
			
			if(result == 0){
				System.out.println("게시글을 찾을 수 없습니다.");
			}else{
				System.out.println("게시글 삭제 완료");
			}
		}else if(type == 2){
			String sql = "update lodge_board set bod_code = 4 "
					+ "where bod_no = "	+ boardNo 
					+ "      and lod_no = " + lodgeNo 
					+ "		 and bod_code = 2";
			
			result = jdbc.update(sql);
			
			if(result == 0){
				System.out.println("게시글을 찾을 수 없습니다.");
			}else{
				System.out.println("게시글 삭제 완료");
			}
			
		}
		return result;
	}
	
	public int updateBoard(int type){
		int result = 0;
		
		if(Controller.loginMember == null){
			System.out.println("글 수정 권한이 없습니다. 로그인해주세요.");
			return 0;
		}
		if(LodgeService.currentLodge == null){
			System.out.println("현재 선택중인 숙소가 없습니다.");
			return 0;
		}
		
		int memNo = Controller.getLoginMemberNo();
		int lodgeNo = LodgeService.getLodgeNo();
		int boardNo = BoardService.getBoardNO();
		
		if(memNo != BoardService.getCurrentBoardMemNo()){
			System.out.println("게시글을 작성한 회원만 수정할 수 있습니다.");
			return 0;
		}
		
		System.out.print("제목을 입력해주세요>");
		String title = ScanUtil.nextLine();
		System.out.print("내용을 입력해주세요>");
		String content = ScanUtil.nextLine();
		
		if(type == 1){
			System.out.print("평점을 입력해주세요>");
			Scanner sc = new Scanner(System.in);
			double rating = Double.parseDouble(sc.nextLine());
			
			String sql = "update lodge_board"
					+ "      set bod_title = '" + title + "', bod_content = '" + content + "', bod_rating = " + rating
					+ "	   where bod_no = "	+ boardNo 
					+ "      and lod_no = " + lodgeNo 
					+ "		 and bod_code = 1";
			
			result = jdbc.update(sql);
			
			if(result == 0){
				System.out.println("게시글을 찾을 수 없습니다.");
			}else{
				System.out.println("게시글 수정 완료");
			}
			
		}else if(type == 2){
			String sql = "update lodge_board"
					+ "      set bod_title = '" + title + "', bod_content = '" + content
					+ "	   where bod_no = "	+ boardNo 
					+ "      and lod_no = " + lodgeNo 
					+ "		 and bod_code = 2";
			
			result = jdbc.update(sql);
			
			if(result == 0){
				System.out.println("게시글을 찾을 수 없습니다.");
			}else{
				System.out.println("게시글 수정 완료");
			}
		}
		
		return result;
	}
	
}
