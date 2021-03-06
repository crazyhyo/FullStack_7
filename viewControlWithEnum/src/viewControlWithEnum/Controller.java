package viewControlWithEnum;

import java.util.Stack;

public class Controller {

	static Stack<View> viewStack;		//	뷰를 관리하는 스택
	
	public Controller() {
		viewStack = new Stack<View>();
	}
	public static void main(String[] args) {
		new Controller().start();
	}
	public void start() {
		View view = View.BOARD_LIST;
		viewStack.push(view);		//	스택에 메인화면을 넣고 시작
		while(true) {	//	무한반복
				switch(view) {
				case BOARD_LIST: view = boardList(); break;
				case SEARCHED_LIST: view = searchedList(); break;
				case BOARD_DETAIL: view = boardDetail(); break;
				}
			}
		}
	
	private View boardDetail() {
		System.out.println("currentBoard참조한 현재 board출력");
		
		View temp = viewStack.peek();
		boolean flag = true;
		int back = temp.printChoices();
		
		int input = ScanUtil.nextInt();
		switch(input) {	//	추가적인 행동을 위한 switch
		case 1: flag = change(); break;
		case 2: flag = delete(); break;
		}
		if(flag) {
			return viewStack.peek().select(input, back);
		}else {
			return temp;
		}
	}
	private boolean delete() {
		System.out.println("정말로 삭제");
		int input = ScanUtil.nextInt();
		System.out.println("삭제진행, currentBoard = null");
		
		return true;
	}
	private boolean change() {
		System.out.println("제목입력");
		System.out.println("내용입력");
		System.out.println("수정");
		return false;
	}
	private View searchedList() {
		System.out.println("currentOption참조한 목록 출력");
		System.out.println("=================");
		System.out.println("검색내용 출력");
		System.out.println("=================");
		
		View temp = viewStack.peek();
		boolean flag = true;
		int back = temp.printChoices();
		
		int input = ScanUtil.nextInt();
		switch(input) {	//	추가적인 행동을 위한 switch
		case 1: flag = lookup(); break;
		case 2: register(); break;
		case 3: flag = search(); break;
		}
		if(flag) {
			return viewStack.peek().select(input, back);
		}else {
			return temp;
		}
	}
	private View boardList() {
		System.out.println("=================");
		System.out.println("board내용 출력");
		System.out.println("=================");
		
		View temp = viewStack.peek();
		boolean flag = true;
		int back = temp.printChoices();
		
		int input = ScanUtil.nextInt();
		switch(input) {	//	추가적인 행동을 위한 switch
		case 1: flag = lookup(); break;
		case 2: register(); break;
		case 3: flag = search(); break;
		}
		if(flag) {
			return viewStack.peek().select(input, back);
		}else {
			return temp;
		}
	}
	private boolean search() {
		System.out.println("검색어 입력");
		System.out.println("currentOption = ...");
		return false;
	}
	private void register() {
		System.out.println("제목입력");
		System.out.println("내용입력");
		System.out.println("작성자입력");
		System.out.println("currentBoard = ...");
	}
	private boolean lookup() {
		System.out.println("글번호 입력");
		System.out.println("currentBoard = ...");
		return true;
	}
	public static View back() {		//	stack을 이용한 돌아가기 구현
		System.out.println("before");
		for(View v : viewStack) {
			System.out.println("===" + v.name() + "===");
		}
		viewStack.pop();			//	가장 위에 있는 뷰를 꺼내고
		System.out.println("after");
		for(View v : viewStack) {
			System.out.println("===" + v.name() + "===");
		}
		if(viewStack.empty()) {		//	만약 모든 뷰가 꺼내어졌다면 종료한다.
			System.out.println("종료되었습니다");
			System.exit(0);
		}
		return viewStack.peek();	//	실행시점에서 두번째로 위에 있던 뷰를 리턴한다.
	}
	public static void push(View view) {	//	stack을 이용한 화면 쌓기 구현
		System.out.println("before");
		for(View v : viewStack) {
			System.out.println("===" + v.name() + "===");
		}
		if(viewStack.peek() != view) {		//	현재화면과 같지 않을 때만 stack에 추가
			viewStack.push(view);
		}
		System.out.println("after");
		for(View v : viewStack) {
			System.out.println("===" + v.name() + "===");
		}
	}
}
