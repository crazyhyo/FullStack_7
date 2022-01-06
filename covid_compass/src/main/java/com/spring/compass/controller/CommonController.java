package com.spring.compass.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {

	@RequestMapping(value="common/main")
	public String main() {
		
		System.out.println("test!!!!!!!!!!!!!!!!!!!!!!!");
		
		String url = "common/main";
		
		return url;
	}
	
	
	/*
	 * 테스트용으로 설계됨
	 * iframe만 바꾸려면 추가로직 필요
	 * 그대로 쓰지 못하는 코드!!!!!!!!!!!
	 */
	@RequestMapping("/index")
	public String index(String murl, String mcode, Model model)
											throws SQLException{
		String url = "common/indexPage";
		
		/*
		List<MenuVO> menuList = menuService.getMainMenuList();
		MenuVO menu = menuService.getMenuByMcode(mCode);
		
		model.addAttribute("menuList", menuList);
		*/
		model.addAttribute("murl", murl);
		model.addAttribute("mcode", mcode);
		
		return url;
	}
	
	@RequestMapping("/guest")
	public String guest() {
		String url ="guest/guest-main";
		return url;
	}
	@RequestMapping("/guest/question")
	public String question() {
		String url ="guest/question";
		return url;
	}
	@RequestMapping("/guest/chart")
	public String guestChart() {
		String url="guest/guest-chart";
		
		return url;
	}
	
	@RequestMapping("/index-test")
	public String indexTest(String murl, String mcode, Model model) {
		String url = "common/indexPage";
		
		model.addAttribute("mcode", mcode);
		model.addAttribute("murl", murl);
		
		return url;
	}
	
	
	@RequestMapping("/common/login")
	public void login() {}
	
	@RequestMapping("/common/find_id")
	public void find_id() {}
	
	@RequestMapping("/common/find_pwd")
	public void find_pwd() {}
	
	@RequestMapping("/common/check-id")
	public void check_id() {}
	
	@RequestMapping("/common/change-password")
	public void change_password() {}
	
	@RequestMapping("/common/mypage")
	public void mypage() {}
	
	@RequestMapping("/common/mypage-modifyform")
	public void mypage_modifyform() {}
	
}








