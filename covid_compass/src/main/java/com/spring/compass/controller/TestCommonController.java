package com.spring.compass.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.compass.service.MenuService;
import com.spring.compass.vo.MenuVO;

@Controller
public class TestCommonController {
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/indexPage")
	public String index(@RequestParam(value="mcode", defaultValue = "M020000") String menuInnb,
			 			Model model)
			 					throws SQLException{
		String url = "common/indexPage";
		
		List<MenuVO> menuList = menuService.getSubMenuList(menuInnb);
		
		MenuVO menu = menuService.getMenu(menuInnb);
		
		model.addAttribute("menuList", menuList);
		model.addAttribute("menu", menu);
		
		return url;
	}
	
	

}
