package viewControlWithEnum;

import java.util.Arrays;
import java.util.List;

public enum View {	//	뷰를 담은 enum, 각각은 자신의 화면에서 출력하는 선택지와 연결화면을 ViewChoice의 형태로 담고 있다. 
	BOARD_LIST(Arrays.asList(ViewChoices.LOOK_UP, ViewChoices.REGISTER, ViewChoices.SEARCH)),
	BOARD_DETAIL(Arrays.asList(ViewChoices.CHANGE, ViewChoices.DELETE)),
	SEARCHED_LIST(Arrays.asList(ViewChoices.LOOK_UP, ViewChoices.SEARCH));
	
	List<ViewChoices> choices;
	
	public int printChoices() {		//	선택지를 출력하는 메서드
		System.out.println(this.name());	//	현재화면의 이름 출력
		String str = "";
		for(int i = 0; i < choices.size(); i++) {
			str += (i+1) + "." + choices.get(i).getChoiceName() + "\t";
		}
		str += (choices.size() + 1) + ".돌아가기\t";
		
		if(this.name().equals("BOARD_LIST")) {	//	메인화면에서는 종료선택지를 추가로 넣어준다.
			str += (choices.size() + 2) + ".종료\t";
		}
		
		System.out.println(str);
		
		return choices.size() + 1;
	}
	
	public View selectChoices() {	//	현재 화면의 이름과 선택지를 출력하고 사용자의 입력을 받는다.
		int back = printChoices();
		int input = ScanUtil.nextInt();
		if(input == back) {
			return Controller.back();		//	돌아가기 실행(Stack으로 구현)
		}else if(this.name().equals("BOARD_LIST") && input == back + 1){	//	메인화면에서 종료선택지를 받을 수 있게 함
			System.out.println("선택지를 통한 종료");
			System.exit(0);
			return null;
		}else if(input <= back && input >= 1){		// 주어진 선택지 내에서 선택한다면	
			Controller.push(
					View.valueOf(					//	해당 선택지에 맞는 뷰를 찾아서 push하겠다.
							this.choices			//	현재 화면이 가지고 있는 선택지들 중에서
							.get(input-1)			//	입력한 화면에 해당하도록 인덱싱(ViewChoices에 접근)
							.getConnectedView()));	// 	접근한 ViewChoices의 연결화면 이름을 가져와 View.valueOf로 화면을 연결시킨다.
			return View.valueOf(this.choices.get(input-1).getConnectedView());	//	위에서 구한 뷰를 리턴함
		}else {		// 선택지를 벗어난다면 화면을 이동하지 않음
			System.out.println("선택지 중에서 결정해주세요");
			return this;
		}
	}
	
	View(List<ViewChoices> choices){	//	생성자
		this.choices = choices;
	}
}
