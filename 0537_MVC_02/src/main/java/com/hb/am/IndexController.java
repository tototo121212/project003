package com.hb.am;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class IndexController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("result");
		
		mv.addObject("name", "하하하");
		mv.addObject("age", 32);
		mv.addObject("tel", "010-9269-5754");
		return mv;
	}
	
}
