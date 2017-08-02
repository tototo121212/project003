package com.hb.am;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class IndexController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.
		//ModelAndView mv = new ModelAndView();
		//비지니스 로직 처리
		//mv.setViewName("result");
		//return mv;
		
		//ModelAndView mv = new ModelAndView("result");
		//return mv;
		
		//return new ModelAndView("result");
		
		ModelAndView mv = new ModelAndView("result");
		// 비지니스 로직 처리
		// 데이터 저장
		mv.addObject("name", "홍길동");
		request.setAttribute("age", 30);
		HttpSession session = request.getSession();
		session.setAttribute("tel", "010-9269-5754");
		return mv;
	}
	
}
