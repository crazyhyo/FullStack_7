package viewControlWithEnum;

public enum ViewChoices {	//	각  화면에 연결되는 화면과 해당하는 선택지를 보여주는 enum
	LOOK_UP("조회", "BOARD_DETAIL"),
	REGISTER("등록", "BOARD_DETAIL"),
	SEARCH("검색", "SEARCHED_LIST"),
	CHANGE("수정", "BOARD_DETAIL"),
	DELETE("삭제", "BOARD_LIST");
	
	private String choiceName;
	private String connectedView;
	
	public String getChoiceName() {
		return choiceName;
	}

	public String getConnectedView() {
		return connectedView;
	}

	ViewChoices(String choiceName, String connectedView){
		this.choiceName = choiceName;
		this.connectedView = connectedView;
	}
}
