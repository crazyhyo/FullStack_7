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
				view = view.selectChoices();	//	각 뷰마다 자신의 이름과 선택지를 출력하고 사용자의 입력을 받아서 뷰를 업데이트하는 메서드
			}
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
