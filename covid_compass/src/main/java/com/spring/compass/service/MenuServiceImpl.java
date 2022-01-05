package com.spring.compass.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.compass.dao.MenuDAO;
import com.spring.compass.vo.MenuVO;

public class MenuServiceImpl implements MenuService{

	private MenuDAO menuDAO = null;
	
	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}
	
	@Override
	public List<MenuVO> test() throws SQLException {
		List<MenuVO> menuList = menuDAO.test();
		return menuList;
	}

	@Override
	public MenuVO getMenu(String menuInnb) throws SQLException {
		System.out.println("test in service");
		MenuVO menu = menuDAO.selectMenuByMenuInnb(menuInnb);
		return menu;
	}

	@Override
	public List<MenuVO> getMenuList() throws SQLException {
		List<MenuVO> menuList = menuDAO.selectMenuList();
		return menuList;
	}

	@Override
	public List<MenuVO> getSubMenuList(String menuInnb) throws SQLException {
		List<MenuVO> menuList = menuDAO.selectSubMenuList(menuInnb);
		return menuList;
	}
	

}
