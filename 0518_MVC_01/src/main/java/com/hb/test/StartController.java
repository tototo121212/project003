package com.hb.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class StartController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("result");
		
		 mv.addObject("name", "둘리");
		 request.setAttribute("age", 1147);
		 HttpSession session =  request.getSession();
		 session.setAttribute("tel", "010-2222-2222"); 
		return mv;
	}
}






