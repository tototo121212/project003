package com.hb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hb.mybatis.DAO;
import com.hb.mybatis.pageing;

@Controller
public class MyController {
	
	private DAO dao;
	
	private pageing pageing;

	public DAO getDao() {
		return dao;
	}

	public void setDao(DAO dao) {
		this.dao = dao;
	}

	public pageing getPageing() {
		return pageing;
	}

	public void setPageing(pageing pageing) {
		this.pageing = pageing;
	}
	
	@RequestMapping("/login_do")
	public ModelAndView loginStart(){
		return new ModelAndView("/start/login");
	}
	@RequestMapping("/login_go")
	public ModelAndView logingo(HttpServletRequest request){
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		System.out.println(id);
		System.out.println(pwd);
		return null;
	};
}
