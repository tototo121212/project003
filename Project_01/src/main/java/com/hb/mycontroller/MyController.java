package com.hb.mycontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hb.mybatis.DAO;

@Controller
public class MyController {
	@Autowired
	private DAO dao;
	
	public DAO getDao() {
		return dao;
	}

	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/start_do")
	public ModelAndView start(){
		return new ModelAndView("mainpage");
	}
}
