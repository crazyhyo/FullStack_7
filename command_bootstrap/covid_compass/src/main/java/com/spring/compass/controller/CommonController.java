package com.spring.compass.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CommonController {

	@RequestMapping(value="common/main")
	public String main() {
		
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
		String url = "redirect:indexPage";
		
		/*
		List<MenuVO> menuList = menuService.getMainMenuList();
		MenuVO menu = menuService.getMenuByMcode(mCode);
		
		model.addAttribute("menuList", menuList);
		*/
		model.addAttribute("murl", murl);
		model.addAttribute("mcode", mcode);
		
		return url;
	}
	
	@RequestMapping("/indexPage")
	public String indexPage(String murl, String mcode, Model model)
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
}
