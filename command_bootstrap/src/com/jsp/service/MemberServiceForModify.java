package com.jsp.service;

import com.jsp.dto.MemberVO;

public interface MemberServiceForModify extends MemberService {

	// 회원수정
	void modify(MemberVO member) throws Exception;
	
	// 회원 삭제
	public void remove(String id) throws Exception;
	
/*	// 회원 활성화/비활성화
	public void enabled(MemberVO member) throws Exception;*/
	
	public void enabled(String id, int enabled) throws Exception;
	
}
